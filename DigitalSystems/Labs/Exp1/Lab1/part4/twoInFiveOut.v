`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:39:58 01/28/2015 
// Design Name: 
// Module Name:    twoInFiveOut 
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
module twoInFiveOut(A, B, S, W, X, Y, Z);
    input A;
    input B;
    output S;
    output W;
    output X;
    output Y;
    output Z;
	 	 
	 assign S = ~A;
	 assign W = A & B;
	 assign X = A | B;
	 assign Y = ~(A & B);
	 assign Z = A ^ B;

endmodule
