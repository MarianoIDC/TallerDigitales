module AND_Gate #(parameter N = 4)(a, b, s);

	input logic [N:0] a, b;
	output logic [N:0] s;

	always_comb
	begin
		assign s = a&b;
	end
   
endmodule
