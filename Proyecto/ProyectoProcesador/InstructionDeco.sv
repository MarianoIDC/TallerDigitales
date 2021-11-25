module InstructionDeco(input logic [31:0] instruccion,
				
				// Data Processing
				// |31|30|29|28| |27|26| |25| |24|23|22|21| |20| |19|18|17|16| |15|14|13|12| |11|10|9|8|7|6|5|4|3|2|1|0|
				// |   Cond    | |  Op | |I | |   OpCode  | |S | |    Rn		 | |    Rd     | |        Operand2			 |
				
				// Single Data Transfer
				// |31|30|29|28| |27|26| |25| |24| |23| |22| |21| |20| |19|18|17|16| |15|14|13|12| |11|10|9|8|7|6|5|4|3|2|1|0|
				// |   Cond    | |  Op | |I | |P | |U | |B | |W | |L1| |    Rn		 | |    Rd     | |       OffsetSTD     	 |
				
				// Branch
				// |31|30|29|28| |27|26| |25 | |24| |23|22|21|20|19|18|17|16|15|14|13|12|11|10|9|8|7|6|5|4|3|2|1|0|
				// |   Cond    | |  Op | |Uno| |L2| |                       OffsetBranch                          |
				
				output logic [3:0] Cond,
				output logic [1:0] Op,
				output logic I,
				output logic Uno,
				output logic [3:0] OpCode,
				output logic P,
				output logic U,
				output logic B,
				output logic W,								
				output logic S,
				output logic L1,	
				output logic L2,
				output logic [3:0] Rm,
				output logic [3:0] Rn, 
				output logic [3:0] Rd,
				output logic [11:0] Operand2,
				output logic [11:0] OffsetSTD,
				output logic [23:0] OffsetBranch);

		logic [1:0] operacion;
		assign operacion = instruccion [27:26];
		
		always @*
		case(operacion)
			//Data Processing  
			2'b00:
				begin
					Cond = instruccion [31:28];
					Op = instruccion [27:26];
					I = instruccion [25];
					OpCode = instruccion [24:21];
					S = instruccion [20];
					Rn = instruccion [19:16];
					Rd = instruccion [15:12];
					Rm = instruccion [3:0];
					Operand2 = instruccion [11:0];
					
					P = 1'bx;
					U = 1'bx;
					B = 1'bx;
					W = 1'bx;
					L1 = 1'bx;
					L2 = 1'bx;
					Uno = 1'bx;
					OffsetSTD = 12'bxxxxxxxxxxxx;
					OffsetBranch = 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
				end
			
			//Single Data Transfer
			2'b01:
				begin
					Cond = instruccion [31:28];
					Op = instruccion [27:26];
					I = instruccion [25];
					P = instruccion [24];
					U = instruccion [23];
					B = instruccion [22];
					W = instruccion [21];
					L1 = instruccion [20];
					Rn = instruccion [19:16];
					Rd = instruccion [15:12];
					OffsetSTD = instruccion [11:0];
									
					L2 = 1'bx;
					Uno = 1'bx;
					Operand2 = 12'bxxxxxxxxxxxx;
					OffsetBranch = 24'bxxxxxxxxxxxxxxxxxxxxxxxx;
				end
				
			//Branch
			2'b10:
				begin
					Cond = instruccion [31:28];
					Op = instruccion [27:26];
					Uno = instruccion [25];
					L2 = instruccion [24];
					OffsetBranch = instruccion [23:0];
				
					I = 1'bx;
					OpCode = 4'bxxxx;
					S = 1'bx;
					P = 1'bx;
					U = 1'bx;
					B = 1'bx;
					W = 1'bx;
					L1 = 1'bx;
					Rn = 4'bxxxx;
					Rd = 4'bxxxx;
					Operand2 = 12'bxxxxxxxxxxxx;
					OffsetSTD = 12'bxxxxxxxxxxxx;
				end
				
		endcase
			
endmodule 