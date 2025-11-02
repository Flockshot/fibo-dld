module Dflip (Q, D, Clk);
parameter size = 4;
output reg [size-1:0]Q;
input Clk;
input [size-1:0]D;
always @ ( posedge Clk)
Q <= D;
endmodule

