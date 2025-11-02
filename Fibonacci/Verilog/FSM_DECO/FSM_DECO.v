module FSM_DECO(opcode, operand1, operand2, alu_opcode, rd_addr1, rd_addr2, wrt_addr, wrt_en, load_data);

parameter size = 4;

input [size-2:0] opcode;
input [size-3:0] operand1, operand2;

output reg [size-2:0] alu_opcode;
output reg [size-3:0] rd_addr1, rd_addr2, wrt_addr;
output reg wrt_en, load_data;

always @(opcode or operand1 or operand2) begin
	
	alu_opcode = opcode;
	wrt_addr = operand1;
	rd_addr1 = operand1;
	rd_addr2 = operand2;
	wrt_en = 1;
	load_data = 0;
	
	if(opcode == 3'b000 || opcode == 3'b101)
		wrt_en = 0;
	if(opcode == 3'b100)
		load_data = 1;
		
end
endmodule
