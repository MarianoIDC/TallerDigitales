`timescale 1s/1ps

module disp_chocolate(input clk, preparar,
							 input [6:0] bebida,
							 output logic led_chocolate, siguiente);
					  
	always @(posedge clk) begin
		led_chocolate = 1'b0;
		if (preparar == 1'b1) begin
			//Expresso - Café con leche - Capuccino
			//3 segundos
			if (bebida [0:0] == 1'b0) begin
				led_chocolate = 1'b1;
				#3
				led_chocolate = 1'b0;
				siguiente = 1'b1;
			end
			//Mocaccino
			//2 segundos
			else if (bebida [0:0] == 1'b1) begin
				led_chocolate = 1'b1;
				#2
				led_chocolate = 1'b0;
				siguiente = 1'b1;
			end
			else begin
				led_chocolate = 1'b0;
				siguiente = 1'b0;
			end
		end
	end
endmodule 