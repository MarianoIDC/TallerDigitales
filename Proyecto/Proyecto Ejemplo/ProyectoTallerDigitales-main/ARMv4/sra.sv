module sra #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic signed [N-1:0] sraResultado;

    always_comb begin
        sraResultado = a >>> b;
    end

    assign resultado = sraResultado;

endmodule 