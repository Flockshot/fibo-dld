module mux4to1(I1, I2, I3, I4, S, Y);
parameter size = 4;
input [size-1:0]I1, I2, I3, I4;
output reg [size-1:0]Y;
input [1:0]S;
always @ (I1, I2, I3, I4, S)
if (S == 2'b00) begin
Y = I1; end
else if (S==2'b01) begin
Y = I2; end
else if (S == 2'b10) begin
Y = I3; end
else begin
Y = I4; end
endmodule


