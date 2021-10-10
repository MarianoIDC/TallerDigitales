`timescale 1s/1ps

module disp_azucar(input logic clk,
						 output logic led_azucar);
					  
	always @(posedge clk) begin
		//Todas las bebidas
		//1 segundo
		led_azucar = 1'b1;
		#1
		led_azucar = 1'b0;
	end
endmodule 