module contador  (input logic clk, rst, contar,
						output logic segs);

	always_ff @(posedge clk, negedge rst) begin
	  if(!rst) 
			segs = 0;
	  else if (contar) 
			segs = segs + 1;
	end
				
endmodule 