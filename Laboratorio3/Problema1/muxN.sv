
module  muxN #(parameter P=4)(OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7,OP,Result);
	input logic [P-1:0] OP_1, OP_2, OP_3, OP_4, OP_5, OP_6, OP_7;
	input logic [2:0] OP;
	output logic [P-1:0] Result;
	//always @(S)begin
	always_comb begin
		case(OP)
			3'b000:Result<=OP_1;//Suma
			3'b001:Result<=OP_2;//Resta
			3'b010:Result<=OP_3;//And
			3'b011:Result<=OP_4;//Or
			3'b100:Result<=OP_5;//XOR
			3'b101:Result<=OP_6;//shift left
			3'b110:Result<=OP_7;//shift right
			default:Result<=OP_1;
		endcase
	end
endmodule
