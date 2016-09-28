// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Academia\Current Courses\Digital\Labs\Exp6\exp6sch\schematic.sch - Fri Jul 10 18:33:27 2015

`timescale 1ps / 1ps

module schematic_schematic_sch_tb();

// Inputs
   reg A;
   reg B;
   reg C;
	reg W;
	reg X;
	reg Y;
	reg Z;

// Output
   wire F;
	wire G;

// Bidirs

// Instantiate the UUT
   schematic UUT (
		.A(A), 
		.B(B), 
		.C(C), 
		.F(F),
		.W(W),
		.X(X),
		.Y(Y),
		.Z(Z),
		.G(G)
   );
	
   initial begin
		A = 1;
		B = 1;
		C = 1;
		W = 0;
		X = 1;
		Y = 1;
		Z = 1;
	end

	always begin
		repeat(2)begin
			A=~A;
			X=~X;
			repeat(2)begin
				B=~B;
				Y=~Y;
				repeat(2)begin
					C=~C;
					Z=~Z;
					#1;
					if((A|~B)&C == 1 && F != 1)begin
						$display("Incorrect output for F = 1", $time-1);
					end
					if((A|~B)&C == 0 && F != 0)begin
						$display("Incorrect output for F = 0", $time-1);					
					end
					if((W&~X | Y&~Z) == 1 && G != 1) begin
						$display("Incorrect output for G = 1", $time-1);
					end
					if((W&~X | Y&~Z) == 0 && G != 0) begin
						$display("Incorrect output for G = 0", $time-1);
					end
				end
			end
		end
		A = 0;
		B = 0;
		C = 0;
		W = 1;
		repeat(2)begin
			X=~X;
			repeat(2)begin
				Y=~Y;
				repeat(2)begin
					Z=~Z;
					#1;
					if((W&~X | Y&~Z) == 1 && G != 1) begin
						$display("Incorrect output for G = 1", $time-1);
					end
					if((W&~X | Y&~Z) == 0 && G != 0) begin
						$display("Incorrect output for G = 0", $time-1);
					end
					
				end
			end
		end
	end
endmodule
