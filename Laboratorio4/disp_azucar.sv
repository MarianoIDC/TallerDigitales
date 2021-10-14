`timescale 1s/1ms

module disp_azucar(input logic clk, enable_azucar,
					  input logic [1:0] bebida,
					  output logic led_azucar, enable_fin);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk) begin
		if (enable_azucar)
		begin
			if (counter_aux<bebida)
			begin
				led_azucar = 1'b1;
				counter_aux = counter_aux + 1'b1;
			end
			else
			begin
				enable_fin = 1'b1;
				led_azucar = 1'b0; 
			end	
		end		
	end	
endmodule 