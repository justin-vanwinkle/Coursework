module button_binary(
    input clock,
    input reset,
  input button,
    output led,
    output led2,
    output led3,
    output led4,
    output led5,
    output led6,
    output led7,
    output led8
    );
parameter width = 32;
reg [width-1:0]count;
 
always @ (posedge clock or posedge reset)
 begin
  if (reset)
   count <= 0;
  else if (clock)
   count <= count + 1;
 end
  
assign led = count[width-8];
assign led2 = count[width-7];
assign led3 = count[width-6];
assign led4 = count[width-5];
assign led5 = count[width-4];
assign led6 = count[width-3];
assign led7 = count[width-2];
assign led8 = count[width-1];
 
 
endmodule
