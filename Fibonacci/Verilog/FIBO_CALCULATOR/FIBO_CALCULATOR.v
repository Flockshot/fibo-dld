module FIBO_CALCULATOR(START, CLK, RST, COUNT, DONE, DATA);

parameter size = 4;

input [size-1:0] COUNT;
input START, CLK, RST;

output [size-1:0] DATA;
output DONE;

wire [size-2:0] alu_opcode;
wire [size-3:0] rd_addr1, rd_addr2, wrt_addr;
wire clk, wrt_en, load_data;
wire zero_flag;

FIBO_FSM F1(START, CLK, RST, zero_flag, wrt_addr, wrt_en, clk, load_data, rd_addr1, rd_addr2, alu_opcode, DONE);
FIBO_DATAPATH D1(wrt_addr, wrt_en, clk, load_data, rd_addr1, rd_addr2, alu_opcode, COUNT, zero_flag, DATA);

endmodule
