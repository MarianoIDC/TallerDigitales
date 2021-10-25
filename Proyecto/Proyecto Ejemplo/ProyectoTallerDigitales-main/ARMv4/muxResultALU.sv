module muxResultALU #(parameter N = 4)(input logic [N-1:0] resultADD, resultSUB, resultMULT, resultDIV, resultSLL, resultSRL, resultAND, resultOR, resultXOR, resultNOT, input logic [3:0] ALUControl, output logic [N-1:0] resultado);

    logic [N-1:0] result;

    always_comb begin
		case(ALUControl)
         4'b0000 : result <= resultADD;
         4'b0001 : result <= resultADD;
         4'b0010 : result <= resultMULT;
         4'b0011 : result <= resultDIV;
         4'b0100 : result <= resultSLL;
         4'b0101 : result <= resultSRL;
         4'b0110 : result <= resultAND;
         4'b0111 : result <= resultOR;
         4'b1000 : result <= resultXOR;
         4'b1001 : result <= resultNOT;
         default : result <= resultADD;
      endcase
    end

    assign resultado = result;

endmodule 