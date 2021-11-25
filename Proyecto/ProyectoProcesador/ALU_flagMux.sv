module ALU_flagMux #(parameter P = 32)
                    (input logic [P-1:0] Q,
                     input logic [2:0] ALUControl,
                     input logic Cout, Sign,
                     output logic Z, N, V, C);

always_comb begin
	Z<=1'b0;
	N<=1'b0;
	C<=1'b0;
	V<=1'b0;
	if(Q==4'b000)
		Z<=1'b1;
	else if(ALUControl==4'b001)
		N <= ~(Sign);//
	else if(ALUControl==4'b000)
	begin
		C<=Cout;
		V<=Cout;
	end
	
end

endmodule  