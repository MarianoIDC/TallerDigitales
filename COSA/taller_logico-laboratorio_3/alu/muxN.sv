//MUX: Módulo multiplexor parametrizable para 10 entradas de N Bits
//S: Entrada de Selector de salida
//Q: Salida
//Para la implementación de la ALU.
//Las entradas cumplen las siguientes funciones
//I0: SUMA
//I1: RESTA	
//I2: MULTIPLICACIÓN
//I3: DIVISION
//I4: MODULO
//I5: AND
//I6: OR
//I7: XOR
//I8: SHIFTL
//I9: SHIFTR 


module  muxN #(parameter N = 4)(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,S,Q);
	input logic [N-1:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
	input logic [3:0] S;
	output logic [N-1:0] Q;
	//always @(S)begin
	always_comb begin
		case(S)
			4'b0000:Q<=I0;
			4'b0001:Q<=I1;
			4'b0010:Q<=I2;
			4'b0011:Q<=I3;
			4'b0100:Q<=I4;
			4'b0101:Q<=I5;
			4'b0110:Q<=I6;
			4'b0111:Q<=I7;
			4'b1000:Q<=I8;
			4'b1001:Q<=I9;
			default:Q<=I0;
		endcase
	end
endmodule
