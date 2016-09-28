`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:14 07/23/2015 
// Design Name: 
// Module Name:    code 
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
module code(input D, input Clk, output reg [1:0] Q);

	always @ (posedge Clk)
		if(Clk)begin
			Q[1] <= D;
			Q[0] <= ~D;
		end 

endmodule
