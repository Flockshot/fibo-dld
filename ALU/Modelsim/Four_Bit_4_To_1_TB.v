module Four_Bit_4_To_1_TB();
        
  parameter size = 4;
  
  reg [size-1:0] A, B, C, D;
  reg [size-3:0] S;
  wire [size-1:0] Y;
  
  Four_Bit_4_To_1_Mux DUT(A, B, C, D, S, Y);
  
  initial begin
    A = 4'b0000; B = 4'b1000; C = 4'b0010; D = 4'b0100; S = 2'b00; #100;
    A = 4'b0001; B = 4'b1001; C = 4'b0011; D = 4'b0101; S = 2'b01; #100;
    A = 4'b0010; B = 4'b1010; C = 4'b0100; D = 4'b0110; S = 2'b10; #100;
    A = 4'b0011; B = 4'b1011; C = 4'b0101; D = 4'b0111; S = 2'b11; #100;
    A = 4'b0100; B = 4'b1100; C = 4'b0110; D = 4'b1000; S = 2'b00; #100;
    A = 4'b0101; B = 4'b1101; C = 4'b0111; D = 4'b1001; S = 2'b01; #100;
    A = 4'b0110; B = 4'b1110; C = 4'b1000; D = 4'b1010; S = 2'b10; #100;
    A = 4'b0111; B = 4'b1111; C = 4'b1001; D = 4'b1011; S = 2'b11; #100;
  end
  
endmodule
