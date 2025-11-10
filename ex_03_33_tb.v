module t_Circuit_ex_03_33;
  wire X;
  reg A, B;

  Circuit_ex_03_33 M1 (X, A, B);

  initial
    begin
	  A = 1'b0; B = 1'b0;
      #20 A = 1'b0; B = 1'b1;
	end

  initial
    begin
	  $dumpfile("ex_03_33.vcd");
	  $dumpvars(0, t_Circuit_ex_03_33);
      #100 $finish;
    end

endmodule
