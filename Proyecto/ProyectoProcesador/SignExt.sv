module SignExt(input logic [23:0] offset, input logic [1:0] op, 
					output logic [31:0] SignImm);

always_comb
	case (op)
		2'b00:
			SignImm = {24'b00000000, offset [7:0]};
		2'b01:
			SignImm = {20'b00000000, offset [11:0]};
		2'b10:
			if(offset [23])
				SignImm = {8'b11111111, offset};
			else
				SignImm = {8'b00000000, offset};
		default: SignImm = {8'b00000000, offset};
	endcase

endmodule

