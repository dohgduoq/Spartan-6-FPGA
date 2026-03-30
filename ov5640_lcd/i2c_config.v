`timescale 1ns / 1ps

module i2c_config(
    input wire clk,             // Clock hệ thống (từ top_module là clk_100m)
    input wire rst_n,           // Reset
    inout wire scl,             // I2C Clock
    inout wire sda,             // I2C Data
    output reg config_done      // Báo hiệu cấu hình hoàn tất
);

    // Định nghĩa địa chỉ I2C của camera bằng localparam
    localparam OV5640_I2C_ADDR = 7'h3C;

    //================================================================
    // I2C Master Core
    //================================================================
    // Tần số SCL mong muốn: 100KHz
    // CLK_DIV = (SysClk Freq) / (4 * SCL Freq)
    // CLK_DIV = 100MHz / (4 * 100KHz) = 250
    parameter CLK_DIV = 250;

    // Các trạng thái của I2C state machine
    localparam IDLE         = 4'b0000;
    localparam START        = 4'b0001;
    localparam SEND_ADDR    = 4'b0010;
    localparam SEND_DATA    = 4'b0011;
    localparam WAIT_ACK     = 4'b0100;
    localparam STOP         = 4'b0101;

    reg [3:0]  state_i2c;
    reg [15:0] clk_cnt;
    reg [3:0]  bit_cnt;
    reg [7:0]  byte_to_send;
    reg        scl_o, sda_o;
    reg        sda_oe;
    reg        i2c_busy;
    reg        start_i2c;
    reg [23:0] i2c_data_reg; // {8'h SlaveAddr, 16'h RegAddr} hoặc {8'h Data, ...}

    assign scl = scl_o;
    assign sda = sda_oe ? sda_o : 1'bz;

    // I2C Logic - Ghi một chuỗi 3 byte (Slave Addr, Reg Addr H, Reg Addr L), sau đó là 1 byte dữ liệu
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_i2c <= IDLE;
            clk_cnt <= 0;
            bit_cnt <= 0;
            scl_o <= 1;
            sda_o <= 1;
            sda_oe <= 1;
            i2c_busy <= 0;
        end else begin
            case (state_i2c)
                IDLE: begin
                    scl_o <= 1;
                    sda_o <= 1;
                    sda_oe <= 1;
                    i2c_busy <= 0;
                    if (start_i2c) begin
                        i2c_busy <= 1;
                        state_i2c <= START;
                        clk_cnt <= 0;
                    end
                end
                START: begin
                    if (clk_cnt < CLK_DIV) clk_cnt <= clk_cnt + 1;
                    else begin
                        sda_o <= 0;
                        state_i2c <= SEND_ADDR;
                        clk_cnt <= 0;
                        bit_cnt <= 0;
                        // Gửi địa chỉ Slave + Write Bit (0)
                        // === DÒNG ĐÃ SỬA: Bỏ dấu ` và dùng hằng số localparam ===
                        byte_to_send <= {OV5640_I2C_ADDR, 1'b0}; 
                    end
                end
                SEND_ADDR: begin // Trạng thái này gửi lần lượt 4 byte
                    // Giữ SCL thấp
                    if (clk_cnt < CLK_DIV) begin
                        scl_o <= 0;
                        clk_cnt <= clk_cnt + 1;
                        if (clk_cnt == 1) sda_o <= byte_to_send[7 - bit_cnt];
                    // Đưa SCL lên cao
                    end else if (clk_cnt < CLK_DIV * 2) begin
                        scl_o <= 1;
                        clk_cnt <= clk_cnt + 1;
                    // Hoàn thành 1 bit
                    end else begin
                        clk_cnt <= 0;
                        if (bit_cnt == 7) begin
                            bit_cnt <= 0;
                            sda_oe <= 0; // Thả SDA để nhận ACK
                            state_i2c <= WAIT_ACK;
                        end else begin
                            bit_cnt <= bit_cnt + 1;
                        end
                    end
                end
                WAIT_ACK: begin
                    if (clk_cnt < CLK_DIV) begin
                        scl_o <= 0;
                        clk_cnt <= clk_cnt + 1;
                    end else if (clk_cnt < CLK_DIV * 2) begin
                        scl_o <= 1;
                        clk_cnt <= clk_cnt + 1;
                    end else begin
                        clk_cnt <= 0;
                        sda_oe <= 1;
                        // Dựa vào giá trị `data_idx` để biết đang gửi byte nào
                        case (data_idx)
                            3'd0: begin byte_to_send <= reg_addr[15:8]; state_i2c <= SEND_ADDR; data_idx <= data_idx + 1; end
                            3'd1: begin byte_to_send <= reg_addr[7:0];  state_i2c <= SEND_ADDR; data_idx <= data_idx + 1; end
                            3'd2: begin byte_to_send <= reg_data;       state_i2c <= SEND_ADDR; data_idx <= data_idx + 1; end
                            3'd3: begin state_i2c <= STOP; end // Đã gửi xong
                        endcase
                    end
                end
                STOP: begin
                    if (clk_cnt < CLK_DIV) begin
                        scl_o <= 0;
                        sda_o <= 0;
                        clk_cnt <= clk_cnt + 1;
                    end else if (clk_cnt < CLK_DIV * 2) begin
                        scl_o <= 1;
                        clk_cnt <= clk_cnt + 1;
                    end else if (clk_cnt < CLK_DIV * 3) begin
                        sda_o <= 1;
                        clk_cnt <= clk_cnt + 1;
                    end else begin
                        state_i2c <= IDLE;
                    end
                end
                default: state_i2c <= IDLE;
            endcase
        end
    end

    //================================================================
    // Configuration Controller
    //================================================================

    // Bảng cấu hình cho OV5640 - VGA (640x480) RGB565
    localparam REG_NUM = 24; // Số lượng thanh ghi cần cấu hình
    reg [23:0] reg_table [0:REG_NUM-1];
    initial begin
        // {16'hRegAddr, 8'hData}
        reg_table[0]  = {16'h3008, 8'h82}; // SW reset
        reg_table[1]  = {16'h3103, 8'h11};
        reg_table[2]  = {16'h3017, 8'hff};
        reg_table[3]  = {16'h3018, 8'hff};
        reg_table[4]  = {16'h3630, 8'h2e};
        reg_table[5]  = {16'h3821, 8'h00};
        reg_table[6]  = {16'h3820, 8'h00};
        reg_table[7]  = {16'h3812, 8'h00};
        reg_table[8]  = {16'h3708, 8'h64};
        reg_table[9]  = {16'h3709, 8'h12};
        reg_table[10] = {16'h5001, 8'h7f};
        reg_table[11] = {16'h5002, 8'h00};
        reg_table[12] = {16'h3011, 8'h00};
        reg_table[13] = {16'h3034, 8'h1a};
        reg_table[14] = {16'h4300, 8'h61}; // Format: RGB565
        reg_table[15] = {16'h3800, 8'h00}; // H_offset
        reg_table[16] = {16'h3801, 8'h00};
        reg_table[17] = {16'h3802, 8'h00}; // V_offset
        reg_table[18] = {16'h3803, 8'h00};
        reg_table[19] = {16'h3804, 8'h0a}; // H_size H
        reg_table[20] = {16'h3805, 8'h3f}; // H_size L (2623)
        reg_table[21] = {16'h3806, 8'h07}; // V_size H
        reg_table[22] = {16'h3807, 8'h9b}; // V_size L (1947)
        reg_table[23] = {16'h3008, 8'h02}; // SW power up
    end

    reg [4:0]  reg_idx;
    reg [1:0]  data_idx; // 0:SlaveAddr, 1:RegAddr_H, 2:RegAddr_L, 3:Data
    reg [15:0] reg_addr;
    reg [7:0]  reg_data;
    reg [2:0]  state_ctrl;

    localparam S_DELAY_POWERON = 0;
    localparam S_CONFIG_LOOP = 1;
    localparam S_DONE = 2;

    reg [19:0] delay_cnt; // ~10.4ms delay @ 100MHz

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_ctrl <= S_DELAY_POWERON;
            config_done <= 1'b0;
            reg_idx <= 0;
            delay_cnt <= 0;
            start_i2c <= 0;
            data_idx <= 0;
        end else begin
            start_i2c <= 0; // Tín hiệu start chỉ kéo dài 1 chu kỳ
            case (state_ctrl)
                S_DELAY_POWERON: begin
                    if (delay_cnt < 20'd1000000) begin // Delay ~10ms
                        delay_cnt <= delay_cnt + 1;
                    end else begin
                        state_ctrl <= S_CONFIG_LOOP;
                    end
                end
                S_CONFIG_LOOP: begin
                    if (!i2c_busy && reg_idx < REG_NUM) begin
                        reg_addr <= reg_table[reg_idx][23:8];
                        reg_data <= reg_table[reg_idx][7:0];
                        data_idx <= 0;
                        start_i2c <= 1'b1;
                        reg_idx <= reg_idx + 1;
                    end else if (reg_idx == REG_NUM) begin
                        state_ctrl <= S_DONE;
                    end
                end
                S_DONE: begin
                    config_done <= 1'b1;
                end
            endcase
        end
    end

endmodule