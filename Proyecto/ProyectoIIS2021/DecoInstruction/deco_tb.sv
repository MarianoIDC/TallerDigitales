module deco_tb();
		logic [31:0] instruccion;
		output logic [3:0] Cond,
		output logic [1:0] Op,
		output logic I,
		output logic Uno
		output logic [3:0] OpCode,
		output logic P,
		output logic U,
		output logic B,
		output logic W,								
		output logic S,
		output logic L1,	
		output logic L2,	
		output logic [3:0] Rn, 
		output logic [3:0] Rd,  
		output logic [11:0] Operand2,
		output logic [11:0] OffsetSTD,
		output logic [23:0] OffsetBranch);
				
		deco d1(instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rn, Rd, Operand2, OffsetSTD, OffsetBranch);
				
		initial begin
			#2
			//Data Processing  
			instruccion = 32'b10000011000110001000111111111111;
			#2
			//Single Data Transfer
			instruccion = 32'b10000100111110001000111000011111;
			#2
			//Branch
			instruccion = 32'b10001010111110001000111000011111;
		end
		
endmodule 