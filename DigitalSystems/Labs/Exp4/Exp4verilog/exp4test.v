`timescale 1ps / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:58:31 06/23/2015
// Design Name:   Exp4code
// Module Name:   C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Exp4verilog/exp4test.v
// Project Name:  Exp4verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Exp4code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exp4test;

	// Inputs
	reg [2:0] X;
	reg [2:0] Y;

	// Outputs
	wire [2:0] S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Exp4code uut (
		.X(X), 
		.Y(Y), 
		.S(S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		X = 0;
		Y = 0;

        
		// This will run every possible combination
		X = 0;
		Y = 0;
		// increment thru all Y per X
		repeat(8) begin
			Y = 0; // reset Y
		
			// increment Y inside X
			repeat(8) begin
				#1 // 1ps delay
			
				///////////////////////////////////////////////
				// Check for proper output
				if(X+Y != S && X+Y > 7) begin
					if(X+Y-8 == S && Cout == 1) begin
					end
					else begin
						$display("Assertion Error 1");
					end
				end
				else if (X+Y != S) begin
					$display("Assertion Error 2");
				end
				///////////////////////////////////////////////

				Y = Y + 1;
			end
			X = X + 1;
		end
	end
      
endmodule

