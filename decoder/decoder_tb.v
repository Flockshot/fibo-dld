module decoder_tb();
  reg   [1:0]I;
  wire  [3:0]O;
  
  decoder DUT(I,O);
  initial 
  begin
    I=2'b00; #100;
    I=2'b01; #100;
    I=2'b10; #100;
    I=2'b11; #100;
    
  end
endmodule
  



