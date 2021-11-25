module ControlUnit (input logic [3:0] Cond,
						  input logic [3:0] ALUFlags,
						  input logic [1:0] Op,
						  input logic [5:0] Funct,
						  input logic [3:0] Rd,
						  output logic MemToReg,
						  output logic [1:0] ALUControl,
						  output logic ALUSrc,
						  output logic [1:0] ImmSrc,
						  output logic [1:0] RegSrc,
						  output logic PCSrc,
						  output logic RegWrite,
						  output logic MemWrite);
		
		logic [1:0] FlagW;
		logic Branch, MemW, RegW, ALUOp, CondEx;
		
		CU_MainDecoder MD(Op, Funct, Branch, MemToReg, MemW, ALUSrc, ImmSrc, RegW, RegSrc, ALUOp);
		CU_ALUDecoder AD(Funct, ALUOp, ALUControl, FlagW);
		CU_PCLogic PCL(Branch, RegW, Rd, PCS);
		CU_ConditionCheck CC(Cond, ALUFlags, CondEx);
		CU_AND CUand(PCS, RegW, MemW, FlagW, CondEx, PCSrc, RegWrite, MemWrite);
						  

endmodule 