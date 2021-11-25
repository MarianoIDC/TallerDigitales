module Procesador (clk, rst, start, dirIntruction, RD1, RD2, instruccion, Rn, Rd, Rm, A1, A2, registerBank, dataOut);

input logic clk, rst, start;

logic [3:0] Cond, OpCode;
logic [1:0] Op;
logic I, Uno,P,U,B,W,S,L1,L2;
output logic [3:0] Rn, Rd, Rm, A1, A2;
logic [3:0] rd;
logic [11:0] Operand2;
logic [11:0] OffsetSTD;
logic [23:0] OffsetBranch;
output logic [7:0] dirIntruction;
output logic [31:0] RD1, RD2, dataOut;
logic [31:0] WD3 = 32'b1, writeData = 32'b1;


output logic [31:0] instruccion;
output logic [14:0]registerBank[31:0];

//Cambios: 
//start, clk, rst, PCp4, PCBranch, dirIntruction
PC iPC (start, clk, rst, dirIntruction); 
InstructionMemory iIM (dirIntruction, clk, instruccion); 
InstructionDeco iDI (instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rm, Rn, Rd, Operand2, OffsetSTD, OffsetBranch); 
Mux2to1 #(4) iMux1 (1'b1, Rn, 4'b1111, A1);
Mux2to1 #(4) iMux2 (1'b1, Rd, Rm, A2);
//clk, rst, we_RF, A2, A1, rd, WD3, RD1, RD2, registerBank
RegisterFile iRF (clk, rst, 1'b1, A2, A1, Rd, dataOut, RD1, RD2, registerBank);

//Cambios:
//MUX iMux1 (ena_mux1, RD2, SignImm, scrMux1); //Por hacer

//Cambios:
//ALU(alu_opCode, RD1, acrMux1, aluResult, zeroFlag); // Lista Martinez

//Cambios:
DataMemory iDM (dirIntruction, clk, writeData, 1'b0, dataOut); //Llama el modulo RAM //Prieto

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
