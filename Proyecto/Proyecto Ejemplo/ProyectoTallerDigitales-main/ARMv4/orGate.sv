module orGate #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] orResultado;

    always_comb begin
        orResultado <= a | b;
    end

    assign resultado = orResultado;

endmodule 