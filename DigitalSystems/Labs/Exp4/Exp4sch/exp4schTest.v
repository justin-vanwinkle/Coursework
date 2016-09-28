// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Justin\Academia\Current Courses\Digital\Exp4\exp4sch.sch - Mon Jun 22 19:45:48 2015

`timescale 1ps / 1ps

module exp4sch_exp4sch_sch_tb();

// Inputs
   reg [2:0] X;
   reg [2:0] Y;

// Output
   wire [2:0] S;
   wire Cout;

// Bidirs

// Instantiate the UUT
   exp4sch UUT (
		.X(X), 
		.S(S), 
		.Cout(Cout), 
		.Y(Y)
   );
// Initialize Inputs

   initial begin
			
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


