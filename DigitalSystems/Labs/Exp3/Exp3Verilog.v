`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:59 06/17/2015 
// Design Name: 
// Module Name:    Exp3Verilog 
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
module Exp3Verilog(
    input A,
    input B,
    input X,
    input Y,
    output F
    );
	 
	 assign F = (~A & ~B & X) | (~A & B & Y) | (A & B & ~X) | (A & ~B & ~Y);

endmodule
