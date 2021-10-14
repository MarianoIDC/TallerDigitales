module selector_bebida(input logic clk, rst, 
							  input logic [2:0]tipo_bebida,
							  output logic [9:0] bebida);
							  
	always_ff @(posedge clk) begin
		if (rst) begin 
			bebida = 10'b0000000000;
		end
		else if (tipo_bebida == 3'b001) begin
			bebida = 10'b1011000001;
		end
		else if (tipo_bebida == 3'b010) begin
			bebida = 10'b1010010001;
		end
		else if (tipo_bebida == 3'b011) begin
			bebida = 10'b1001100001;
		end
		else if (tipo_bebida == 3'b100) begin
			bebida = 10'b0101011001;
		end
	end

endmodule 