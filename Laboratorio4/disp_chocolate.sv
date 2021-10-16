module disp_chocolate(input logic rst, clk, enable_chocolate,
					  input logic [1:0] bebida,
					  output logic led_chocolate, enable_azucar);
	
logic [2:0] counter_aux = 3'b000; 
	always@(posedge clk or posedge rst) begin
		if (rst)
		begin
			counter_aux = 3'b000;
			enable_azucar = 1'b0;
			led_chocolate = 1'b0;
		end
		else if (enable_chocolate)
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