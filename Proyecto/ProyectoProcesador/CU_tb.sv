module CU_tb ();
        logic [31:0] instruccion;
        logic [3:0] Cond, ALUFlags, Rd;
        logic [1:0] Op, ImmSrc, RegSrc, ALUControl, FlagW;
        logic [5:0] Funct;
        logic MemToReg, MemToWrite, ALUSrc, PCSrc, RegWrite, MemWrite;

        ControlUnit CU(Cond, ALUFlags, Op, Funct, Rd, MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);

        initial 
        begin
		  //Data Processing
		  // 1110 01 001000 0001 0011 000000000100
		  instruccion = 32'b11100100100000010011000000000100;
        Cond = instruccion [31:28]; //1110
        ALUFlags = 4'b0000; 
        Op = instruccion [27:26]; //01
        Funct = instruccion [25:20]; //001000
        Rd = instruccion [15:12]; //0011
		  #20; 
		  
		  //Memory
		  // 1110 01 011001 0100 1001 000000010000
		  instruccion = 32'b11100101100101001001000000010000;
        Cond = instruccion [31:28]; //1110
        ALUFlags = 4'b0000; 
        Op = instruccion [27:26]; //01
        Funct = instruccion [25:20]; //011001
        Rd = instruccion [15:12]; //1001
		  #20; 		
		  
		  //Branch
		  // 1011 10 100000 0000 0000 000000000011
        instruccion = 32'b10111010000000000000000000000011;
        Cond = instruccion [31:28]; //1011
        ALUFlags = 4'b0000; 
        Op = instruccion [27:26]; //10
        Funct = instruccion [25:20]; //100000
        Rd = instruccion [15:12]; //0000
		  #20; 
        end

endmodule 