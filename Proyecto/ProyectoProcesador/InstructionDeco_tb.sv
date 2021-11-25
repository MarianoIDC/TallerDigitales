module InstructionDeco_tb ();

		logic [31:0] instruccion;
		logic [3:0] Cond, OpCode, Rm, Rn, Rd;
		logic [1:0] Op;
		logic I, Uno, P, U, B, W, S, L1, L2;
		logic [11:0] Operand2, OffsetSTD;
		logic [23:0] OffsetBranch;
		
		InstructionDeco deco(instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rm, Rn, Rd, Operand2, OffsetSTD, OffsetBranch); 
		
      initial 
      begin
		//Data Processing
		instruccion = 32'b11100000010001110101000000000001;
		#20;
		
		//Memory
		instruccion = 32'b11100101100101001001000000010000;
		#20;
		
		//Branch
		instruccion = 32'b10111010000000000000000000000011;
		#20;
		end
		
endmodule 