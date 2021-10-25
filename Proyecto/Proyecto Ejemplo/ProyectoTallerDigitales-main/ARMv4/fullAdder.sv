module fullAdder #(parameter N = 4)(input logic [N-1:0] a, b, input logic cin, output logic [N-1:0] resultado, output logic cout);

    logic [N-1:0] sum;
    logic ctemp;

    always_comb begin
        {ctemp, sum} = a + b + cin;
    end

    assign resultado = sum;
    assign cout = ctemp;

endmodule 