module Procesador (clk, rst, start);

//Cambios:
PC iPC (start, clk, rst, branch && zeroFlag, PCp4, PCBranch, dirIntruction); //Por hacer

//Cambios:
IntructionMemory iIM (dirIntruction, clk, intruction); //Llama el modulo ROM // Prieto

//Se hicieron los ajustes para Branch
deco iDI (instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rn, Rd, Operand2, OffsetSTD, OffsetBranch); // Listo Martinez 

//Cambios
RegisterFile iRF (clk, rst, we_RF, rm, rn, rd, WD3, RD1, RD2); //Mariano En Progreso

//Cambios:
MUX iMux1 (ena_mux1, RD2, SignImm, scrMux1); //Por hacer

//Cambios:
ALU(alu_opCode, RD1, acrMux1, aluResult, zeroFlag); // Lista Martinez

//Cambios:
MemoryData (clk, dirData, aluResult, writeData, we_RAM, dataOut); //Llama el modulo RAM //Prieto

//Cambios:
MUX iMux2 (ena_mux2, dataOut, aluResult, WD3); //Por hacer

//Cambios:
SignExt iSE (offset, SignImm); // Prieto en Progreso

//Cambios:
ShiftLeft iSL (SignImm, SignImm2); //Por hacer

//Cambios: 
Sumador iPB (SignImm2, PCp4, PCBranch); //Por hacer

//Cambios:
Sumador iPCp4 (dirIntruction, 3'd4, PCp4); //Por hacer

//Cambios:
ControlUnit iCU (cond, opCode, ena_mux2, we_RAM, branch, alu_opCode, ena_mux1, we_RF) //Por hacer

endmodule
