module CU_tb ();
		logic [3:0] Cond, ALUFlags, Rd;
		logic [1:0] Op, ImmSrc, RegSrc, ALUControl, FlagW;
		logic [5:0] Funct;
		logic MemToReg, MemToWrite, ALUSrc, PCSrc, RegWrite, MemWrite;
						  
		ControlUnit CU(Cond, ALUFlags, Op, Funct, Rd, MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);
		
		logic [31:0] instruccion = 32'b11100011101000000001000000000000;
		
		initial 
		begin
		11100100100000010011000000000100;
		Cond = instruccion [31:28];
		ALUFlags = 4'b0000;
		Op = instruccion [27:26];
		Funct = instruccion [25:20];
		Rd = instruccion [15:12]; 
		end

endmodule 