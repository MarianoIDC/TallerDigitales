module srl #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] srlResultado;

    always_comb begin
        srlResultado = a >> b;
    end

    assign resultado = srlResultado;

endmodule 