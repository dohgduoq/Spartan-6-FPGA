`timescale 1ns / 1ps

module top_module(
       input wire clk_50m,           // Clock 50MHz từ board
    input wire rst_n,             // Reset
    
    // OV5640 Camera Interface
    input wire cam_pclk,          // Pixel clock từ camera
    input wire cam_href,          // Horizontal sync
    input wire cam_vsync,         // Vertical sync
    input wire [7:0] cam_data,    // Data 8-bit
    output wire cam_xclk,         // Clock to camera (24MHz)
    output wire cam_pwdn,         // Power down
    output wire cam_rst_n,        // Camera reset
    inout wire cam_scl,           // I2C clock
    inout wire cam_sda,           // I2C data
    
    // AN430 LCD Interface (RGB565)
    output wire lcd_dclk,         // LCD clock
    output wire lcd_hs,           // Horizontal sync
    output wire lcd_vs,           // Vertical sync
    output wire lcd_de,           // Data enable
    output wire [4:0] lcd_r,      // Red 5-bit
    output wire [5:0] lcd_g,      // Green 6-bit
    output wire [4:0] lcd_b,      // Blue 5-bit
    output wire lcd_bl            // Backlight
);

    // Parameters cho AN430: 480x272
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

    // Clock signals
    wire clk_24m;    // Camera clock
    wire clk_33m;    // LCD clock
    wire clk_100m;   // System clock
    wire pll_locked;
    
    // Camera control
    wire cam_config_done;
    
    // Frame buffer signals
    wire [15:0] fb_din;
    wire fb_we;
    wire [16:0] fb_waddr;
    wire [15:0] fb_dout;
    wire [16:0] fb_raddr;
    
    // Camera power control
    assign cam_pwdn = 1'b0;      // Normal mode
    assign cam_rst_n = rst_n;    // Reset control
    assign cam_xclk = clk_24m;   // 24MHz clock to camera
    assign lcd_bl = 1'b1;        // Backlight on

    // Clock generation using DCM/PLL
    clk_gen clk_gen_inst(
        .clk_in(clk_50m),
        .rst_n(rst_n),
        .clk_24m(clk_24m),
        .clk_33m(clk_33m),
        .clk_100m(clk_100m),
        .locked(pll_locked)
    );

    // I2C Master for camera configuration
    i2c_config i2c_config_inst(
        .clk(clk_100m),
        .rst_n(rst_n & pll_locked),
        .scl(cam_scl),
        .sda(cam_sda),
        .config_done(cam_config_done)
    );

    // Camera capture module
    ov5640_capture capture_inst(
        .pclk(cam_pclk),
        .rst_n(rst_n & cam_config_done),
        .href(cam_href),
        .vsync(cam_vsync),
        .data(cam_data),
        .fb_clk(clk_100m),
        .fb_data(fb_din),
        .fb_we(fb_we),
        .fb_addr(fb_waddr)
    );

    // Dual-port frame buffer (480x272 RGB565)
    frame_buffer fb_inst(
        .clka(clk_100m),
        .wea(fb_we),
        .addra(fb_waddr),
        .dina(fb_din),
        .clkb(clk_33m),
        .addrb(fb_raddr),
        .doutb(fb_dout)
    );

    // LCD display controller
    lcd_driver lcd_driver_inst(
        .clk(clk_33m),
        .rst_n(rst_n & pll_locked),
        .fb_data(fb_dout),
        .fb_addr(fb_raddr),
        .lcd_dclk(lcd_dclk),
        .lcd_hs(lcd_hs),
        .lcd_vs(lcd_vs),
        .lcd_de(lcd_de),
        .lcd_r(lcd_r),
        .lcd_g(lcd_g),
        .lcd_b(lcd_b)
    );

endmodule
