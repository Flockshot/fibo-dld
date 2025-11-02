module FIBO_FSM_TB();
  
  parameter size = 4;

  reg START, ZERO_FLAG, CLK, RST;
  wire [size-2:0] alu_opcode;
  wire [size-3:0] rd_addr1, rd_addr2, wrt_addr;
  wire clk, wrt_en, load_data, DONE;

  FIBO_FSM DUT(START, CLK, RST, ZERO_FLAG, wrt_addr, wrt_en, clk, load_data, rd_addr1, rd_addr2, alu_opcode, DONE);

  
  always begin
      CLK = 0; #50;
      CLK = 1; #50;
  end
  
  initial begin
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 1; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 1; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 1; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 1; #100;
    
    START = 1; ZERO_FLAG = 0; RST = 0; #100;
    START = 0; ZERO_FLAG = 0; RST = 0; #100;   
  end  
endmodule
  
  

