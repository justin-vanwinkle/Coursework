`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:16 06/29/2015 
// Design Name: 
// Module Name:    Exp5code 
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
module Exp5code(S,O);
    input [3:0] S;
    output O;
	 reg O;
	
	always @(S) begin
		if(S==3||S==7||S==11||S==13||S==15)
			O=1;
		
			O=0;
	end
endmodule
