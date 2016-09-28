`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:00 06/23/2015 
// Design Name: 
// Module Name:    Exp4code 
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
    output Cout,
	 wire S0carry, S1carry, S2carry
    );

	begin
		// S[0]
		assign S[0] = X[0] ^ Y[0];
		assign S0carry = (X[0] & Y[0]);
		
		// S[1]
		assign S[1] = X[1] ^ Y[1] ^ S0carry;
		assign S1carry = ((X[1] & Y[1]) | (X[1] & S0carry) | (Y[1] & S0carry));

		// S[2]
		assign S[2] = X[2] ^ Y[2] ^ S1carry;
		assign S2carry = (X[2] & Y[2]) | (X[2] & S1carry) | (Y[2] & S1Carry);

		// Cout
		assign Cout = S2carry;
	end

endmodule
