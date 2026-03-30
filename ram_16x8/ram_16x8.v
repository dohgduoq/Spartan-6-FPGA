`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:07 09/10/2025 
// Design Name: 
// Module Name:    ram_16x8 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ram_16x8
	#(parameter ADDR_WIDTH = 4,
	  parameter DATA_WIDTH = 8,
	  parameter DEPTH = 16 )
	(
		input wire clk,
		input wire [ADDR_WIDTH-1:0] addr,
		inout wire [DATA_WIDTH-1:0] data,
		input wire cs,
		input wire we,
		input wire oe
    );
	reg [DATA_WIDTH-1:0] tmp_data;
	reg [DATA_WIDTH-1:0] mem[0:DEPTH-1];
	
	
	always @ (posedge clk) begin
		if ( cs & we)
			mem[addr] <= data;
		end
			
	always @ (posedge clk) begin
		if ( cs & !we)
			tmp_data <= mem[addr];
		end
	assign data = (cs & oe & !we) ? tmp_data : {DATA_WIDTH{1'bz}} ;
	
endmodule
