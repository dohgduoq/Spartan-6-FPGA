`timescale 1ns / 1ps
module clk_gen(
  
    input wire clk_in,      // 50MHz
    input wire rst_n,
    output wire clk_24m,    // 24MHz for camera
    output wire clk_33m,    // 33MHz for LCD
    output wire clk_100m,   // 100MHz system
    output wire locked
);

    wire clkfb;
    wire clk0_bufg, clk1_bufg, clk2_bufg;
    
    // PLL primitive for Spartan-6
    PLL_BASE #(
        .BANDWIDTH("OPTIMIZED"),
        .CLKFBOUT_MULT(12),        // 50MHz * 12 = 600MHz VCO
        .CLKFBOUT_PHASE(0.0),
        .CLKIN_PERIOD(20.0),       // 50MHz = 20ns
        
        .CLKOUT0_DIVIDE(25),       // 600/25 = 24MHz
        .CLKOUT0_PHASE(0.0),
        .CLKOUT0_DUTY_CYCLE(0.5),
        
        .CLKOUT1_DIVIDE(18),       // 600/18 = 33.33MHz
        .CLKOUT1_PHASE(0.0),
        .CLKOUT1_DUTY_CYCLE(0.5),
        
        .CLKOUT2_DIVIDE(6),        // 600/6 = 100MHz
        .CLKOUT2_PHASE(0.0),
        .CLKOUT2_DUTY_CYCLE(0.5),
        
        .COMPENSATION("SYSTEM_SYNCHRONOUS"),
        .DIVCLK_DIVIDE(1),
        .REF_JITTER(0.1)
    ) pll_inst (
        .CLKFBOUT(clkfb),
        .CLKOUT0(clk0_bufg),
        .CLKOUT1(clk1_bufg),
        .CLKOUT2(clk2_bufg),
        .CLKOUT3(),
        .CLKOUT4(),
        .CLKOUT5(),
        .LOCKED(locked),
        .CLKFBIN(clkfb),
        .CLKIN(clk_in),
        .RST(~rst_n)
    );
    
    assign clk_24m = clk0_bufg;
    assign clk_33m = clk1_bufg;
    assign clk_100m = clk2_bufg;



endmodule
