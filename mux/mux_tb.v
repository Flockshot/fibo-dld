module mux_tb();
  parameter   size=4;
  reg         [size-1:0]I1,I2;
  reg         S;
  wire        [size-1:0]Y;
  
  mux DUT(I1,I2,S,Y);
  initial 
  begin
    I1=4'b0100; I2=4'b0010; S=1'b0; #100;
    I1=4'b0110; I2=4'b1100; S=1'b1; #100;
  end
endmodule
  

