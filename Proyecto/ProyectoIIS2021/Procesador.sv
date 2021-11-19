module Procesador (clk, rst, start);


PC iPC (start, clk, rst, branch && zeroFlag, PCp4, PCBranch, dirIntruction);

IntructionMemory iIM (dirIntruction, clk, intruction); //Llama el modulo ROM // Prieto

DecoIntruction iDI (intruction, cond, opCode, rm, rn, rd, offset); // Martinez En Progreso

RegisterFile iRF (clk, rst, we_RF, rm, rn, rd, WD3, RD1, RD2); //Mariano En Progreso

MUX iMux1 (ena_mux1, RD2, SignImm, scrMux1);

ALU(alu_opCode, RD1, acrMux1, aluResult, zeroFlag); // Lista Martinez

MemoryData (clk, dirData, aluResult, writeData, we_RAM, dataOut); //Llama el modulo RAM //Prieto

MUX iMux2 (ena_mux2, dataOut, aluResult, WD3); //Por hacer

SignExt iSE (offset, SignImm); // Prieto en Progreso

ShiftLeft iSL (SignImm, SignImm2) //Por hacer

Sumador iPB (SignImm2, PCp4, PCBranch); //Por hacer

Sumador iPCp4 (dirIntruction, 3'd4, PCp4); //Por hacer

endmodule
