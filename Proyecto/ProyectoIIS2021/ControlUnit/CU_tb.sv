module CU_tb ();
		logic [31:0] instruccion;

		logic [3:0] Cond = instruccion [31:28];
		logic [3:0] ALUFlags = 4'b0000;
		logic [3:0] Rd = instruccion [15:12];
		logic [1:0] Op = instruccion [27:26]; 
		logic [1:0] ImmSrc, RegSrc, ALUControl, FlagW;
		logic [5:0] Funct = instruccion [25:20];
		logic MemToReg, MemToWrite, ALUSrc, PCSrc, RegWrite, MemWrite;
		

		ControlUnit CU(Cond, ALUFlags, Op, Funct, Rd, MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);
				
		initial 
		begin
			instruccion = 32'b11100100100000010011000000000100;#20
			instruccion = 32'b11100011101000000001000000000000;#20
		end

endmodule 