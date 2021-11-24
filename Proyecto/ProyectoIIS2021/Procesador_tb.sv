module Procesador_tb();

logic clk, rst, I, Uno, P, U, B, W, S, L1, L2, we_RF = 1'b0, sel = 1'b0;
logic [7:0] address;
logic [31:0] instruccion, WD3 = 32'b00, RD1, RD2;
logic [1:0] Op;
logic [14:0] registerBank [31:0];		
logic [3:0] Rn, Rm, Rd, OpCode, Cond, Rn_Mux, Rd_Mux;  
logic [11:0] Operand2, OffsetSTD;
logic [23:0] OffsetBranch;

rom2 memoria(address, clk, instruccion);
Counter cont(clk, rst, 1'b1, address); 		
deco d1(instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rn, Rd, Operand2, OffsetSTD, OffsetBranch);
Mux2to1 mux1(Rn, 4'b111, sel, Rn_Mux);
Mux2to1 mux2(Operand2[3:0], Rd, sel, Rd_Mux);
register RegisterBank(clk, rst, we_RF, Rn_Mux, Rd_Mux, Rd, WD3, RD1, RD2, registerBank);

endmodule
