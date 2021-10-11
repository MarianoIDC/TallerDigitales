`timescale 1s/1ps

module disp_leche(input  clk, preparar,
					  input [6:0] bebida,
					  output logic led_leche, siguiente);
					  
	always @(posedge clk) begin
		led_leche = 1'b0;
		if (preparar == 1'b1) begin
			//Expresso
			//0 segundos
			if (bebida [2:1] == 2'b00) begin
				led_leche = 1'b1;
				led_leche = 1'b0;
				siguiente = 1'b1;
			end
			//Café con leche - Mocaccino
			//1 segundo
			else if (bebida [2:1] == 2'b01) begin
				led_leche = 1'b1;
				#1
				led_leche = 1'b0;
				siguiente = 1'b1;
			end
			//Capuccino
			//2 segundos
			else if (bebida [2:1] == 2'b10) begin
				led_leche = 1'b1;
				#2
				led_leche = 1'b0;
				siguiente = 1'b1;
			end
			else begin
				led_leche = 1'b0;
				siguiente = 1'b0;
			end
		end
	end
endmodule 