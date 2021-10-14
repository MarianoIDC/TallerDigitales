`timescale 1s/1ms
module SumadorMonedas_Sumador(input logic clk, rst, enable, suma100,suma500, output logic [11:0] suma);
//Variables del modulo
//input logic clk, rst, suma100, suma500;
logic [11:0] suma_aux;
 
												
always_ff@(posedge clk or posedge rst)
	if (rst) 
		suma_aux <= 12'd0;
	else if(!enable)
	begin
		if (suma100) 
			suma_aux <= suma + 12'd100;
		else if (suma500) 
			suma_aux <= suma + 12'd500;
	end
	
assign suma = suma_aux;	

endmodule
