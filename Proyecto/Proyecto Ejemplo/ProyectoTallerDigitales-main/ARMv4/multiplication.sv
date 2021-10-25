module multiplication #(parameter N = 4)(input logic [N-1:0] a, b, output logic [N-1:0] resultado, output logic cout);

    logic [(2*N)-1:0] mResultado;

    assign mResultado = a * b;

    assign resultado = mResultado[N-1:0];

    always_comb begin
        if(mResultado > 4'b1111)
			begin
				cout <= 1'b1;
			end			
		else
			cout <= 1'b0;
    end

endmodule 