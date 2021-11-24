`timescale 10 ns / 1 ps
module Procesador_tb();

logic clk, rst, start;

always #10 clk = ~clk;

Procesador iProc (.clk(clk), .rst(rst), .start(start));


initial begin

start = 1'b1; #50;
rst = 1'b1;#10;
rst = 1'b0;#10;
start = 1'b0;


end



endmodule
