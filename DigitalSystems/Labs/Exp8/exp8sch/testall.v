// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Academia\Current Courses\Digital\Labs\Exp8\exp8sch\sch.sch - Thu Jul 23 13:35:15 2015

`timescale 1ns / 1ns

module sch_sch_sch_tb();

// Inputs
	reg Qv;
	reg Ov;
   reg CLK;
   reg S;
	reg R;
   reg D;

// Output
   wire Q;
   wire Qbar;
	wire O;
	wire Obar;
	wire P;
	wire Pbar;

// Instantiate the UUT
   sch UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.CLK(CLK), 
		.R(R), 
		.S(S), 
		.D(D)
   );
// Initialize Inputs
	initial begin
		CLK = 0;
		R = 0;
		S = 0;
		D = 0;
	end
		
	always begin
		// formatting: <R,S,Qv,Qv+1> <Transition table row being satisfied> <time>
		// each row feeds another such that it satisfies the conditional requirements of the next for testing
		
		Qv = 0;
		Ov = 0;
		R = 1;
		S = 0;
		CLK = 1;
		#1;	// 1,0,0,0 r5 (from 0,0,0,0 r1) 0ps

		Qv = Q;
		Ov = O;
		CLK = 0;
		R = 0;
		CLK = 1;
		#1;	// 0,0,0,0 r1 1ps
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		S = 1;
		CLK = 1;
		#1;	// 0,1,0,1 r3 2ps
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		S = 0;
		CLK = 1;
		#1;	// 0,0,1,1 r2 3ps
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		S = 1;
		CLK = 1;
		#1;	// 0,1,1,1 r4 4ps
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		R = 1;
		S = 0;
		CLK = 1;
		#1;	// 1,0,1,0 r6 5ps
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		S = 1;
		CLK = 1;
		#1;	// 1,1,0,1 r7 6ps		//metastable - output unpredictable
		
		Qv = Q;
		Ov = O;
		CLK = 0;
		CLK = 1;
		#1;	// 1,1,1,1 r8 7ps		//metastable - output unpredictable
	end
endmodule
