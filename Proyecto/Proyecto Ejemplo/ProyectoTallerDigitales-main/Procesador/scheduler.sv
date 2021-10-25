//
module scheduler(
			clk,
			startProc,
			doneProc,
			flagEnableAlu,flagEnableIO,flagEnableBX,
			setCond,
			evaluacion,rwRam,
			enableGetPC,enableRomRead,enableDecoder,enableEval,enableRegRead,
			enableAlu,enableRegWrite,enableBX,enableIncPC,enableRam,
			flagDone
	);

	
	input clk,startProc,doneProc;
	input rwRam,evaluacion,setCond;
	input flagEnableIO,flagEnableBX,flagEnableAlu;
	output enableGetPC,enableRomRead,enableDecoder,enableEval,enableRegRead,enableAlu,enableRegWrite,enableBX,enableIncPC,enableRam,flagDone;
	
	logic [7:0] actualState = 4'd0;
	logic [7:0] nextState;
	logic [7:0] initialState = 4'd0;
	
	logic [7:0] getPC = 4'd1;
	logic [7:0] readRom = 4'd2;
	logic [7:0] decodeIns = 4'd3;
	logic [7:0] condEval = 4'd4;
	logic [7:0] fetch = 4'd5;
	logic [7:0] alu = 4'd6;
	logic [7:0] ram = 4'd7;
	logic [7:0] bx = 4'd8;
	logic [7:0] writeReg = 4'd9;
	logic [7:0] incrementPC = 4'd10;
	logic [7:0] doneState = 4'd11;
	
	always @ (posedge clk) begin
		if (actualState == initialState && startProc == 1'b1)
			nextState = getPC;
			
		else if (actualState == getPC)
			nextState = readRom;
			
		else if (actualState == getPC && doneProc == 1'b1)
			nextState = doneState;		
			
		else if (actualState == readRom)
			nextState = decodeIns;
		
		else if (actualState == decodeIns && doneProc == 1'b1)
			nextState = doneState;
			
		else if (actualState == decodeIns && (setCond == 1'b0 || flagEnableBX == 1'b1) )
			nextState = condEval;
		
		else if (actualState == decodeIns && (setCond == 1'b1 || flagEnableBX == 1'b1) )
			nextState = fetch;
		
		else if (actualState == condEval && evaluacion == 1'b0)
			nextState = incrementPC;
			
		else if (actualState == condEval && evaluacion == 1'b1)
			nextState = fetch;
			
		else if (actualState == fetch && flagEnableAlu == 1'b1)
			nextState = alu;
			
		else if (actualState == fetch && flagEnableBX == 1'b1)
			nextState = incrementPC;
		
		else if (actualState == fetch && flagEnableIO == 1'b1)
			nextState = ram;
			
		else if (actualState == alu && setCond == 1'b1)
			nextState = incrementPC;	
		
		else if (actualState == alu && setCond == 1'b0)
			nextState = writeReg;	
		
		else if (actualState == writeReg && flagEnableBX == 1'b0)
			nextState = incrementPC;	
			
		else if (actualState == writeReg && flagEnableBX == 1'b1)
			nextState = getPC;	
			
		else if (actualState == incrementPC)
			nextState = getPC;

		else if (actualState == ram && rwRam == 1'b1)
			nextState = writeReg;
			
		else if (actualState == ram && rwRam == 1'b0)
			nextState = incrementPC;
			
		else if (actualState == bx)
			nextState = writeReg;
			
	end
	
	always @ (negedge clk) begin
		actualState = nextState;
	end
	
	assign enableGetPC = (nextState == getPC) ? 1'b1 : 1'b0;
	
	assign enableRomRead = (nextState == readRom) ? 1'b1 : 1'b0;
	
	assign enableDecoder = (nextState == decodeIns) ? 1'b1 : 1'b0;
	
	assign enableEval = (nextState == condEval) ? 1'b1 : 1'b0;
	
	assign enableRegRead = (nextState == fetch) ? 1'b1 : 1'b0;
	
	assign enableAlu = (nextState == alu) ? 1'b1 : 1'b0;
	
	assign enableRegWrite = (nextState == writeReg) ? 1'b1 : 1'b0;
	
	assign enableBX = (nextState == bx) ? 1'b1 : 1'b0;
	
	assign enableIncPC = (nextState == incrementPC) ? 1'b1 : 1'b0;
	
	assign enableRam = (nextState == ram) ? 1'b1 : 1'b0;
	
	assign flagDone = (nextState == doneState) ? 1'b1 : 1'b0;
	
endmodule