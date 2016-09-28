`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:41 01/28/2015 
// Design Name: 
// Module Name:    codeOr 
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
module codeOr(A, B, O);
    input A;
    input B;
    output O;
	 wire A,B,O;
	 assign O = A | B;
endmodule
