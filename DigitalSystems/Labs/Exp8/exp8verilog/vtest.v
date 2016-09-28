`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:20 07/23/2015
// Design Name:   code
// Module Name:   C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp8/exp8verilog/vtest.v
// Project Name:  exp8verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module vtest;

	// Inputs
	reg D;
	reg Clk;

	// Outputs
	wire [1:0] Q;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.D(D), 
		.Clk(Clk), 
		.Q(Q)
	);

		initial begin
		// Initialize Inputs
		D = 0;
		Clk = 1;
	end
	
	always begin
		#1 Clk = ~Clk;
	end
	
	always begin
		repeat(3)begin
			#2;
			D = ~D;
		end
		#4;
	end
      
endmodule

