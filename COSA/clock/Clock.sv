module Clock#(parameter N)(rst, clk, salida);


input clk, rst;
output logic [N-1:0] salida = 0;

logic [N-1:0] parada;
for (int i = 0; i < N; i++)
	parada[i] = 1'b1;


always_ff @( posedge clk, posedge rst ) begin
    if(rst)
        salida <= 0;
    else if(salida == parada) begin
        salida <= 0;
    end else
        salida <= salida + 1'b1;
end

endmodule
