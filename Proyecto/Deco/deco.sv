module deco_tb();
	
		logic [31:0] instruccion;
		
		logic [3:0] cond,
		logic [1:0] op,
		logic I,
		logic [3:0] opCode,
		logic P,
		logic U,
		logic B,
		logic W,								
		logic S_L,
		logic [3:0] Rn,
		logic [3:0] Rd,
		logic [11:0] operand_offset);