module selector_bebida(input logic clk, rst, 
							  input logic [2:0]tipo_bebida,
							  output logic [9:0] bebida);
							  
	always_ff @(posedge clk) begin
		if (rst) begin 
			bebida = 10'b0000000000;
		end
		else if (tipo_bebida == 2'b00) begin
			bebida = 10'b1011000001;
		end
		else if (tipo_bebida == 2'b01) begin
			bebida = 10'b1010010001;
		end
		else if (tipo_bebida == 2'b10) begin
			bebida = 10'b1001100001;
		end
		else if (tipo_bebida == 2'b11) begin
			bebida = 10'b0101001001;
		end
	end

endmodule 