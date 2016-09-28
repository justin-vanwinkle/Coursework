`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:24 06/17/2015
// Design Name:   Exp3Verilog
// Module Name:   C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp3/Exp3VerilogTest.v
// Project Name:  Exp3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exp3Verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Exp3VerilogTest;

	// Inputs
	reg A;
	reg B;
	reg X;
	reg Y;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	Exp3Verilog uut (
		.A(A), 
		.B(B), 
		.X(X), 
		.Y(Y), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		X = 0;
		Y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

