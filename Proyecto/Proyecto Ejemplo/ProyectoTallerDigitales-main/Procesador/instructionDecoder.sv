module instructionDecoder(clk,enable,instruccion,
									RSourceA,Rresult,ImmediateOper,ImmValue,RSourceB,
									flagEnableAlu,opCode,setCond,condition,
									flagEnableIO,RamRW,
									flagEnableBX,
									done);
									
	input [31:0] instruccion;
		
	input enable,clk;
	
	output logic flagEnableAlu,ImmediateOper,flagEnableIO,flagEnableBX;
	
	output logic [3:0] opCode;
	output logic setCond;
	output logic [3:0] condition;
	output logic [3:0] RSourceA,RSourceB,Rresult;
	output logic [7:0] ImmValue;
	output logic RamRW;
	output logic done;
	
	always @ (posedge clk) begin
		if (enable == 1) begin
			if (instruccion == 32'd0)begin
				done = 1'b1;
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
				setCond = 1'b0;
			end
			else if (instruccion[27:4] == 24'b000100101111111111110001) begin//Branch and exchage
				condition = instruccion[31:28];
				RSourceA = instruccion[3:0];
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b1;
				done = 1'b0;
				setCond = 1'b0;
			end
			else if (instruccion[27:26] == 2'b00) begin//alu Opers
				condition = instruccion[31:28];
				opCode = instruccion[24:21];
				setCond = instruccion[20];
				RSourceA = instruccion[19:16];
				Rresult = instruccion[15:12];
				ImmediateOper = instruccion[25];
				if (ImmediateOper == 1'b1) begin
					ImmValue = instruccion[7:0];
				end
				else begin
					RSourceB = instruccion[3:0];
				end
				flagEnableAlu = 1'b1;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
				done = 1'b0;
			end
			else if (instruccion[27:26] == 2'b01) begin//Single data transfer -> LDR, STR
				condition = instruccion[31:28];
				RamRW = instruccion[20];
				RSourceA = instruccion[19:16];
				Rresult = instruccion[15:12];
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b1;
				flagEnableBX = 1'b0;
				done = 1'b0;
				setCond = 1'b0;
			end
		/*	
			else if (instruccion[27:25] == 3'b011 && instruccion[4] == 1'b1) begin//undef
				done = 1'b1;
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:22] == 6'b000000 && instruccion[7:4] == 4'b1001) begin//Multiply -> MUL, MLA
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:23] == 5'b00001 && instruccion[7:4] == 4'b1001) begin//Multiply long -> MULL, MLAL
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:23] == 5'b00010 && instruccion[21:20] == 2'b00 && instruccion[11:4] == 8'b00001001) begin//single data swap
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:25] == 5'b000 && instruccion[22] == 1'b0 && instruccion[11:7] == 5'b00001 && instruccion[4] == 1'b1) begin//HWord data transfer reg offset
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:25] == 5'b000 && instruccion[22] == 1'b1 && instruccion[7] == 1'b1 && instruccion[4] == 1'b1) begin//HWord data transfer immidiate offset
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:25] == 3'b100) begin//Block data transfer
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:25] == 3'b101) begin //Branch
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:25] == 3'b110) begin//Coprocessor data transfer
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:24] == 4'b1110 && instruccion[4] == 1'b0) begin//Coprocessor data oper
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:24] == 4'b1110 && instruccion[4] == 1'b1) begin//Coprocessor data reg transfer
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			else if (instruccion[27:24] == 4'b1111) begin//interrupt
				flagEnableAlu = 1'b0;
				flagEnableIO = 1'b0;
				flagEnableBX = 1'b0;
			end
			*/
		end
	end
	
endmodule
