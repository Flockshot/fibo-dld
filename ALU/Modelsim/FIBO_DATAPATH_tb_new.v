module FIBO_DATAPATH_tb_new();
parameter   size=4;
reg         wrt_en,clk,load_data;
reg         [size-3:0]wrt_addr,rd_addr1,rd_addr2;
reg         [size-2:0]alu_opcode;
reg         [size-1:0]count;
wire        zero_flag;
wire        [size-1:0]data;

FIBO_DATAPATH DUT(wrt_addr,wrt_en,clk,load_data,rd_addr1,rd_addr2,alu_opcode,count,zero_flag,data);
  always begin
  clk=0; #50; 
  clk=1; #50; 
  end

initial
 begin
	wrt_addr=2'b00; wrt_en=1; load_data=1; rd_addr1=2'b00; rd_addr2=2'b00; alu_opcode=3'b001; count=4'b0001; #100;
  wrt_addr=2'b01; wrt_en=1; load_data=1; rd_addr1=2'b00; rd_addr2=2'b00; alu_opcode=3'b001; count=4'b0001; #100;
  wrt_addr=2'b10; wrt_en=1; load_data=1; rd_addr1=2'b00; rd_addr2=2'b00; alu_opcode=3'b001; count=4'b0001; #100;
  wrt_addr=2'b11; wrt_en=1; load_data=1; rd_addr1=2'b00; rd_addr2=2'b00; alu_opcode=3'b001; count=4'b0001; #100;
  wrt_addr=2'b01; wrt_en=1; load_data=0; rd_addr1=2'b00; rd_addr2=2'b11; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b10; wrt_en=1; load_data=0; rd_addr1=2'b01; rd_addr2=2'b00; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b11; wrt_en=1; load_data=0; rd_addr1=2'b10; rd_addr2=2'b01; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b00; wrt_en=1; load_data=0; rd_addr1=2'b11; rd_addr2=2'b10; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b01; wrt_en=1; load_data=0; rd_addr1=2'b00; rd_addr2=2'b11; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b10; wrt_en=1; load_data=0; rd_addr1=2'b01; rd_addr2=2'b00; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b11; wrt_en=1; load_data=0; rd_addr1=2'b10; rd_addr2=2'b01; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b00; wrt_en=1; load_data=0; rd_addr1=2'b11; rd_addr2=2'b10; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b01; wrt_en=1; load_data=0; rd_addr1=2'b00; rd_addr2=2'b11; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b10; wrt_en=1; load_data=0; rd_addr1=2'b01; rd_addr2=2'b00; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b11; wrt_en=1; load_data=0; rd_addr1=2'b10; rd_addr2=2'b01; alu_opcode=3'b110; count=4'b0001; #100;
  wrt_addr=2'b00; wrt_en=1; load_data=0; rd_addr1=2'b11; rd_addr2=2'b10; alu_opcode=3'b110; count=4'b0001; #100;
end
endmodule
