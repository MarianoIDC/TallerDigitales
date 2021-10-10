`timescale 1s/1ps

module disp_agua(input logic clk,
					  input logic [6:0] bebida,
					  output logic led_agua);
					  
	always_ff @(posedge clk) begin
			//Expresso - Café con leche - Capuccino
			//2 segundos
			if (bebida [5:5] == 1'b1) begin
				led_agua = 1'b1;
				#2
				led_agua = 1'b0;
			end
			//Mocaccino
			//1 segundo
			else if (bebida [5:5] == 1'b0) begin
				led_agua = 1'b1;
				#1
				led_agua = 1'b0;
			end
			else begin
				led_agua = 1'b0;
			end
	end
endmodule 