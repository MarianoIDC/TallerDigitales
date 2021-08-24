module OR_Gate ();

	input logic [N:0] a, b;
	output logic [N:0] s;

	always_comb
	begin
		assign s = a|b;
	end
    
endmodule
