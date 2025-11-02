module FIBO_CALUCLATOR_TB();
  parameter size = 4;

  reg [size-1:0] COUNT;
  reg START, CLK, RST;

  wire [size-1:0] DATA;
  wire DONE;
  
  FIBO_CALCULATOR DUT(START, CLK, RST, COUNT, DONE, DATA);
  
  always begin
      CLK = 0; #50;
      CLK = 1; #50;
  end
  
  initial begin
    START = 1; RST = 0; COUNT = 4'b0101; #3000;
    START = 1; RST = 1; COUNT = 4'b0111; #200;
    START = 1; RST = 0; COUNT = 4'b0111; #100;
  end
  
endmodule