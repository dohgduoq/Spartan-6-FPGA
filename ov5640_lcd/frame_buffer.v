`timescale 1ns / 1ps
module frame_buffer(
input wire clka,
    input wire wea,
    input wire [16:0] addra,  // 480*272 = 130560 ≈ 2^17
    input wire [15:0] dina,
    
    input wire clkb,
    input wire [16:0] addrb,
    output reg [15:0] doutb
);

    // 480x272 = 130560 pixels, RGB565 = 16 bits
    reg [15:0] ram [0:130559];
    
    always @(posedge clka) begin
        if(wea)
            ram[addra] <= dina;
    end
    
    always @(posedge clkb) begin
        doutb <= ram[addrb];
    end

endmodule
