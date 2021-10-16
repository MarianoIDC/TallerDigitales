module cantidad (monto, vuelto, enable, cant);

input logic [11:0] monto, vuelto;
input logic enable;
output logic [11:0] cant;
logic [11:0] aux_cant;

	always_comb
	begin
		if (enable)
			aux_cant = vuelto;
		else
			aux_cant = monto;
	end
	assign cant = aux_cant;

endmodule 