`timescale 1s/1ps

module disp_chocolate(input logic clk,
					  input logic [6:0] bebida,
					  output logic led_chocolate);
					  
	always_ff @(posedge clk) begin
			//Expresso - Café con leche - Capuccino
			//3 segundos
			if (bebida [0:0] == 1'b0) begin
				led_chocolate = 1'b1;
				#3
				led_chocolate = 1'b0;
			end
			//Mocaccino
			//2 segundos
			else if (bebida [0:0] == 1'b1) begin
				led_chocolate = 1'b1;
				#2
				led_chocolate = 1'b0;
			end
			else begin
				led_chocolate = 1'b0;
			end
	end
endmodule 