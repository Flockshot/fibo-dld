module Four_Bit_2_To_1_Mux(A, B, S, Y);

parameter size = 4;

input [size-1:0] A, B;
input S;

output reg [size-1:0] Y;

integer i;

always @(A or B or S)

	for(i=0; i<size; i=i+1) begin: Four_Bit_2_To_1_Mux
		Y[i] = A[i] & ~S | B[i] & S;
	end

endmodule

