module mux(I1,I2, S,Y);
parameter size = 4;
input [size - 1:0]I1, I2;
input S;
output reg [size-1:0]Y;
always @ (I1 or S or I2)
if (S==0) begin
Y = I1; end
else begin 
Y = I2; end
endmodule

