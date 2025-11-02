module FSM_DECO_TB();
  
  parameter size = 4;

  reg [size-2:0] opcode;
  reg [size-3:0] operand1, operand2;

  wire [size-2:0] alu_opcode;
  wire [size-3:0] rd_addr1, rd_addr2, wrt_addr;
  wire wrt_en, load_data;

  FSM_DECO DUT(opcode, operand1, operand2, alu_opcode, rd_addr1, rd_addr2, wrt_addr, wrt_en, load_data);
  
  initial begin
    opcode = 3'b000; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b001; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b010; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b011; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b100; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b101; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b110; operand1 = 2'b00; operand2 = 2'b01; #100;
    opcode = 3'b111; operand1 = 2'b00; operand2 = 2'b01; #100;
  
  end  
endmodule
  
  
