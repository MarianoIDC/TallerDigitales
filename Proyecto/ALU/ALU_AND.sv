module ALU_AND #(parameter P)(a, b, s);

	input logic [P-1:0] a, b;
	output logic [P-1:0] s;

	always_comb
	begin
		s = a&b;
	end
   
endmodule