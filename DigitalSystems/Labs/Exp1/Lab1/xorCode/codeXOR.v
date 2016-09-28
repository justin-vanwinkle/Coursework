`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:13 01/28/2015 
// Design Name: 
// Module Name:    codeXOR 
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
module codeXOR(A, B, O);
    input A;
    input B;
    output O;
	 wire A,B,O;
	 assign O = A ^ B;
endmodule
