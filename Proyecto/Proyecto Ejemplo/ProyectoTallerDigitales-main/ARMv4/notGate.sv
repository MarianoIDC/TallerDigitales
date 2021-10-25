module notGate #(parameter N = 4)(input logic [N-1:0] a, output logic [N-1:0] resultado);

    logic [N-1:0] temp;

    always_comb begin
        temp <= ~a;
    end

    assign resultado = temp;

endmodule 