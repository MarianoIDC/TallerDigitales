module SumadorMonedas_Sumador(input logic clk, rst, suma100,suma500, output logic [11:0] suma);
//Variables del modulo
//input logic clk, rst, suma100, suma500;
//output logic [11:0] suma;
 
												
always_ff@(posedge clk or posedge rst)
	if (rst) 
		suma = 12'd0;
	else
		if (suma100) 
			suma = suma + 12'd100;

endmodule
