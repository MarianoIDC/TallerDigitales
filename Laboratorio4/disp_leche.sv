module disp_leche(input logic clk, enable_leche,
					  input logic [1:0] bebida,
					  output logic led_leche, enable_chocolate);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk) begin
		if (enable_leche)
		begin
			if (counter_aux<bebida)
			begin
				led_leche = 1'b1;
				counter_aux = counter_aux + 1'b1;
			end
			else
			begin
				enable_chocolate = 1'b1;
				led_leche = 1'b0; 
			end	
		end		
	end
endmodule 