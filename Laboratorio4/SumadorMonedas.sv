module SumadorMonedas(clk, rst, moneda, sel, monto, vuelto, enable);

//Variables del modulo
//Entradas
	//senial de reloj y de reset
	input logic clk, rst;

	//senial de seleccion de bebida y entrada de moneda
	/*Bebibas
		Cafe Expresso 	CE 001 300
		Cafe con Leche CL	010 400
		Capuccino 		CP	011 500
		Mocaccino		MC 100 700
	*/
	/*Monedas
		100 01
		500 10
	*/
	input logic [2:0] sel;
	input logic [1:0] moneda;
//Salidas
	output logic enable;
	output logic [11:0] monto;
//Variables locales
	logic suma100, suma500;
	logic [11:0] suma;
	
	SumadorMonedas_FSM sum_FSM (.clk(clk), .rst(rst), .moneda(moneda), .sel(sel), .suma100(suma100), .suma500(suma500), .enable(enable));
	SumadorMonedas_Sumador sum_sum (.clk(clk), .rst(rst), .suma100(suma100), .suma500(suma500), .suma(suma));
	SumadorMonedar_Vuelto (.clk(clk), .rst(rst), .enable(enable), .sel(sel), [11:0] suma, output logic [11:0] vuelto);
	
	
	assign monto = suma;
		
endmodule
