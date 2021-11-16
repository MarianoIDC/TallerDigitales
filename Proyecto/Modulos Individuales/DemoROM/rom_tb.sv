module rom_tb();

logic [7:0] entrada = 8'b11111111; //C, q;
logic [6:0] unidades, decenas, centenas;
logic clk, rst, ready;
Display7SegX3 display(entrada, clk, rst, unidades, decenas, centenas, ready);

//Comparador #(8) comp(clk, rst, en, C, q);

endmodule
