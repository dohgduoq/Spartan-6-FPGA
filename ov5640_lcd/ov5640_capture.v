`timescale 1ns / 1ps

module ov5640_capture(
input wire pclk,
    input wire rst_n,
    input wire href,
    input wire vsync,
    input wire [7:0] data,
    
    input wire fb_clk,
    output reg [15:0] fb_data,
    output reg fb_we,
    output reg [16:0] fb_addr
);

    reg [7:0] data_buf;
    reg byte_flag;
    reg href_d1, href_d2;
    reg vsync_d1, vsync_d2;
    
    wire href_pos = href_d1 & ~href_d2;
    wire href_neg = ~href_d1 & href_d2;
    wire vsync_pos = vsync_d1 & ~vsync_d2;
    
    reg [10:0] h_cnt;
    reg [9:0] v_cnt;
    
    always @(posedge pclk or negedge rst_n) begin
        if(!rst_n) begin
            href_d1 <= 0;
            href_d2 <= 0;
            vsync_d1 <= 0;
            vsync_d2 <= 0;
        end else begin
            href_d1 <= href;
            href_d2 <= href_d1;
            vsync_d1 <= vsync;
            vsync_d2 <= vsync_d1;
        end
    end
    
    // Pixel counter
    always @(posedge pclk or negedge rst_n) begin
        if(!rst_n) begin
            h_cnt <= 0;
            v_cnt <= 0;
        end else begin
            if(vsync_pos) begin
                v_cnt <= 0;
                h_cnt <= 0;
            end else if(href_pos) begin
                h_cnt <= 0;
            end else if(href) begin
                if(byte_flag)
                    h_cnt <= h_cnt + 1;
            end
            
            if(href_neg)
                v_cnt <= v_cnt + 1;
        end
    end
    
    // Capture RGB565 data
    always @(posedge pclk or negedge rst_n) begin
        if(!rst_n) begin
            byte_flag <= 0;
            data_buf <= 0;
            fb_data <= 0;
            fb_we <= 0;
            fb_addr <= 0;
        end else begin
            if(href) begin
                byte_flag <= ~byte_flag;
                if(byte_flag) begin
                    // Second byte - combine to form RGB565
                    data_buf <= data;
                    fb_data <= {data_buf, data};
                    
                    // Only write if within display area (480x272)
                    if(h_cnt < 480 && v_cnt < 272) begin
                        fb_we <= 1;
                        fb_addr <= v_cnt * 480 + h_cnt;
                    end else begin
                        fb_we <= 0;
                    end
                end else begin
                    // First byte
                    data_buf <= data;
                    fb_we <= 0;
                end
            end else begin
                byte_flag <= 0;
                fb_we <= 0;
            end
        end
    end


endmodule
