module FIBO_DATAPATH(wrt_addr, wrt_en, clk, load_data, rd_addr1, rd_addr2, alu_opcode, count, zero_flag, data);

parameter size = 4;

input [size-3:0] wrt_addr, rd_addr1, rd_addr2;
input [size-2:0] alu_opcode;
input [size-1:0] count;
input wrt_en, clk, load_data;

output [size-1:0] data;
output zero_flag;

wire [size-1:0] decoder_out, And_out, Mux_Enable_out, Mux0, Mux1, Mux2, Mux3, Mux4, FF1, FF2, FF3, FF4, Mux5, Mux6, Alu_out;

Decoder_2_To_4 D1(wrt_addr, decoder_out);

and A1(And_out[0], decoder_out[0], wrt_en);
and A2(And_out[1], decoder_out[1], wrt_en);
and A3(And_out[2], decoder_out[2], wrt_en);
and A4(And_out[3], decoder_out[3], wrt_en);

Four_Bit_2_To_1_Mux M0(data, count, load_data, Mux0);

//muxes
Four_Bit_2_To_1_Mux M1(FF1, Mux0, And_out[0], Mux1);
Four_Bit_2_To_1_Mux M2(FF2, Mux0, And_out[1], Mux2);
Four_Bit_2_To_1_Mux M3(FF3, Mux0, And_out[2], Mux3);
Four_Bit_2_To_1_Mux M4(FF4, Mux0, And_out[3], Mux4);

D_Flip_Flop F1(Mux1, clk, FF1);
D_Flip_Flop F2(Mux2, clk, FF2);
D_Flip_Flop F3(Mux3, clk, FF3);
D_Flip_Flop F4(Mux4, clk, FF4);

Four_Bit_4_To_1_Mux M01(FF1, FF2, FF3, FF4, rd_addr1, Mux5);
Four_Bit_4_To_1_Mux M02(FF1, FF2, FF3, FF4, rd_addr2, Mux6);

ALU AL1(Mux5, Mux6, alu_opcode, zero_flag, Alu_out);

D_Flip_Flop F5(Alu_out, clk, data);

endmodule
