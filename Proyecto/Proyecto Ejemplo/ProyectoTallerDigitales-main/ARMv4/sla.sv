module sla #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic signed [N-1:0] slaResultado;

    always_comb begin
        slaResultado = a <<< b;
    end

    assign resultado = slaResultado;

endmodule 