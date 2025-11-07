module t_Circuit_ex_03_31_a;
  wire F;
  reg A, B, C, D;

  Circuit_ex_03_31_a M1 (A, B, C, D, F);

  initial
    begin
	  A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
      #10 D = 1'b1;

      #10 C = 1'b1;

      #10 A = 1'b1;
	end

  initial
    begin
	  $dumpfile("ex_03_31_a.vcd");
	  $dumpvars(0, t_Circuit_ex_03_31_a);
      #100 $finish;
    end

endmodule
