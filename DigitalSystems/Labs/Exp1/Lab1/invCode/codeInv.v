`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:05 01/28/2015 
// Design Name: 
// Module Name:    codeInv 
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
module codeInv(A, O);
    input A;
    output O;
	 wire A,O;
	 assign O = ~A;
endmodule
