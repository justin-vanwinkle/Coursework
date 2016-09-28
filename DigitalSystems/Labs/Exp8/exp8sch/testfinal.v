// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Academia\Current Courses\Digital\Labs\Exp8\exp8sch\sch.sch - Thu Jul 23 13:51:54 2015

`timescale 1ns / 1ns

module sch_sch_sch_tb();

// Inputs
   reg CLK;
   reg S;
	reg R;
   reg D;

// Output
	wire P;
   wire Q;
   wire O;
   wire Qbar;
   wire Pbar;
   wire Obar;

// Instantiate the UUT
   sch UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.CLK(CLK), 
		.R(R), 
		.S(S), 
		.D(D), 
		.Pbar(Pbar), 
		.P(P), 
		.O(O), 
		.Obar(Obar)
   );
	
// Initialize Inputs
	initial begin
		CLK = 1;
		R = 1;
		S = 0;
		D = 0;
	end
		
	always begin
		#1 CLK = ~CLK;
	end
	
	always begin
	/* SR Flip Flop */
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// formatting: <R,S,Qv,Qv+1> <Transition table row being satisfied> <time>
		// each row feeds another such that it satisfies the conditional requirements of the next for testing
		R = 1;
		S = 0;
		#2;	// 1,0,0,0 r5 (from 0,0,0,0 r1) 0ps

		R = 0;
		#2;	// 0,0,0,0 r1 1ps

		S = 1;
		#2;	// 0,1,0,1 r3 2ps
		
		S = 0;
		#2;	// 0,0,1,1 r2 3ps
		
		S = 1;
		#2;	// 0,1,1,1 r4 4ps
		
		R = 1;
		S = 0;
		#2;	// 1,0,1,0 r6 5ps
		
		S = 1;
		#2;	// 1,1,0,1 r7 6ps		//metastable - output unpredictable

		#2;	// 1,1,1,1 r8 7ps		//metastable - output unpredictable
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	/* D Flip Flop */
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	end
	
	always begin
		
		repeat(3)begin
			#2;
			D = ~D;
		end
		
		#4;
	end
		
endmodule
