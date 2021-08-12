module counterTB();

    parameter M = 6;
    parameter N = 4;
    parameter B = 2;

    logic clk, reset2, reset4, reset6;
    logic [B-1:0] q2;
    logic [N-1:0] q4;
    logic [M-1:0] q6;

    counterPNB #(2) counter2(clk, reset2, q2);
    counterPNB #(4) counter4(clk, reset4, q4);
    counterPNB #(6) counter6(clk, reset6, q6);
	 
    always begin
      clk = 0;
      #2;
      clk = 1;
      #2;
    end
	 
	 initial begin
      reset2 = 1;
      reset4 = 1;
      reset6 = 1;
      #2; // 2
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b000000) else   $error ("000000 failed.");

	  reset2 = 1;
      reset4 = 1;
      reset6 = 1;
      #2; // 4
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b000000) else   $error ("000000 failed.");

	  reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 6
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b000000) else   $error ("000000 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 8
      assert (q2 === 'b01) else   $error ("01 failed.");
      assert (q4 === 'b0001) else   $error ("0001 failed.");
      assert (q6 === 'b000001) else   $error ("000001 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 10
      assert (q2 === 'b01) else   $error ("01 failed.");
      assert (q4 === 'b0001) else   $error ("0001 failed.");
      assert (q6 === 'b000001) else   $error ("000001 failed.");

	  reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 12
      assert (q2 === 'b10) else   $error ("10 failed.");
      assert (q4 === 'b0010) else   $error ("0010 failed.");
      assert (q6 === 'b000010) else   $error ("000010 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 14
      assert (q2 === 'b10) else   $error ("10 failed.");
      assert (q4 === 'b0010) else   $error ("0010 failed.");
      assert (q6 === 'b000010) else   $error ("000010 failed.");

	  reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 16
      assert (q2 === 'b11) else   $error ("11 failed.");
      assert (q4 === 'b0011) else   $error ("0011 failed.");
      assert (q6 === 'b000011) else   $error ("000011 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 18
      assert (q2 === 'b11) else   $error ("11 failed.");
      assert (q4 === 'b0011) else   $error ("0011 failed.");
      assert (q6 === 'b000011) else   $error ("000011 failed.");

	  reset2 = 1;
      reset4 = 0;
      reset6 = 0;
      #2; // 20 
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0100) else   $error ("0100 failed.");
      assert (q6 === 'b000100) else   $error ("000100 failed.");

      reset2 = 1;
      reset4 = 0;
      reset6 = 0;
      #2; // 22
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0100) else   $error ("0100 failed.");
      assert (q6 === 'b000100) else   $error ("00100 failed.");

	  reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 24
      assert (q2 === 'b01) else   $error ("01 failed.");
      assert (q4 === 'b0101) else   $error ("0101 failed.");
      assert (q6 === 'b000101) else   $error ("000101 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 26
      assert (q2 === 'b01) else   $error ("01 failed.");
      assert (q4 === 'b0101) else   $error ("0101 failed.");
      assert (q6 === 'b000101) else   $error ("000101 failed.");

	  reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 28
      assert (q2 === 'b10) else   $error ("10 failed.");
      assert (q4 === 'b0110) else   $error ("0110 failed.");
      assert (q6 === 'b000110) else   $error ("000110 failed.");

	  reset2 = 1;
      reset4 = 0;
      reset6 = 0;
      #2; // 30
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0110) else   $error ("0110 failed.");
      assert (q6 === 'b000110) else   $error ("000110 failed.");

	  reset2 = 1; 
      reset4 = 0;
      reset6 = 0;
      #2; // 32
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0111) else   $error ("0111 failed.");
      assert (q6 === 'b000111) else   $error ("000111 failed.");

      reset2 = 0;
      reset4 = 0;
      reset6 = 0;
      #2; // 34
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b0111) else   $error ("0111 failed.");
      assert (q6 === 'b000111) else   $error ("000111 failed.");

      reset2 = 1;
      reset4 = 0;
      reset6 = 0;
      #2; // 36
      assert (q2 === 'b00) else   $error ("00 failed.");
      assert (q4 === 'b1000) else   $error ("1000 failed.");
      assert (q6 === 'b001000) else   $error ("001000 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 38
      assert (q4 === 'b1000) else   $error ("1000 failed.");
      assert (q6 === 'b001000) else   $error ("001000 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 40
      assert (q4 === 'b1001) else   $error ("1001 failed.");
      assert (q6 === 'b001001) else   $error ("001001 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 42
      assert (q4 === 'b1001) else   $error ("1001 failed.");
      assert (q6 === 'b001001) else   $error ("001001 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 44
      assert (q4 === 'b1010) else   $error ("1010 failed.");
      assert (q6 === 'b001010) else   $error ("001010 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 46
      assert (q4 === 'b1010) else   $error ("1010 failed.");
      assert (q6 === 'b001010) else   $error ("001010 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 48
      assert (q4 === 'b1011) else   $error ("1011 failed.");
      assert (q6 === 'b001011) else   $error ("001011 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 50
      assert (q4 === 'b1011) else   $error ("1011 failed.");
      assert (q6 === 'b001011) else   $error ("001011 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 52
      assert (q4 === 'b1100) else   $error ("1100 failed.");
      assert (q6 === 'b001100) else   $error ("001100 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 54
      assert (q4 === 'b001100) else   $error ("1100 failed.");
      assert (q6 === 'b001100) else   $error ("001100 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 56
      assert (q4 === 'b1101) else   $error ("1101 failed.");
      assert (q6 === 'b001101) else   $error ("001101 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 58
      assert (q4 === 'b1101) else   $error ("1101 failed.");
      assert (q6 === 'b001101) else   $error ("001101 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 60
      assert (q4 === 'b1110) else   $error ("1110 failed.");
      assert (q6 === 'b001110) else   $error ("001110 failed.");
      
      reset4 = 0;
      reset6 = 0;
      #2; // 62
      assert (q4 === 'b1110) else   $error ("1110 failed.");
      assert (q6 === 'b001110) else   $error ("001110 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 64
      assert (q4 === 'b1111) else   $error ("1111 failed.");
      assert (q6 === 'b001111) else   $error ("001111 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 66
      assert (q4 === 'b1111) else   $error ("1111 failed.");
      assert (q6 === 'b001111) else   $error ("001111 failed.");

      reset4 = 1;
      reset6 = 0;
      #2; // 68
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b010000) else   $error ("010000 failed.");

      reset4 = 1;
      reset6 = 0;
      #2; // 70
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b010000) else   $error ("010000 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 72
      assert (q4 === 'b0001) else   $error ("0001 failed.");
      assert (q6 === 'b010001) else   $error ("010001 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 74
      assert (q4 === 'b0001) else   $error ("0001 failed.");
      assert (q6 === 'b010001) else   $error ("010001 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 76
      assert (q4 === 'b0010) else   $error ("0010 failed.");
      assert (q6 === 'b010010) else   $error ("010010 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 78
      assert (q4 === 'b0010) else   $error ("0010 failed.");
      assert (q6 === 'b010010) else   $error ("010010 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 80
      assert (q4 === 'b0011) else   $error ("0011 failed.");
      assert (q6 === 'b010011) else   $error ("010011 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 82
      assert (q4 === 'b0011) else   $error ("0011 failed.");
      assert (q6 === 'b010011) else   $error ("010011 failed.");

      reset4 = 0;
      reset6 = 0;
      #2; // 84
      assert (q4 === 'b0100) else   $error ("0100 failed.");
      assert (q6 === 'b010100) else   $error ("010100 failed.");

      reset4 = 0;
      reset6 = 0; 
      #2; // 86
      assert (q4 === 'b0100) else   $error ("0100 failed.");
      assert (q6 === 'b010100) else   $error ("010100 failed.");

      reset4 = 1;
      reset6 = 0;
      #2; // 88
      assert (q4 === 'b0000) else   $error ("0000 failed.");
      assert (q6 === 'b010101) else   $error ("010101 failed.");

      reset6 = 0;
      assert (q6 === 'b010101) else   $error ("010101 failed.");
      #2; // 90

      reset6 = 0;
      #2; // 92
      assert (q6 === 'b010110) else   $error ("010110 failed.");

      reset6 = 0;
      #2; // 94
      assert (q6 === 'b010110) else   $error ("010110 failed.");

      reset6 = 0;
      #2; // 96
      assert (q6 === 'b010111) else   $error ("010111 failed.");

      reset6 = 0;
      #2; // 98
      assert (q6 === 'b010111) else   $error ("010111 failed.");

    end 
    
endmodule 