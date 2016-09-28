`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:11 01/21/2015 
// Design Name: 
// Module Name:    part3sch 
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
module part3sch(O, A, B);
    output O;
    input A;
    input B;
    wire A,B,O;
	 assign O = A & B;
endmodule
