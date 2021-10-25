module muxNOT #(parameter N = 4)(input logic [N-1:0] B, input logic control, output logic [N-1:0] resultadoB);

    logic [N-1:0] resultB;

    always_comb begin
        resultB = control ? ~B : B;
    end

    assign resultadoB = resultB;

endmodule 