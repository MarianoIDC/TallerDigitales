module deco2_tb();

logic clk, rst, I, Uno, P, U, B, W, S, L1, L2;
logic [7:0] address;
logic [31:0] instruccion;
logic [1:0] Op;		
logic [3:0] Rn, Rd, OpCode, Cond;  
logic [11:0] Operand2, OffsetSTD;
logic [23:0] OffsetBranch;

rom2 memoria(address, clk, instruccion);
Counter cont(clk, rst, 1'b1, address); 		
deco d1(instruccion, Cond, Op, I, Uno, OpCode, P, U, B, W, S, L1, L2, Rn, Rd, Operand2, OffsetSTD, OffsetBranch);

//Comparador #(8) comp(clk, rst, en, C, q);

endmodule