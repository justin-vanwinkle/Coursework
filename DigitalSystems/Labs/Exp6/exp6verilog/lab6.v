`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:58:39 07/12/2015 
// Design Name: 
// Module Name:    lab6 
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
module lab6(
    input [2:0] in,
    output [7:0] out
	 );
	 

		mydecoder38vlog decoder(in[2:0], out[7:0]);

	
endmodule
