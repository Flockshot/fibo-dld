module FSM(START, ZERO_FLAG, CLK, RST, DONE, opcode, operand1, operand2);

parameter size = 4;

input START, ZERO_FLAG, CLK, RST;
output reg [size-2:0] opcode;
output reg [size-3:0] operand1, operand2;
output reg DONE;

reg [size-1:0] state, nextState;
parameter S0=0, S1=1, S2=2, S3=3, S4=4, S5=5, S6=6, S7=7, S8=8, S9=9, S10=10;

initial begin
	state <= S0;
	nextState <= S0;
end

always @(posedge CLK or posedge RST) begin

	if(RST)
		state <= S0;
	else
		state <= nextState;
end

always @(state) begin

	DONE = 0;
	opcode = 3'b000; 
	operand1 = 2'b00;
	operand2 = 2'b00;

	case(state)	
		S0: begin
			opcode = 3'b000;
		end
		S1: begin
			opcode = 3'b100;
			operand1 = 2'b00;				
		end
		S2: begin
			opcode = 3'b001;
			operand1 = 2'b01;
		end		
		S3: begin
			opcode = 3'b001;
			operand1 = 2'b10;
		end		
		S4: begin
			opcode = 3'b101;
			operand1 = 2'b00;
		end		
		S5: begin
			opcode = 3'b111;
			operand1 = 2'b11;
			operand2 = 2'b01;
		end		
		S6: begin
			opcode = 3'b110;
			operand1 = 2'b01;
			operand2 = 2'b10;
		end		
		S7: begin
			opcode = 3'b111;
			operand1 = 2'b10;
			operand2 = 2'b11;
		end		
		S8: begin
			opcode = 3'b011;
			operand1 = 2'b00;
		end		
		S9: begin
			opcode = 3'b101;
			operand1 = 2'b00;
		end		
		S10: begin
			DONE = 1;
		end
	endcase
end

always @(state or START or ZERO_FLAG) begin

	nextState = S0;
	
	case(state)
		S0: begin
			if(START)
				nextState = S1;
		end		
		S1: begin
			nextState = S2;
		end		
		S2: begin
			nextState = S3;
		end		
		S3: begin
			nextState = S4;
		end		
		S4: begin
			if(ZERO_FLAG)
				nextState = S1;
			else
				nextState = S5;
		end		
		S5: begin
			nextState = S6;
		end		
		S6: begin
			nextState = S7;
		end		
		S7: begin
			nextState = S8;
		end		
		S8: begin
			nextState = S9;
		end		
		S9: begin
			if(ZERO_FLAG)
				nextState = S10;
			else
				nextState = S5;
		end		
		S10: begin
			nextState = S10;
		end
	endcase
end
endmodule
