`timescale 1s/1ms
module SumadorMonedas_FSM(clk, rst, moneda, sel, suma100, suma500, enable);


//Variables del modulo
//Entradas
	//senial de reloj y de reset
	input logic clk, rst;
	/*Monedas
		100 01
		500 10
	*/
	input logic [2:0] sel;
	input logic [1:0] moneda;
//Salidas
	//Senial de Enable para los modulos que preparan la bebida
	output logic suma100, suma500, enable;

	
//Variables Temporales
	//monto

	//variables de estado
	logic [2:0] actual_state, next_state;
	//estados disponibles
	localparam
		S0 = 3'b000,
		S1 = 3'b001,
		S2 = 3'b010,
		S3 = 3'b011;
		
		
//actual state
	always_ff @(posedge clk or posedge rst)
		if (rst) 
			actual_state = S0;
		else if(sel!=3'b000)
			actual_state = S3;
		else 
			actual_state = next_state;

		
//next state
	always_comb
		case(actual_state)
				S0:
				begin
					if (moneda == 2'b01) 
					begin
						next_state = S1;
					end
					else if (moneda == 2'b10) 
					begin;
						next_state = S2;
					end
					else next_state = S0;
				end
				S1:
				begin
					if (moneda == 2'b01) 
					begin
						next_state = S1;
					end
					else if (moneda == 2'b10) 
					begin
						next_state = S2;
					end
					else next_state = S1;
				end
				S2:
				begin
					if (moneda == 2'b01) 
					begin
						next_state = S1;
					end
					else if (moneda == 2'b10) 
					begin
						next_state = S2;
					end
					else next_state = S2;
				end
				S3:
				begin
					next_state = S3;
				end
	endcase
assign suma100 = (actual_state == S1);
assign suma500 = (actual_state == S2);
assign enable = (actual_state == S3);
		
		
endmodule