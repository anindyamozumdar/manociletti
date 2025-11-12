module t_Circuit_ex_03_34;
  wire Out1, Out2, Out3;
  reg A, B, C, D;

  Circuit_ex_03_34 M1 (Out1, Out2, Out3, A, B, C, D);

  initial
    begin
	  A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
      #10 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
      #10 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
      #10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
	end

  initial
    begin
	  $dumpfile("circuit_ex_03_34.vcd");
	  $dumpvars(0, t_Circuit_ex_03_34);
      #100 $finish;
    end

endmodule
