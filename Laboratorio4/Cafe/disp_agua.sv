`timescale 1s/1ps

module disp_agua(input clk, preparar,
					  input [6:0] bebida,
					  output logic led_agua, siguiente);
					  
	always @(posedge clk) begin
		led_agua = 1'b0;
		if (preparar == 1'b1) begin
			//Expresso - Café con leche - Capuccino
			//2 segundos
			if (bebida [5:5] == 1'b1) begin
				led_agua = 1'b1;
				#2
				led_agua = 1'b0;
				siguiente = 1'b1;
			end
			//Mocaccino
			//1 segundo
			else if (bebida [5:5] == 1'b0) begin
				led_agua = 1'b1;
				#1
				led_agua = 1'b0;
				siguiente = 1'b1;
			end
			else begin
				led_agua = 1'b0;
				siguiente = 1'b0;
			end
		end
	end
endmodule 