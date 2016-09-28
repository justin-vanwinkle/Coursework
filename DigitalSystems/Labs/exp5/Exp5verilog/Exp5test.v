`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:58:17 06/29/2015
// Design Name:   Exp5code
// Module Name:   C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp5verilog/Exp5test.v
// Project Name:  Exp5verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exp5code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Exp5test;
	// Inputs
	reg [3:0] S;
	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	Exp5code uut (
		.S(S), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		// Select incrementer
		repeat(16)begin
			#1        	// delay
			
			if(S==3 || S==7 || S==11 || S==13 || S==15) begin
				if(O!=1) begin
					$display("Min term bad");
				end
			end
			else if(O!=0) begin
				$display("Max term bad");
			end
			S = S + 1;	// increment
		end
	end	
endmodule

