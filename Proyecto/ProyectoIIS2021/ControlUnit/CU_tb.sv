module CU_tb ();
		logic [3:0] Cond, ALUFlags, Rd;
		logic [1:0] Op, ImmSrc, RegSrc, ALUControl, FlagW;
		logic [5:0] Funct;
		logic MemToReg, MemToWrite, ALUSrc, PCSrc, RegWrite, MemWrite;
						  
		ControlUnit CU(Cond, ALUFlags, Op, Funct, Rd, MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);
				
		initial 
		begin
		#10
		Cond = 4'b1110;
		#10
		ALUFlags = 4'b000;
		#10
		Op = 2'b00;
		#10
		Funct = 6'b111010;
		#10
		Rd = 4'b0000; 
		end

endmodule 