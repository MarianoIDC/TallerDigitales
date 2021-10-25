module xorGate #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] xorResultado;

    always_comb begin
        xorResultado <= a ^ b;
    end

    assign resultado = xorResultado;

endmodule 