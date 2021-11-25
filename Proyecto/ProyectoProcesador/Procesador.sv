module Procesador (clk, rst, start, dirIntruction, RD1, RD2, instruccion, Rn, Rd, Rm, A1, A2, registerBank, dataOut, aluResult, MemToReg, ALUSrc, PCSrc, RegWrite, MemWrite, ALUControl, ImmSrc, RegSrc);

input logic clk, rst, start;

logic [3:0] Cond, OpCode, ALUFlags;
logic [1:0] Op;
logic I, Uno, P, U, B, W, S, L1, L2;
output logic [3:0] Rn, Rd, Rm, A1, A2;
logic [3:0] rd;
logic [11:0] Operand2;
logic [11:0] OffsetSTD;
logic [23:0] OffsetBranch;
output logic [10:0] dirIntruction;
output logic [31:0] RD1, RD2, dataOut, aluResult;
logic [31:0] WD3, writeData = 32'b1, scrMuxAlu;


output logic [31:0] instruccion;
output logic [31:0]registerBank[14:0];

//Pruebas////////////////////////
output logic MemToReg, ALUSrc, PCSrc, RegWrite, MemWrite;
output logic [1:0] ALUControl, ImmSrc, RegSrc; 
/////////////////////////////////



//Cambios: 
//start, clk, rst, PCp4, PCBranch, dirIntruction
PC iPC (start, clk, rst, dirIntruction); 
InstructionMemory iIM (dirIntruction[7:0], clk, instruccion); 
InstructionDeco iDI (instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rm, Rn, Rd, Operand2, OffsetSTD, OffsetBranch); 
Mux2to1 #(4) iMux1 (1'b1, Rn, 4'b1111, A1);
Mux2to1 #(4) iMux2 (1'b1, Rd, Rm, A2);
//clk, rst, we_RF, A2, A1, rd, WD3, RD1, RD2, registerBank
RegisterFile iRF (clk, rst, 1'b0, A2, A1, Rd, dataOut, RD1, RD2, registerBank);

//Cambios:
Mux2to1 #(32) iMux3 (1'b1, RD2, SignImm, scrMuxAlu); //Por hacer

//Cambios:
ALU alu(RD1, scrMuxAlu, Op, aluResult, ALUFlags); // Lista Martinez

//Cambios:
DataMemory iDM (dirIntruction, clk, writeData, 1'b0, dataOut); //Llama el modulo RAM //Prieto

//Cambios:
//MUX iMux2 (ena_mux2, dataOut, aluResult, WD3); //Por hacer

//Cambios:
SignExt iSE (instruccion [23:0], SignImm); // Listo Prieto

//Cambios:
//ShiftLeft iSL (SignImm, SignImm2); //Por hacer

//Cambios: 
//Sumador iPB (SignImm2, PCp4, PCBranch); //Por hacer

//Cambios:
//Sumador iPCp4 (dirIntruction, 3'd4, PCp4); //Por hacer

//Cambios:
ControlUnit CU(Cond, ALUFlags, Op, {I, P, B, W, S, L1}, Rd, MemToReg, ALUControl, ALUSrc, ImmSrc, RegSrc, PCSrc, RegWrite, MemWrite);

endmodule
