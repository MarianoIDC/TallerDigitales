module rom_tb();

logic [7:0] address, q;
logic clk, rst;

rom mem(address, clk, q);
Counter #(8) cont(clk, rst, 1'b1, address);

endmodule
