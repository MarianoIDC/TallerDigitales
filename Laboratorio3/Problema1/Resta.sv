module Resta #(parameter P = 4)(A, B, RES, Sign);

input logic [P-1:-0] A, B;
output logic [P-1:0] RES;
output logic Sign;

logic [P-1:0] Temp, Q;
wire [P-1:0] Sign_aux;


adder1bit Bit0 (A[0], ~B[0], 1'b1, Sign_aux[1], Temp[0]);
adder1bit Bit1 (A[1], ~B[1], Sign_aux[1], Sign_aux[2], Temp[1]);
adder1bit Bit2 (A[2], ~B[2], Sign_aux[2], Sign_aux[3], Temp[2]);
adder1bit Bit3 (A[3], ~B[3], Sign_aux[3], Sign, Temp[3]);


compA2 compl(Temp,Q);
	
	always_comb 
	begin
		if(Sign==0)//Si es negativo
			RES<=Q;//Al resultado se le aplica complemento A2 

			RES<=Temp;//Resultado Positivo
	end
endmodule 