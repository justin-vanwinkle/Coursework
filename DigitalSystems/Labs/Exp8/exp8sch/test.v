// Verilog test fixture created from schematic C:\Users\justi_000\Dropbox\Academia\Current Courses\Digital\Labs\Exp8\exp8sch\sch.sch - Thu Jul 23 09:47:48 2015

`timescale 1ns / 1ns

module sch_sch_sch_tb();

// Inputs
	reg Qv;
   reg S;
   reg R;

// Output
   wire Qbar;	// Inverse of Qv+1 
   wire Q;		// Also Qv+1

// Instantiate the UUT
   sch UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.R(R), 
		.S(S)
   );

	always begin
		// formatting: <R,S,Qv,Qv+1> <Transition table row being satisfied> <time>
		// each row feeds another such that it satisfies the conditional requirements of the next for testing
		
		Qv = 0;
		R = 1;
		S = 0;
		#1;	// 1,0,0,0 r5 (from 0,0,0,0 r1) 0ps

		Qv = Q;
		R = 0;
		#1;	// 0,0,0,0 r1 1ps
		
		Qv = Q;
		S = 1;
		#1;	// 0,1,0,1 r3 2ps
		
		Qv = Q;
		S = 0;
		#1;	// 0,0,1,1 r2 3ps
		
		Qv = Q;
		S = 1;
		#1;	// 0,1,1,1 r4 4ps
		
		Qv = Q;
		R = 1;
		S = 0;
		#1;	// 1,0,1,0 r6 5ps
		
		Qv = Q;
		S = 1;
		#1;	// 1,1,0,1 r7 6ps		//metastable - output unpredictable
		
		Qv = Q;
		#1;	// 1,1,1,1 r8 7ps		//metastable - output unpredictable
		

		
		
	end
endmodule
