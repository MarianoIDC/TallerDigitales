module alu(enable,clk,A,B,Carry,setCond,opCode,result,V,N,Z,C,writeReg);

	parameter dataWidth = 32;
	
	input clk,enable;
	input Carry,setCond;
	input [dataWidth-1:0] A;
	input [dataWidth-1:0] B;
	input [3:0] opCode;
	
	output logic [dataWidth-1:0] result;//analysis and synthesis 8s, compile 1:02min
	output logic V,N,Z,C;
	output logic writeReg;
	
	logic [3:0] AND = 4'b0000;
	logic [3:0] EOR = 4'b0001;
	logic [3:0] SUB = 4'b0010;
	logic [3:0] RSB = 4'b0011;
	logic [3:0] ADD = 4'b0100;
	logic [3:0] ADC = 4'b0101;
	logic [3:0] SBC = 4'b0110;
	logic [3:0] RSC = 4'b0111;
	logic [3:0] TST = 4'b1000;
	logic [3:0] TEQ = 4'b1001;
	logic [3:0] CMP = 4'b1010;
	logic [3:0] CMN = 4'b1011;
	logic [3:0] ORR = 4'b1100;
	logic [3:0] MOV = 4'b1101;
	logic [3:0] BIC = 4'b1110;
	logic [3:0] MVN = 4'b1111;
	logic flagMov;
	logic writeResult;
	logic [dataWidth:0] resultAux;
	logic zeroAux,overflowAux,negativeAux,carryAux;
	
	
	always @ (posedge clk) begin
		if (enable == 1) begin
			if (opCode == AND) begin
				resultAux[dataWidth-1:0] = A & B;
				writeResult = 1;
			end
			else if (opCode == EOR) begin
				resultAux[dataWidth-1:0] = A ^ B;
				writeResult = 1;
			end
			else if (opCode == SUB) begin
				resultAux[dataWidth-1:0] = A - B;
				writeResult = 1;
			end
			else if (opCode == RSB) begin
				resultAux[dataWidth-1:0] = B - A;
				writeResult = 1;
			end
			else if (opCode == ADD) begin
				resultAux[dataWidth:0] = A + B;
				writeResult = 1;
			end
			else if (opCode == ADC) begin
				resultAux[dataWidth:0] = A + B + Carry;
				writeResult = 1;
			end
			else if (opCode == SBC) begin
				resultAux[dataWidth-1:0] = A - B + Carry - 1;
				writeResult = 1;
			end
			else if (opCode == RSC) begin	
				resultAux[dataWidth-1:0] = B - A + Carry - 1;
				writeResult = 1;
			end
			else if (opCode == TST) begin
				resultAux[dataWidth-1:0] = A & B;
				writeResult = 0;
			end
			else if (opCode == TEQ) begin
				resultAux[dataWidth-1:0] = A ^ B;
				writeResult = 0;
			end
			else if (opCode == CMP) begin
				resultAux[dataWidth-1:0] = A - B;
				writeResult = 0;
			end
			else if (opCode == CMN) begin
				resultAux[dataWidth-1:0] = A + B;
				writeResult = 0;
			end
			else if (opCode == ORR) begin
				resultAux[dataWidth-1:0] = A | B;
				writeResult = 1;
			end
			else if (opCode == MOV) begin
				resultAux[dataWidth-1:0] = B;
				writeResult = 1;
			end
			else if (opCode == BIC) begin
				resultAux[dataWidth-1:0] = A & (~B);
				writeResult = 1;
				//bit clear?
			end
			else if (opCode == MVN) begin
				resultAux[dataWidth-1:0] = ~B;
				writeResult = 1;
			end
			if (setCond == 1'b1) begin
				C = resultAux[32];
				N = resultAux[31];
				if (resultAux[31:0] == 32'd0) 
					Z = 1;
				else
					Z = 0;
				V = 0;//overflow is not needed
				end
			else begin
				C = 0;
				N = 0;
				Z = 0;
				V = 0;
			end 
			writeReg = writeResult;
			result = resultAux[31:0];
		end
		
		//https://faculty-web.msoe.edu/meier/ce1921/slidesets/isaarm-instructions.pdf
		//https://iitd-plos.github.io/col718/ref/arm-instructionset.pdf
	end

endmodule
