module andGate #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] andResultado;

    always_comb begin
        andResultado = a & b;
    end

    assign resultado = andResultado;

endmodule 