module Resta #(parameter P = 4)(A, B, RES, Sign);

input logic [P-1:-0] A, B;
output logic [P-1:0] RES;
output logic Sign;

logic [P-1:0] Temp, Q;

wire [P:0] Sign_aux;

genvar i;

adder1bit Bit0 (A[0], ~B[0], 1'b1, Sign_aux[1], Temp[0]);

generate
	for (i = 1; i < P; i=i+1)begin : resta_N
		adder1bit BitN (A[i], ~B[i], Sign_aux[i], Sign_aux[i+1], Temp[i]);
	end
endgenerate

assign Sign = Sign_aux[P];
compA2 #(P) compl(Temp,Q);
always_comb
begin
	if(Sign==0)//Si es negativo
		RES<=Q;//Al resultado se le aplica complemento A2 
	else
		RES<=Temp;//Resultado Positivo
end
endmodule 