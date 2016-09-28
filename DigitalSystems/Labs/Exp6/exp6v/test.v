`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:59:15 07/12/2015
// Design Name:   lab6
// Module Name:   C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp6/exp6v/test.v
// Project Name:  exp6v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [2:0] in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	lab6 uut (
		.in(in), 
		.out(out)
	);

	initial begin
		in = 0;
		
		repeat(8)begin
			#1;
			in = in + 1;
      end		

	end
      
endmodule

