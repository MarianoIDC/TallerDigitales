`timescale 1s/1ps

module disp_cafe(input logic clk,
					  input logic [6:0] bebida,
					  output logic led_cafe);
					  
	always_ff @(posedge clk) begin
			//Expresso
			//3 segundos
			if (bebida [4:3] == 2'b10) begin
				led_cafe = 1'b1;
				#3
				led_cafe = 1'b0;
			end
			//Café con leche
			//2 segundos
			else if (bebida [4:3] == 2'b01) begin
				led_cafe = 1'b1;
				#2
				led_cafe = 1'b0;
			end
			//Capuccino - Mocaccino
			//1 segundo
			else if (bebida [4:3] == 2'b00) begin
				led_cafe = 1'b1;
				#1
				led_cafe = 1'b0;
			end
			else begin
				led_cafe= 1'b0;
			end
	end
endmodule 