module deco_tb();
	
		logic [31:0] instruccion;
		
		logic [3:0] cond;
		logic [1:0] op;
		logic I;
		logic [3:0] opCode;
		logic P;
		logic U;
		logic B;
		logic W;								
		logic S_L;
		logic [3:0] Rn;
		logic [3:0] Rd;
		logic [11:0] operand_offset;
		
		
		deco d1(instruccion, cond, op, I, opCode, P, U, B, W, S_L, Rn, Rd, operand_offset);
		
		
		initial begin
			#2
			//Caso Data Processing  
			instruccion = 32'b10000011000110001000111111111111;
			#2
			//Caso Single Data Transfer
			instruccion = 32'b10000100111110001000111000011111;
		end
		
endmodule 