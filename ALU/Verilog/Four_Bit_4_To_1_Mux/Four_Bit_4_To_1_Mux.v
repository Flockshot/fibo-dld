module Four_Bit_4_To_1_Mux(A, B, C, D, S, Y);

parameter size = 4;

input [size-1:0] A, B, C, D;
input [size-3:0] S;

output reg [size-1:0] Y;


always @(A or B or C or D or S)

	if(S == 2'b00) begin
		Y = A;
		end
	else if(S == 2'b01) begin
		Y = B;
		end
	else if(S == 2'b10) begin
		Y = C;
		end
	else begin
		Y = D;
		end
	
endmodule

