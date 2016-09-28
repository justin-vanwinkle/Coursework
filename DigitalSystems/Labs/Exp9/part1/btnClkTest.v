// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Academia\Current Courses\Digital\Labs\Exp9\part1\sch.sch - Wed Jul 29 11:24:43 2015

`timescale 1ns / 1ns

module sch_sch_sch_tb();

// Inputs
   reg Clock;
   reg [3:0] D;
   reg Shift;
   reg Load;

// Output
   wire [3:0] O;

// Bidirs

// Instantiate the UUT
   sch UUT (
		.Clock(Clock), 
		.D(D), 
		.Shift(Shift), 
		.Load(Load), 
		.O(O)
   );
// Initialize Inputs

       initial begin
		 #100;	// Wait time
		Clock = 1;
		D = 0;
		Shift = 0; //0 = left shift
		Load = 0;
		end
	
	always begin
	#1 Clock = ~Clock;
	end
	
	
	always @(posedge Clock) begin
	Load = 1;
	D = 15;
	#2;
	
	Load = 0;
	D = 0;
	#8;
	
	Shift = 1;
	D = 8;
	#8;
	
	
	
	end
endmodule
