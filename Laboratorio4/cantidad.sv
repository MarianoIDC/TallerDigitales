module cantidad (clk, monto, vuelto, enable, cant);

input logic [11:0] monto, vuelto;
input logic clk, enable;
output logic [11:0] cant;
logic [11:0] aux_cant;

	always @(posedge clk)
		if (enable)
			aux_cant = vuelto;
		else
			aux_cant = monto;
	
	assign cant = aux_cant;

endmodule 