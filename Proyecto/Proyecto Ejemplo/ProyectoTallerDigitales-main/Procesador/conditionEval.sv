module conditionEval(clk,enable,evaluation,condition,V,N,Z,C);
	
	input clk,enable;
	input [3:0] condition;
	input V,N,Z,C;
	
	output evaluation;

	logic evalAux = 1'b0;
	logic [3:0] value;

	logic [3:0] EQ = 4'b0000;
	logic [3:0] NE = 4'b0001;
	logic [3:0] CS = 4'b0010;
	logic [3:0] CC = 4'b0011;
	logic [3:0] MI = 4'b0100;
	logic [3:0] PL = 4'b0101;
	logic [3:0] VS = 4'b0110;
	logic [3:0] VC = 4'b0111;
	logic [3:0] HI = 4'b1000;
	logic [3:0] LS = 4'b1001;
	logic [3:0] GE = 4'b1010;
	logic [3:0] LT = 4'b1011;
	logic [3:0] GT = 4'b1100;
	logic [3:0] LE = 4'b1101;
	logic [3:0] AL = 4'b1110;
	
	always @ (posedge clk) begin
		if (enable == 1) begin
			if (condition == AL) begin
				evalAux = 1'b1;
			end
			else begin
				if (condition == EQ && Z == 1'b1)
					evalAux = 1'b1;
				else if (condition == EQ && Z == 1'b0)
					evalAux = 1'b0;
				else if (condition == NE && Z == 1'b0)
					evalAux = 1'b1;
				else if (condition == NE && Z == 1'b1)
					evalAux = 1'b0;
				else if (condition == CS && C == 1'b1)
					evalAux = 1'b1;
				else if (condition == CS && C == 1'b0)
					evalAux = 1'b0;
				else if (condition == CC && C == 1'b0)
					evalAux = 1'b1;
				else if (condition == CC && C == 1'b1)
					evalAux = 1'b0;
				else if (condition == MI && N == 1'b1)
					evalAux = 1'b1;
				else if (condition == MI && N == 1'b0)
					evalAux = 1'b0;
				else if (condition == PL && N == 1'b0)
					evalAux = 1'b1;
				else if (condition == PL && N == 1'b1)
					evalAux = 1'b0;
				else if (condition == VS && V == 1'b1)
					evalAux = 1'b1;
				else if (condition == VS && V == 1'b0)
					evalAux = 1'b0;
				else if (condition == VC && V == 1'b0)
					evalAux = 1'b1;
				else if (condition == VC && V == 1'b1)
					evalAux = 1'b0;
				else if (condition == HI && (C == 1'b1 && Z == 1'b0))
					evalAux = 1'b1;
				else if (condition == HI && !(C == 1'b1 && Z == 1'b0))
					evalAux = 1'b0;
				else if (condition == LS && (C == 1'b0 || Z == 1'b1))
					evalAux = 1'b1;
				else if (condition == LS && !(C == 1'b0 || Z == 1'b1))
					evalAux = 1'b0;
				else if (condition == GE && N == V)
					evalAux = 1'b1;
				else if (condition == GE && N != V)
					evalAux = 1'b0;
				else if (condition == LT && N != V)
					evalAux = 1'b1;
				else if (condition == LT && N == V)
					evalAux = 1'b0;
				else if (condition == GT && (Z == 1'b0 && (N == V)))
					evalAux = 1'b1;
				else if (condition == GT && !(Z == 1'b0 && (N == V)))
					evalAux = 1'b0;
				else if (condition == LE && (Z == 1'b1 || (N != V)))
					evalAux = 1'b1;
				else if (condition == LE && !(Z == 1'b1 || (N != V)))
					evalAux = 1'b0;
			end
			
		end
	end
	
	assign evaluation = evalAux;
	
endmodule
