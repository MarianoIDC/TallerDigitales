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
	output logic [11:0] vuelto;
//Variables locales
	logic suma100, suma500;
	logic [11:0] suma;
	logic fallo, enable_suma;
	
	SumadorMonedas_FSM sum_FSM (.clk(clk), .rst(rst), .moneda(moneda), .sel(sel), .suma100(suma100), .suma500(suma500), .enable(enable));
	SumadorMonedas_Sumador sum_sum (.clk(clk), .rst(rst), .enable(enable), .suma100(suma100), .suma500(suma500), .suma(suma));
//	FlipFlop sum_ff (.clk(clk), .D(enable), .we(1), .Q(enable_suma));
	SumadorMonedar_Vuelto sum_vuelto(.rst(rst), .enable(enable), .sel(sel), .suma(suma), .vuelto(vuelto), .fallo(fallo));
	
	assign monto = suma;
		
endmodule
