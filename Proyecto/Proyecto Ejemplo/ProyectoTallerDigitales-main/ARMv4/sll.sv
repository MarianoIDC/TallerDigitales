module sll #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] sllResultado;

    always_comb begin
        sllResultado = a << b;
    end

    assign resultado = sllResultado;

endmodule 