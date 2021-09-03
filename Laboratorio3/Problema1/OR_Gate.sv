module OR_Gate #(parameter P)(a, b, s);

	input logic [P:0] a, b;
	output logic [P:0] s;

	always_comb
	begin
		s = a|b;
	end
    
endmodule
