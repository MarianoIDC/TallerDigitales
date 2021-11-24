module Procesador (clk, rst, start);

input logic clk, rst, start;

parameter N = 8;

logic [3:0] Cond, OpCode;
logic [1:0] Op;
logic I, Uno,P,U,B,W,S,L1,L2;
logic [3:0] Rn, Rd;
logic [11:0] Operand2;
logic [11:0] OffsetSTD;
logic [23:0] OffsetBranch;
logic [N - 1:0] dirIntruction;

//Cambios: 
//start, clk, rst, PCp4, PCBranch, dirIntruction
PC #(8) iPC (start, clk, rst, dirIntruction); 
InstructionMemory iIM (dirIntruction, clk, instruccion); 
InstructionDeco iDI (instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rm, Rn, Rd, Operand2, OffsetSTD, OffsetBranch); 
Mux2to1 #(4) iMux1 (1'b1, Rn, 4'b1111, A1);
Mux2to1 #(4) iMux2 (Rd, Rm, A2);
RegisterFile iRF (clk, rst, we_RF, A2, A1, rd, WD3, RD1, RD2);

//Cambios:
//MUX iMux1 (ena_mux1, RD2, SignImm, scrMux1); //Por hacer

//Cambios:
//ALU(alu_opCode, RD1, acrMux1, aluResult, zeroFlag); // Lista Martinez

//Cambios:
//MemoryData (clk, dirData, aluResult, writeData, we_RAM, dataOut); //Llama el modulo RAM //Prieto

//Cambios:
//MUX iMux2 (ena_mux2, dataOut, aluResult, WD3); //Por hacer

//Cambios:
//SignExt iSE (offset, SignImm); // Listo Prieto

//Cambios:
//ShiftLeft iSL (SignImm, SignImm2); //Por hacer

//Cambios: 
//Sumador iPB (SignImm2, PCp4, PCBranch); //Por hacer

//Cambios:
//Sumador iPCp4 (dirIntruction, 3'd4, PCp4); //Por hacer

//Cambios:
//ControlUnit iCU (cond, opCode, ena_mux2, we_RAM, branch, alu_opCode, ena_mux1, we_RF); //Por hacer

endmodule