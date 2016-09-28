// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Justin\Academia\Current Courses\Digital\Exp5sch\schematic.sch - Sun Jun 28 21:45:22 2015

`timescale 1ps / 1ps

module schematic_schematic_sch_tb();

// Inputs
   reg [3:0] S;

// Output
   wire O;

// Bidirs

// Instantiate the UUT
   schematic UUT (
		.O(O), 
		.S(S)
   );
// Initialize Inputs
	initial begin
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
