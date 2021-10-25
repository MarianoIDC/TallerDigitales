module registers(clk,enable,
						rwA,rwB,rwPc,rwResult,//A,B,Rs son operandos
						dataInA,dataInB,dataInPc,resultIn,
					   getPc,getResult,
						addressA,addressB,addressResult,
						Aout,Bout,Pcout,resultOut);
	
	input logic clk,enable;
	input logic rwA,rwB,rwPc,rwResult;
	input logic [31:0] dataInA,dataInB,dataInPc,resultIn;
	input logic getPc,getResult;
	input logic [3:0] addressA, addressB, addressResult;
	output logic [31:0] Aout,Bout,Pcout,resultOut;
	
	logic [31:0] r0 = 32'b0;
	logic [31:0] r1 = 32'b0;
	logic [31:0] r2 = 32'b0;
	logic [31:0] r3 = 32'b0;
	logic [31:0] r4 = 32'b0;
	logic [31:0] r5 = 32'b0;
	logic [31:0] r6 = 32'b0;
	logic [31:0] r7 = 32'b0;
	logic [31:0] r8 = 32'b0;
	logic [31:0] r9 = 32'b0;
	logic [31:0] r10 = 32'b0;
	logic [31:0] r11 = 32'b0;
	logic [31:0] r12 = 32'b0;
	logic [31:0] r13 = 32'b0;
	logic [31:0] r14 = 32'b0;
	logic [31:0] r15 = 32'b0;
	logic [31:0] r16 = 32'b0;//pc
	
	logic [31:0] dataAuxA  = 32'b0;
	logic [31:0] dataAuxB = 32'b0;
	logic [31:0] dataAuxPc = 32'b0;
	logic [31:0] dataAuxResult = 32'b0;
	logic [31:0] dataRs = 32'b0;
	
	always @ (posedge clk) begin
		if (enable == 1) begin
		
			if (addressA == 4'd0) begin
				if (rwA == 1)
					r0 = dataInA;
			end
			else if (addressA == 4'd1) begin
				if (rwA == 1)
					r1 = dataInA;
			end
			else if (addressA == 4'd2) begin
				if (rwA == 1)
					r2 = dataInA;
			end
			else if (addressA == 4'd3) begin
				if (rwA == 1)
					r3 = dataInA;
			end
			else if (addressA == 4'd4) begin
				if (rwA == 1)
					r4 = dataInA;
			end
			else if (addressA == 4'd5) begin
				if (rwA == 1)
					r5 = dataInA;
			end
			else if (addressA == 4'd6) begin
				if (rwA == 1)
					r6 = dataInA;
			end
			else if (addressA == 4'd7) begin	
				if (rwA == 1)
					r7 = dataInA;
			end
			else if (addressA == 4'd8) begin
				if (rwA == 1)
					r8 = dataInA;
			end
			else if (addressA == 4'd9) begin
				if (rwA == 1)
					r9 = dataInA;
			end
			else if (addressA == 4'd10) begin
				if (rwA == 1)
					r10 = dataInA;
			end
			else if (addressA == 4'd11) begin
				if (rwA == 1)
					r11 = dataInA;
			end
			else if (addressA == 4'd12) begin
				if (rwA == 1)
					r12 = dataInA;
			end
			else if (addressA == 4'd13) begin
				if (rwA == 1)
					r13 = dataInA;
			end
			else if (addressA == 4'd14) begin
				if (rwA == 1)
					r14 = dataInA;
			end
			else if (addressA == 4'd15) begin
				if (rwA == 1)
					r15 = dataInA;
			end
			
			if (addressB == 4'd0) begin
				if (rwB == 1)
					r0 = dataInB;
			end
			else if (addressB == 4'd1) begin
				if (rwB == 1)
					r1 = dataInB;
			end
			else if (addressB == 4'd2) begin
				if (rwB == 1)
					r2 = dataInB;
			end
			else if (addressB == 4'd3) begin
				if (rwB == 1)
					r3 = dataInB;
			end
			else if (addressB == 4'd4) begin
				if (rwB == 1)
					r4 = dataInB;
			end
			else if (addressB == 4'd5) begin
				if (rwB == 1)
					r5 = dataInB;
			end
			else if (addressB == 4'd6) begin
				if (rwB == 1)
					r6 = dataInB;
			end
			else if (addressB == 4'd7) begin	
				if (rwB == 1)
					r7 = dataInB;
			end
			else if (addressB == 4'd8) begin
				if (rwB == 1)
					r8 = dataInB;
			end
			else if (addressB == 4'd9) begin
				if (rwB == 1)
					r9 = dataInB;
			end
			else if (addressB == 4'd10) begin
				if (rwB == 1)
					r10 = dataInB;
			end
			else if (addressB == 4'd11) begin
				if (rwB== 1)
					r11 = dataInB;
			end
			else if (addressB == 4'd12) begin
				if (rwB == 1)
					r12 = dataInB;
			end
			else if (addressB == 4'd13) begin
				if (rwB == 1)
					r13 = dataInB;
			end
			else if (addressB == 4'd14) begin
				if (rwB == 1)
					r14 = dataInB;
			end
			else if (addressB == 4'd15) begin
				if (rwB == 1)
					r15 = dataInB;
			end
			
			if (addressResult == 4'd0) begin
				if (rwResult == 1)
					r0 = resultIn;
			end
			else if (addressResult == 4'd1) begin
				if (rwResult == 1)
					r1 = resultIn;
			end
			else if (addressResult == 4'd2) begin
				if (rwResult == 1)
					r2 = resultIn;
			end
			else if (addressResult == 4'd3) begin
				if (rwResult == 1)
					r3 = dataInB;
			end
			else if (addressResult == 4'd4) begin
				if (rwResult == 1)
					r4 = resultIn;
			end
			else if (addressResult == 4'd5) begin
				if (rwResult == 1)
					r5 = resultIn;
			end
			else if (addressResult == 4'd6) begin
				if (rwResult == 1)
					r6 = resultIn;
			end
			else if (addressResult == 4'd7) begin	
				if (rwResult == 1)
					r7 = resultIn;
			end
			else if (addressResult == 4'd8) begin
				if (rwResult == 1)
					r8 = resultIn;
			end
			else if (addressResult == 4'd9) begin
				if (rwResult == 1)
					r9 = resultIn;
			end
			else if (addressResult == 4'd10) begin
				if (rwResult == 1)
					r10 = resultIn;
			end
			else if (addressResult == 4'd11) begin
				if (rwResult== 1)
					r11 = resultIn;
			end
			else if (addressResult == 4'd12) begin
				if (rwResult == 1)
					r12 = resultIn;
			end
			else if (addressResult == 4'd13) begin
				if (rwResult == 1)
					r13 = resultIn;
			end
			else if (addressResult == 4'd14) begin
				if (rwResult == 1)
					r14 = resultIn;
			end
			else if (addressResult == 4'd15) begin
				if (rwResult == 1)
					r15 = resultIn;
			end

			if (rwPc == 1'b1) begin
				r16 = dataInPc;
			end
			
			

		end
	end
	
	always @ (negedge clk) begin
			if (addressA == 4'd0) begin
				dataAuxA = r0;
			end
			else if (addressA == 4'd1) begin
				dataAuxA = r1;
			end
			else if (addressA == 4'd2) begin
				dataAuxA = r2;
			end
			else if (addressA == 4'd3) begin
				dataAuxA = r3;
			end
			else if (addressA == 4'd4) begin
			   dataAuxA = r4;
			end
			else if (addressA == 4'd5) begin
			   dataAuxA = r5;
			end
			else if (addressA == 4'd6) begin
			   dataAuxA = r6;
			end
			else if (addressA == 4'd7) begin	
			   dataAuxA = r7;
			end
			else if (addressA == 4'd8) begin
			   dataAuxA = r8;
			end
			else if (addressA == 4'd9) begin
			   dataAuxA = r9;
			end
			else if (addressA == 4'd10) begin
			   dataAuxA = r10;
			end
			else if (addressA == 4'd11) begin
		      dataAuxA = r11;
			end
			else if (addressA == 4'd12) begin
		      dataAuxA = r12;
			end
			else if (addressA == 4'd13) begin
		      dataAuxA = r13;
			end
			else if (addressA == 4'd14) begin
		      dataAuxA = r14;
			end
			else if (addressA == 4'd15) begin
		      dataAuxA = r15;
			end
			
			if (addressB == 4'd0) begin
				dataAuxB = r0;
			end
			else if (addressB == 4'd1) begin
				dataAuxB = r1;
			end
			else if (addressB == 4'd2) begin
				dataAuxB = r2;
			end
			else if (addressB == 4'd3) begin
				dataAuxB = r3;
			end
			else if (addressB == 4'd4) begin
			   dataAuxB = r4;
			end
			else if (addressB == 4'd5) begin
			   dataAuxB = r5;
			end
			else if (addressB == 4'd6) begin
			   dataAuxB = r6;
			end
			else if (addressB == 4'd7) begin	
			   dataAuxB = r7;
			end
			else if (addressB == 4'd8) begin
			   dataAuxB = r8;
			end
			else if (addressB == 4'd9) begin
			   dataAuxB = r9;
			end
			else if (addressB == 4'd10) begin
			   dataAuxB = r10;
			end
			else if (addressB == 4'd11) begin
		      dataAuxB = r11;
			end
			else if (addressB == 4'd12) begin
		      dataAuxB = r12;
			end
			else if (addressB == 4'd13) begin
		      dataAuxB = r13;
			end
			else if (addressB == 4'd14) begin
		      dataAuxB = r14;
			end
			else if (addressB == 4'd15) begin
		      dataAuxB = r15;
			end
			
			if (addressResult == 4'd0) begin
				dataAuxResult = r0;
			end
			else if (addressResult == 4'd1) begin
				dataAuxResult = r1;
			end
			else if (addressResult == 4'd2) begin
				dataAuxResult = r2;
			end
			else if (addressResult == 4'd3) begin
				dataAuxResult = r3;
			end
			else if (addressResult == 4'd4) begin
			   dataAuxResult = r4;
			end
			else if (addressResult == 4'd5) begin
			   dataAuxResult = r5;
			end
			else if (addressResult == 4'd6) begin
			   dataAuxResult = r6;
			end
			else if (addressResult == 4'd7) begin	
			   dataAuxResult = r7;
			end
			else if (addressResult == 4'd8) begin
			   dataAuxResult = r8;
			end
			else if (addressResult == 4'd9) begin
			   dataAuxResult = r9;
			end
			else if (addressResult == 4'd10) begin
			   dataAuxResult = r10;
			end
			else if (addressResult == 4'd11) begin
		      dataAuxResult = r11;
			end
			else if (addressResult == 4'd12) begin
		      dataAuxResult = r12;
			end
			else if (addressResult == 4'd13) begin
		      dataAuxResult = r13;
			end
			else if (addressResult == 4'd14) begin
		      dataAuxResult = r14;
			end
			else if (addressResult == 4'd15) begin
		      dataAuxResult = r13;
			end
		
			if (getPc == 1'b1) begin
				dataAuxPc = r16;
			end

		Aout = dataAuxA;
		Bout = dataAuxB;
		Pcout = dataAuxPc;
		resultOut = dataAuxResult;

	end
	
endmodule
