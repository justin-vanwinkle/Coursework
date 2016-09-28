`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:09:20 07/23/2015
// Design Name:   code
// Module Name:   C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp8/exp8verilog/testfinal.v
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

module testfinal;

	// Inputs
	reg D;
	reg Clk;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.D(D), 
		.Clk(Clk)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		Clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

