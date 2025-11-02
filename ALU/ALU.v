module ALU (A, B, opcode, D, zero_flag);
parameter size = 4;
input [size-1:0]A, B;
input [2:0]opcode;
output reg [size-1:0]D;
output reg zero_flag;
always @ (A, B, opcode)
if (opcode == 3'b001) begin
D = 1; end
else if (opcode == 3'b010) begin
D = A + 1; end
else if (opcode == 3'b011) begin
D = A - 1; end
else if (opcode == 3'b100) begin
D = A; end
else if (opcode == 3'b101) begin
D = A; end
else if (opcode == 3'b110) begin
D = A + B; end
else if (opcode == 3'b111) begin
D = B; end
always @ (D)
if (D) begin
zero_flag <= 0; end
else begin  
zero_flag <= 1; end
endmodule


