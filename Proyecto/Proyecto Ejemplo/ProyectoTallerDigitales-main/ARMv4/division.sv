module division #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado);

    logic [N-1:0] dResultado ;

    always_comb begin
        dResultado = a / b;
    end

    assign resultado = dResultado;

endmodule 