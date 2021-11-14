module rom_tb();

logic [7:0] en = 8'b1101111, Q, q;
logic clk, rst;

Comparador #(8) comp(clk, rst, en, Q, q);

endmodule
