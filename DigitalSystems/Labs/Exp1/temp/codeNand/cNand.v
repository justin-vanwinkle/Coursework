`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:08 01/21/2015 
// Design Name: 
// Module Name:    cNand 
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
module cNand(O, A, B);
    output O;
    input A;
    input B;
	 wire A,B,O;
	 assign O = ~(A & B);
endmodule
