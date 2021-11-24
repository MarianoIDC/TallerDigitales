`timescale 1 ns / 1 ps
module Procesador_tb();

parameter N = 32;

logic clk=0;
logic rst, start;
logic [N - 1:0] dirIntruction;
always #10 clk = ~clk;

Procesador iProc (.clk(clk), .rst(rst), .start(start), .dirIntruction(dirIntruction));


initial begin

start = 1'b1; #50;
rst = 1'b1;#10;
rst = 1'b0;#10;
start = 1'b0;


end



endmodule
