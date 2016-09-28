`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:52 07/12/2015 
// Design Name: 
// Module Name:    mydecoder38vlog 
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
module mydecoder38vlog( in, out );
    input [2:0] in;
    output [7:0] out;
	 wire inv;
	 
		//not inverter0(wire1, in[2]);
		mydecoder24vlog decoder1 (in[2], in[1:0], out[7:4]);
		mydecoder24vlog decoder0 (~in[2], in[1:0], out[3:0]);
	
endmodule
