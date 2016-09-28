`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:00 06/23/2015 
// Design Name: 
// Module Name:    exp4code 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Exp4code(
    input [2:0] X,
    input [2:0] Y,
    output [2:0] S,
    output Cout
    );

	 wire S0Cout; 
	 wire S1Cout;
	 wire S2Cout;
	 
		// S[0]
		assign S[0] = X[0] ^ Y[0];
		assign S0Cout = (X[0] & Y[0]);
		
		// S[1]
		assign S[1] = X[1] ^ Y[1] ^ S0Cout;
		assign S1Cout = ((X[1] & Y[1]) | (X[1] & S0Cout) | (Y[1] & S0Cout));

		// S[2]
		assign S[2] = X[2] ^ Y[2] ^ S1Cout;
		assign S2Cout = (X[2] & Y[2]) | (X[2] & S1Cout) | (Y[2] & S1Cout);

		// Cout
		assign Cout = S2Cout;

endmodule
