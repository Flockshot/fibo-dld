module decoder (I, O);
parameter size = 4;
input [size-3:0]I;
output reg [size-1:0]O;
always @ (I)
if (I == 2'b00) begin
O = 4'b0001; end
else if (I == 2'b01) begin
O = 4'b0010; end
else if (I == 2'b10) begin
O = 4'b0100; end
else begin
O = 4'b1000; end
endmodule

