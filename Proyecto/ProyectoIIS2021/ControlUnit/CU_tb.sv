module CU_tb ();
		logic [3:0] Cond, ALUFlags, Rd;
		logic [1:0] Op, ImmSrc, RegSrc, ALUControl, FlagW;
		logic [5:0] Funct;
		logic MemToReg, MemToWrite, ALUSrc, PCSrc, RegWrite, MemWrite;
		logic [31:0] instruccion;
						  
		ControlUnit CU(instruccion [31:28], 4'b0000, instruccion [27:26], instruccion [25:20], [15:12], MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);
		
		
		
		initial 
		begin
		32'b11100100100000010011000000000100;#20;
		32'b11100011101000000001000000000000;#20;
		
	
		end

endmodule 