`timescale 1 ps / 1 ps

module Procesador(clk, start, f_done, resultOut);

	input clk, start;
	output logic f_done;
	output [31:0] resultOut;
	
	
	//estate flags,  within the processor.
	logic f_enableAlu, f_enableIO, f_enableBX, setCond, eval, rwRAM, f_Done;
	
	//enable states, allow data operations within the processor.
	logic enableGetPc, enableROMRead, enableDecoder, enableEval,
			enableRegRead, enableALU, enableRegWrite, enableBX, enableInPc, enableRAM;
	//set instruction variable
	logic [31:0] instruction;
	logic [31:0] pc = 32'd0;
	
//Split the instructions
//##############################################
	//set the register variables
	logic [3:0] reg_sA, reg_sB, reg_result;
	
	logic ImmediateOper,writeReg;
	
	logic [7:0] ImmValue;
	
	logic [3:0] opCode;
	logic [3:0] condition;
	
//Register content
	logic [31:0] Aout,Bout,resultOut;
//Operation flags
	logic V,N,Z,C;
	
//
	logic [31:0] dataOutRam;
	logic [31:0] resultAlu;
	
	
	scheduler scheduler(clk,start,flagdone,
						flagEnableAlu,flagEnableIO,flagEnableBX,setCond,evaluacion,rwRam,
						enableGetPC,enableRomRead,enableDecoder,enableEval,enableRegRead,
						enableAlu,enableRegWrite,enableBX,enableIncPC,enableRam,doneAux);			
									
	//Lee la memoria
	ROM rom(pc,clk && enableRomRead,instruccion);
	
	instructionDecoder instructionDecoder(clk,enableDecoder,instruccion,
									RSourceA,Rresult,ImmediateOper,ImmValue,RSourceB,
									flagEnableAlu,opCode,setCond,condition,
									flagEnableIO,rwRam,
									flagEnableBX,
									flagdone);
	
	conditionEval conditionEval(clk,enableEval,evaluacion,condition,V,N,Z,C);
	
	registers registers(clk,enableGetPC || enableRegRead || enableRegWrite || enableIncPC,
						0,0,enableIncPC,(!setCond && writeReg || rwRam) && !enableRegRead,
						0,0,(flagEnableBX == 1'b1 && evaluacion == 1'b1) ? Aout : pc+1, (flagEnableIO == 1'b1) ? dataOutRam : resultAlu,
						1,1,
						RSourceA, RSourceB,Rresult,
						Aout,Bout,pc,resultOut);
	
	alu alu(enableAlu,clk,Aout,(ImmediateOper == 1'b1) ? ImmValue : Bout,0,setCond,opCode,resultAlu,V,N,Z,C,writeReg);
	
	RAM ram((flagdone == 1'b1) ? (j+(100*i)) : Aout[13:0],(clk && enableRam) || clkMem, Aout,!rwRam,dataOutRam);
	

endmodule
