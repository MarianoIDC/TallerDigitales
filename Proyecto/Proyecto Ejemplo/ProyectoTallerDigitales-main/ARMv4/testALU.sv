module testALU();
   logic [3:0] A, B, R;
   logic [3:0] ALUControl;
   logic Z, N, V, C;

   ALU DUT(A, B, ALUControl, R, Z, N, V, C);

   initial begin 
      $display("---------------SUMADOR---------------");
      #10 A = 4'b0100; B = 4'b0011; ALUControl = 4'b0000;
      #1
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0111) else $error ("0111 failed.");

      #10 A = 4'b0010; B = 4'b0000; ALUControl = 4'b0000;
      #1
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      #10 A = 4'b1000; B = 4'b0010;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b1010) else $error ("1010 failed.");

      #10 A = 4'b1000; B = 4'b1010;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      $display("---------------RESTADOR---------------");
      #10 A = 4'b0000; B = 4'b0000; ALUControl = 4'b0001;
      #1
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0111) else $error ("0111 failed.");

      #10 A = 4'b0000; B = 4'b1111; ALUControl = 4'b0001;
      #1
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      #10 A = 4'b1111; B = 4'b0000;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b1010) else $error ("1010 failed.");

      #10 A = 4'b1111; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      #10 A = 4'b0110; B = 4'b0001;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      #10 A = 4'b0001; B = 4'b0111;
      #1 
      $display("A = %b, B = %b, ALUControl = %b, R = %b\n", A, B, ALUControl, R);
      // assert (R === 'b0010) else $error ("0010 failed.");

      $display("---------------AND GATE---------------");
      #10 A = 4'b0100; B = 4'b0110; ALUControl = 4'b0110; 
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0100) else $error ("0100 failed.");

      #10 A = 4'b1111; B = 4'b0110;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0110) else $error ("0110 failed.");

      #10 A = 4'b0000; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0000) else $error ("0000 failed.");

      #10 A = 4'b1010; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1010) else $error ("1010 failed.");

      $display("---------------OR GATE---------------");
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      #10 ALUControl = 4'b0111; A = 4'b1101; B = 4'b1010;
      #1 
      assert (R === 'b1111) else $error ("1111 failed.");
      #10 A = 4'b1010; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1111) else $error ("1111 failed.");
      #10 A = 4'b0101; B = 4'b1101;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1101) else $error ("1101 failed.");
      #10 A = 4'b1000; B = 4'b1001;
      #1
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1001) else $error ("1001 failed.");

      $display("---------------XOR GATE---------------");
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      #10 ALUControl = 4'b1000; A = 4'b0000; B = 4'b1111;
      #1 
      assert (R === 'b1111) else $error ("1111 failed.");
      #10 A = 4'b1101; B = 4'b1010;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0111) else $error ("0111 failed.");
      #10 A = 4'b1010; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0101) else $error ("0101 failed.");
      #10 A = 4'b0101; B = 4'b1111;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1010) else $error ("1010 failed.");

      $display("---------------SHIFT LEFT---------------");
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      #10 ALUControl = 4'b0100; A = 4'b1000; B = 4'b0001;
      #1 
      assert (R === 'b0000) else $error ("0000 failed.");

      #10 A = 4'b0110; B = 4'b0001;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1100) else $error ("1100 failed.");

      #10 A = 4'b1010; B = 4'b0010;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b1000) else $error ("0101 failed.");

      #10 A = 4'b0101; B = 4'b0010;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0100) else $error ("1010 failed.");

      $display("---------------SHIFT RIGHT---------------");
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      #10 ALUControl = 4'b0101; A = 4'b0010; B = 4'b0001;
      #1 
      assert (R === 'b0001) else $error ("0001 failed.");

      #10 A = 4'b1101; B = 4'b0010;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0011) else $error ("0011 failed.");

      #10 A = 4'b1010; B = 4'b0001;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0101) else $error ("0101 failed.");

      #10 A = 4'b0101; B = 4'b0010;
      #1 
      $display("A = %b, B = %b, R = %b\n", A, B, R);
      assert (R === 'b0001) else $error ("0001 failed.");

   end

endmodule 