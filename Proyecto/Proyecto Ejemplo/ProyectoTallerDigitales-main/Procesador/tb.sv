`timescale 1 ps / 1 ps
module tb();
	
	logic clk = 1'b1;
	logic start = 1'b1;
	logic done;
	logic [31:0] result;
	
	reg [7:0] memoryAux [9999:0];

	integer i,f,j;
	
	main main(clk,start,done,result);
	
	always #50 clk = !clk;
	
	initial begin
		
		if (done == 1'b1) begin
		
		$display("done");
		
		$display("escribiendo");
		f = $fopen("mem_dump.txt","w");
		for (i = 0; i<100; i=i+1) begin
				for (j = 0; j<100; j=j+1) begin
					$display("memoryAux[j+(i*100)] %d", memoryAux[j+(i*100)]);
					$fwrite(f,"%d\n",memoryAux[j+(i*100)]);
				end
		end
		$fclose(f);  
		$stop;
		end
	end	
endmodule
