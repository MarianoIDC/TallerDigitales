module monedas7seg (input logic [11:0] cantidad,
						  output logic [6:0] disp1, 
					     output logic [6:0] disp2, 
					     output logic [6:0] disp3,
					     output logic [6:0] disp4);
	
	always_comb
			case (cantidad)
			12'd0100: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b111_1001;
					disp4 = 7'b100_0000; 
				end
			12'd0200: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b010_0100;
					disp4 = 7'b100_0000; 
				end
			12'd0300: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b011_0000;
					disp4 = 7'b100_0000; 
				end
			12'd0400: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b001_1001;
					disp4 = 7'b100_0000; 
				end
			12'd0500: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b001_0010;
					disp4 = 7'b100_0000; 
				end
			12'd0600: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b000_0010;
					disp4 = 7'b100_0000; 
				end
			12'd0700: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b111_1000;
					disp4 = 7'b100_0000; 
				end
			12'd0800: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b000_0000;
					disp4 = 7'b100_0000; 
				end
			12'd0900: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b001_0000;
					disp4 = 7'b100_0000; 
				end
			12'd1000: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b100_0000; 
					disp4 = 7'b111_1001;
				end
			12'd1100: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b111_1001; 
					disp4 = 7'b111_1001; 
				end
			12'd1200: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b010_0100;
					disp4 = 7'b111_1001;
				end
			12'd1300: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b011_0000;
					disp4 = 7'b111_1001; 
				end
			12'd1400: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b001_1001;
					disp4 = 7'b111_1001; 
				end
			12'd1500: 
				begin
					disp1 = 7'b100_0000; 
					disp2 = 7'b100_0000;
					disp3 = 7'b001_0010;
					disp4 = 7'b111_1001;
				end
			default
				begin
					disp1 = 7'b100_0000;
					disp2 = 7'b100_0000;
					disp3 = 7'b100_0000;
					disp4 = 7'b100_0000;
				end
			endcase
	
endmodule 