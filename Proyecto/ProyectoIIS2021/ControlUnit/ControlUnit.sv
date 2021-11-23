module ControlUnit (input logic [3:0] Cond,
						  input logic [1:0] Op,
						  input logic [6:0] Funct,
						  input logic [3:0] Rd,
						  output logic MemToReg,
						  output logic MemToWrite,
						  output logic [3:0] ALUControl,
						  output logic ALUSrc,
						  output logic [1:0] ImmSrc,
						  output logic [1:0] RegSrc,
						  output logic PCSrc,
						  output logic RegWrite);
						  

endmodule 