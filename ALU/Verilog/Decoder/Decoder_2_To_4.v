module Decoder_2_To_4(Input, Output);

parameter size = 4;

input [size-3: 0] Input;
output reg [size-1:0] Output;



always @(Input) begin

	if(Input == 2'b00) begin
		Output = 4'b0001;
		end
	else if(Input == 2'b01) begin
		Output = 4'b0010;
		end
	else if(Input == 2'b10) begin
		Output = 4'b0100;
		end
	else if(Input == 2'b11) begin
		Output = 4'b1000;
		end
end

endmodule
