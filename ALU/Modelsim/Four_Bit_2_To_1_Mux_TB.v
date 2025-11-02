module Four_Bit_2_To_1_TB();
        
  parameter size = 4;
  
  reg [size-1:0] A, B;
  reg S;
  wire [size-1:0] Y;
  
  Four_Bit_2_To_1_Mux DUT(A, B, S, Y);
  
  initial begin
    A = 4'b0000; B = 4'b1000; S = 1'b0; #100;
    A = 4'b0001; B = 4'b1001; S = 1'b1; #100;
    A = 4'b0010; B = 4'b1010; S = 1'b0; #100;
    A = 4'b0011; B = 4'b1011; S = 1'b1; #100;
    A = 4'b0100; B = 4'b1100; S = 1'b0; #100;
    A = 4'b0101; B = 4'b1101; S = 1'b1; #100;
    A = 4'b0110; B = 4'b1110; S = 1'b0; #100;
    A = 4'b0111; B = 4'b1111; S = 1'b1; #100;
  end
  
endmodule