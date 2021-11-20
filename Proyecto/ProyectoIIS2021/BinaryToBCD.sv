module BinaryToBCD(input logic clk, en, input logic [7:0] entrada, 
						output reg [11:0] salida, output reg fin);

//Variables de la máquina de estado
parameter IDLE = 3'b000;
parameter SETUP = 3'b001;
parameter ADD = 3'b010;
parameter SHIFT = 3'b011;
parameter DONE = 3'b100;

//Variables para ejecutar el algoritmo
logic [19:0] bcd_data = 0;
logic [2:0] state = 0;
logic busy = 0;
logic [2:0] counter = 0;
logic ready = 0;

always @(posedge clk)
	begin
		if (en) begin
			if (!busy) begin
				bcd_data = {12'b00, entrada};
				state = SETUP;
			end	
		end
		case(state)
			IDLE:
				begin
					ready = 0;
					busy = 0;
				end
			SETUP:
				begin
					busy = 1;
					state = ADD;
				end
			ADD:
				begin 
					if (bcd_data [11:8] > 3'b100) begin
						bcd_data [19:8] = bcd_data [19:8] + 2'b11;
					end
					if (bcd_data [15:12] > 3'b100) begin
						bcd_data [19:16] = bcd_data [19:12] + 2'b11;
					end
					if (bcd_data [19:16] > 3'b100) begin
						bcd_data [19:16] = bcd_data [19:16] + 2'b11;
					end
				state = SHIFT;
				end
			SHIFT:
				begin
					counter = counter + 1'b1;
					bcd_data = bcd_data << 1;
					if (counter == 3'b111) begin
						counter = 0;
						state = DONE;
					end
					else begin
						state = ADD;
					end
				end
			DONE:
				begin
					ready = 1;
					state = IDLE;
				end
			default:
				begin
					state = IDLE;
				end
		endcase
	end

assign salida = bcd_data[19:8];
assign fin = ready;

endmodule
