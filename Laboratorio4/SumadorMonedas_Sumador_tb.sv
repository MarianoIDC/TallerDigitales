module SumadorMonedas_Sumador_tb();

logic clk = 0, rst, suma100, suma500; 
logic [11:0] suma ;

SumadorMonedas_Sumador suma_t(clk, rst,suma100, suma500,suma);
always #10 clk=~clk;
initial begin
rst = 1; #1;
rst = 0; #1;
suma100 = 1'b1;#10;
suma100 = 1'b1;#10;
suma500 = 1'b1;#10;
suma100 = 1'b1;#10;

end


endmodule 