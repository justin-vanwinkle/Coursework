`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:23 07/11/2015 
// Design Name: 
// Module Name:    mydecoder24vlog 
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
module mydecoder24vlog( en, in, out );
    input en;
    input [1:0] in;
    output [3:0] out;
	 reg out;
	 
	always begin
		if(en==1)
			case(in)
				2'b00: out = 4'b0001;
				2'b01: out = 4'b0010; 
				2'b10: out = 4'b0100; 
				2'b11: out = 4'b1000; 
			endcase
		else if(en==0)begin
			out = 4'b0000;
		end
	end

endmodule
