module Decoder_2_To_4_TB();
        
  parameter size = 4;
  
  reg [size-3:0] Input;
  wire [size-1:0] Output;
  
  Decoder_2_To_4 DUT(Input, Output);
  
  initial begin
    Input = 2'b00; #100;
    Input = 2'b01; #100;
    Input = 2'b10; #100;
    Input = 2'b11; #100;

  end
  
endmodule
