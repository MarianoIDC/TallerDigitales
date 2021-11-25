`timescale 1 ns / 1 ps
module Procesador_tb();



logic clk=0;
logic rst, start;
logic [31:0] RD1, RD2, instruccion, dirIntruction, dataOut, aluResult;
logic [3:0] Rn, Rd, Rm, A1, A2;
logic [31:0]registerBank[14:0];

always #10 clk = ~clk;

Procesador iProc (
			.clk(clk), 
			.rst(rst), 
			.start(start), 
			.dirIntruction(dirIntruction), 
			.RD1(RD1), 
			.RD2(RD2), 
			.instruccion(instruccion),
			.Rn(Rn), 
			.Rd(Rd), 
			.Rm(Rm), 
			.A1(A1), 
			.A2(A2), 
			.registerBank(registerBank),
			.dataOut(dataOut),
			.aluResult(aluResult)
			);


initial begin

start = 1'b1;
rst = 1'b0;#10;



end



endmodule
