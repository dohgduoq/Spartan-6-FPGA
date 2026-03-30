`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:19:36 09/10/2025
// Design Name:   ram_16x8
// Module Name:   /home/ise/Xilinx_project/ram_16x8/ram_16x8_test.v
// Project Name:  ram_16x8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram_16x8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_16x8_test;

	parameter ADDR_WIDTH = 4;
	parameter DATA_WIDTH = 8;
	parameter DEPTH = 16;
	
	// Inputs
	reg clk;
	reg [ADDR_WIDTH-1:0] addr;
	reg cs;
	reg we;
	reg oe;
	reg [DATA_WIDTH-1:0] data_in;
	wire[DATA_WIDTH-1:0] data;
	
	assign data = (we && cs) ? data_in : {DATA_WIDTH{1'bz}};
	

	// Instantiate the Unit Under Test (UUT)
	ram_16x8 #(.ADDR_WIDTH(ADDR_WIDTH), .DATA_WIDTH(DATA_WIDTH), .DEPTH(DEPTH))
		uut (
		.clk(clk), 
		.addr(addr), 
		.data(data), 
		.cs(cs), 
		.we(we), 
		.oe(oe)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		forever #10 clk = ~clk;
		end 
	
	initial begin
		cs = 0;
		we = 0;
		oe = 0;
		addr = 0;
		data_in = 8'h00;
		#50;
		
		cs = 1;
		we = 1;
		oe =0;
		addr = 4'd3;
		data_in = 8'hAA;
		#20;
		
		addr = 4'd7; data_in = 8'h55;
		#20;
		
		we = 0; data_in = 8'hZZ;
		#20;
		
		
		oe = 1; addr = 4'd3;
		#40;
		
		
		addr = 4'd7;
		#40;
		
		$stop;
	end
	

      
endmodule

