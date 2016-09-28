
`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:53 07/12/2015 
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
module mydecoder24vlog(en, in, out);
    input en;
    input [1:0] in;
    output [3:0] out;
	 reg [3:0] out;
	 
	always@(in[0] or in[1] or en)begin
		if(en == 1)
			case(in)
				2'b00: out = 4'b0001;
				2'b01: out = 4'b0010; 
				2'b10: out = 4'b0100; 
				2'b11: out = 4'b1000; 
			endcase
		else begin
			out = 4'b0000;
		end
	end

endmodule
