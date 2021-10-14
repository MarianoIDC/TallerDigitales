`timescale 1s/1ms

module disp_chocolate(input logic clk, enable_chocolate,
					  input logic [1:0] bebida,
					  output logic led_chocolate, enable_azucar);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk) begin
		if (enable_chocolate)
		begin
			if (counter_aux<bebida)
			begin
				led_chocolate = 1'b1;
				counter_aux = counter_aux + 1'b1;
			end
			else
			begin
				enable_azucar = 1'b1;
				led_chocolate = 1'b0; 
			end	
		end		
	end	
endmodule 