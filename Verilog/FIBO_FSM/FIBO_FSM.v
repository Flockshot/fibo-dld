module FIBO_FSM(START, CLK, RST, ZERO_FLAG, wrt_addr, wrt_en, clk, load_data, rd_addr1, rd_addr2, alu_opcode, DONE);

parameter size = 4;

input START, ZERO_FLAG, CLK, RST;

output [size-2:0] alu_opcode;
output [size-3:0] rd_addr1, rd_addr2, wrt_addr;
output clk, wrt_en, load_data, DONE;

wire [size-2:0] opcode;
wire [size-3:0] operand1, operand2;

FSM F1(START, ZERO_FLAG, CLK, RST, DONE, opcode, operand1, operand2);
FSM_DECO F2(opcode, operand1, operand2, alu_opcode, rd_addr1, rd_addr2, wrt_addr, wrt_en, load_data);

assign clk = CLK;

endmodule
