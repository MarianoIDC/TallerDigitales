module deco(input logic [31:0] instruccion,
				output logic [3:0] cond,
				output logic [1:0] op,
				output logic I,
				output logic [3:0] opCode,
				output logic P,
				output logic U,
				output logic B,
				output logic W,								
				output logic S_L,
				output logic [3:0] Rn,
				output logic [3:0] Rd,
				output logic [11:0] operand_offset);

		logic [1:0] operacion;
		assign operacion = instruccion [27:26];
		
		always_ff
		case(operacion)
			//Data Processing  
			2'b00:
				begin
					cond = instruccion [31:28];
					I = instruccion [25];
					op = instruccion [27:26];
					opCode = instruccion [24:21];
					S_L = instruccion [20];
					Rn = instruccion [19:16];
					Rd = instruccion [15:12];
					operand_offset = instruccion [11:0];
					
					P = 1'bx;
					U = 1'bx;
					B = 1'bx;
					W = 1'bx;
				end
			
			//Single Data Transfer
			2'b01:
				begin
					cond = instruccion [31:28];
					op = instruccion [27:26];
					I = instruccion [25];
					P = instruccion [24];
					U = instruccion [23];
					B = instruccion [22];
					W = instruccion [21];
					S_L = instruccion [20];
					Rn = instruccion [19:16];
					Rd = instruccion [15:12];
					operand_offset = instruccion [11:0];
					
					opCode = 4'bxxxx;
				end
				
		endcase
			
endmodule 