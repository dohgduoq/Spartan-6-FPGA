`timescale 1ns / 1ps

module lcd_driver(
  input wire clk,
    input wire rst_n,
    input wire [15:0] fb_data,
    output reg [16:0] fb_addr,
    
    output wire lcd_dclk,
    output reg lcd_hs,
    output reg lcd_vs,
    output reg lcd_de,
    output reg [4:0] lcd_r,
    output reg [5:0] lcd_g,
    output reg [4:0] lcd_b
);

    parameter H_ACTIVE = 480;
    parameter H_FP = 2;
    parameter H_SYNC = 41;
    parameter H_BP = 2;
    parameter H_TOTAL = 525;
    
    parameter V_ACTIVE = 272;
    parameter V_FP = 2;
    parameter V_SYNC = 10;
    parameter V_BP = 2;
    parameter V_TOTAL = 286;

    assign lcd_dclk = clk;
    
    reg [10:0] h_cnt;
    reg [9:0] v_cnt;
    
    // Horizontal counter
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            h_cnt <= 0;
        else if(h_cnt == H_TOTAL - 1)
            h_cnt <= 0;
        else
            h_cnt <= h_cnt + 1;
    end
    
    // Vertical counter
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            v_cnt <= 0;
        else if(h_cnt == H_TOTAL - 1) begin
            if(v_cnt == V_TOTAL - 1)
                v_cnt <= 0;
            else
                v_cnt <= v_cnt + 1;
        end
    end
    
    // Sync signals
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            lcd_hs <= 1;
            lcd_vs <= 1;
        end else begin
            lcd_hs <= (h_cnt >= H_FP && h_cnt < H_FP + H_SYNC) ? 0 : 1;
            lcd_vs <= (v_cnt >= V_FP && v_cnt < V_FP + V_SYNC) ? 0 : 1;
        end
    end
    
    wire h_active = (h_cnt >= H_FP + H_SYNC + H_BP) && (h_cnt < H_TOTAL - H_FP);
    wire v_active = (v_cnt >= V_FP + V_SYNC + V_BP) && (v_cnt < V_TOTAL - V_FP);
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            lcd_de <= 0;
            lcd_r <= 0;
            lcd_g <= 0;
            lcd_b <= 0;
            fb_addr <= 0;
        end else begin
            if(h_active && v_active) begin
                lcd_de <= 1;
                // Extract RGB565: RRRRRGGGGGGBBBBB
                lcd_r <= fb_data[15:11];
                lcd_g <= fb_data[10:5];
                lcd_b <= fb_data[4:0];
                
                // Calculate frame buffer address
                fb_addr <= (v_cnt - V_FP - V_SYNC - V_BP) * H_ACTIVE + 
                          (h_cnt - H_FP - H_SYNC - H_BP);
            end else begin
                lcd_de <= 0;
                lcd_r <= 0;
                lcd_g <= 0;
                lcd_b <= 0;
            end
        end
    end



endmodule
