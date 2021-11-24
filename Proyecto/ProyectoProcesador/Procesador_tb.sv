`timescale 1 ns / 1 ps
module Procesador_tb();



logic clk=0;
logic rst, start;
logic [31:0] dirIntruction;
logic [31:0] RD1, RD2, instruccion;
logic [3:0] Rn, Rd, Rm, A1, A2;
logic [14:0]registerBank[31:0];

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
			.registerBank(registerBank)
			);


initial begin

start = 1'b1; #50;
rst = 1'b1;#10;
rst = 1'b0;#10;
start = 1'b0;


end



endmodule
