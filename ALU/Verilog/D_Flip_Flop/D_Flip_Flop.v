module D_Flip_Flop(D, Clk, Q);

parameter size = 4;

input [size-1:0] D;
input Clk;
output reg [size-1:0] Q;


always @(posedge Clk)
	Q <= D;
	
endmodule
