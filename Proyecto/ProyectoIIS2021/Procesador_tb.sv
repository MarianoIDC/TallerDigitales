module Procesador_tb();

logic clk, rst, I, Uno, P, U, B, W, S, L1, L2, we_RF;
logic [7:0] address;
logic [31:0] instruccion, WD3, RD1, RD2;
logic [1:0] Op;
logic [14:0] registerBank;		
logic [3:0] Rn, Rm, Rd, OpCode, Cond;  
logic [11:0] Operand2, OffsetSTD;
logic [23:0] OffsetBranch;

rom2 memoria(address, clk, instruccion);
Counter cont(clk, rst, 1'b1, address); 		
deco d1(instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rn, Rd, Operand2, OffsetSTD, OffsetBranch);
Mux2to1 mux1();
Mux2to1 mux2();
register RegisterBank();

endmodule
