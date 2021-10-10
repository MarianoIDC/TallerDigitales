`timescale 1s/1ps

module disp_leche(input logic clk,
					  input logic [6:0] bebida,
					  output logic led_leche);
					  
	always_ff @(posedge clk) begin
			//Expresso
			//0 segundos
			if (bebida [2:1] == 2'b00) begin
				led_leche = 1'b1;
				#0
				led_leche = 1'b0;
			end
			//Café con leche - Mocaccino
			//1 segundo
			else if (bebida [2:1] == 2'b01) begin
				led_leche = 1'b1;
				#1
				led_leche = 1'b0;
			end
			//Capuccino
			//2 segundos
			else if (bebida [2:1] == 2'b10) begin
				led_leche = 1'b1;
				#2
				led_leche = 1'b0;
			end
			else begin
				led_leche = 1'b0;
			end
	end
endmodule 