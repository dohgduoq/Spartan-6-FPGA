`timescale 1ns / 1ps

module top(
    input wire clk_50mhz,      // Clock 50MHz tu board AX309
    input wire reset_btn,       // Nut reset 
    
    // 7-segment outputs
    output wire [7:0] seg,      // Segments a-g và dp
    output wire [3:0] digit,    // Digit select (3 digits cho 0-255)
    
    // LED outputs 
    output wire [3:0] led       
);

    // bo dem clk
    reg [25:0] clk_counter;
    reg cpu_clk;
    
    // CPU output
    wire [7:0] cpu_out;
    
    
    wire reset;
    assign reset = ~reset_btn;  // chuyen doi tu  AL sang AH
    

    always @(posedge clk_50mhz or posedge reset) begin
        if (reset) begin
            clk_counter <= 0;
            cpu_clk <= 0;
        end else begin
            clk_counter <= clk_counter + 1;
            cpu_clk <= clk_counter[20];  // timing toc do
        end
    end
    
    // khoi tao CPU
    cpu_8bit cpu_inst (
        .clk(cpu_clk),
        .reset(reset),
        .out_reg(cpu_out)
    );
    
    // LED output 
    assign led = cpu_out[3:0];
    
    // khoi tao bo chuyen doi
    wire [11:0] bcd;
    bin_to_bcd bcd_conv (
        .bin(cpu_out),
        .bcd(bcd)
    );
    
    // khoi tao 7-segment
    seven_seg_driver seg_driver (
        .clk(clk_50mhz),
        .reset(reset),
        .bcd(bcd),
        .seg(seg),
        .digit(digit)
    );

endmodule


//thuat toan Double Dabble chuyen doi Binary qua BCD
module bin_to_bcd(
    input wire [7:0] bin,
    output reg [11:0] bcd
);

    integer i;
    
    always @(*) begin
        bcd = 0;
        for (i = 0; i < 8; i = i + 1) begin
            // Add 3 to columns >= 5
            if (bcd[3:0] >= 5)
                bcd[3:0] = bcd[3:0] + 3;
            if (bcd[7:4] >= 5)
                bcd[7:4] = bcd[7:4] + 3;
            if (bcd[11:8] >= 5)
                bcd[11:8] = bcd[11:8] + 3;
            
            // Shift left
            bcd = {bcd[10:0], bin[7-i]};
        end
    end

endmodule


// 7-segment
module seven_seg_driver(
    input wire clk,
    input wire reset,
    input wire [11:0] bcd,   
    output reg [7:0] seg,      
    output reg [3:0] digit       
);

    // Bo dem
    reg [17:0] refresh_counter;
    wire [1:0] digit_select;
    
    // gia tri so
    reg [3:0] current_digit;
    
	 
    // chia toc do
    always @(posedge clk or posedge reset) begin
        if (reset)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end
    
	 
    // Digit 190Hz - clock 50MHz
    assign digit_select = refresh_counter[17:16];
    
	 
    // Digit 
    always @(*) begin
        case (digit_select)
            2'b00: begin
                digit = 4'b1110;  // Digit 0 
                current_digit = bcd[3:0];
            end
            2'b01: begin
                digit = 4'b1101;  // Digit 1 
                current_digit = bcd[7:4];
            end
            2'b10: begin
                digit = 4'b1011;  // Digit 2 
                current_digit = bcd[11:8];
            end
            default: begin
                digit = 4'b0111;  // Digit 3 
                current_digit = 4'b0000;
            end
        endcase
    end
    
    // BCD -> 7-segment
    always @(*) begin
        case (current_digit)
            4'h0: seg = 8'b11000000;  // 0
            4'h1: seg = 8'b11111001;  // 1
            4'h2: seg = 8'b10100100;  // 2
            4'h3: seg = 8'b10110000;  // 3
            4'h4: seg = 8'b10011001;  // 4
            4'h5: seg = 8'b10010010;  // 5
            4'h6: seg = 8'b10000010;  // 6
            4'h7: seg = 8'b11111000;  // 7
            4'h8: seg = 8'b10000000;  // 8
            4'h9: seg = 8'b10010000;  // 9
            default: seg = 8'b11111111; 
        endcase
    end

endmodule
