// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Justin\Academia\Current Courses\Digital\Exp3\Exp3Schematic.sch - Wed Jun 17 13:40:15 2015

`timescale 1ns / 1ps

module Exp3Schematic_Exp3Schematic_sch_tb();

// Inputs
   reg Y;
   reg X;
   reg B;
   reg A;

// Output
   wire F;

// Bidirs

// Instantiate the UUT
   Exp3Schematic UUT (
		.Y(Y), 
		.X(X), 
		.B(B), 
		.A(A), 
		.F(F)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		Y = 0;
		X = 0;
		B = 0;
		A = 0;
   `endif
endmodule
