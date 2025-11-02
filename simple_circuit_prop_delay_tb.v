module t_Simple_Circuit_prop_delay;
  wire D, E;
  reg A, B, C;

  Simple_Circuit_prop_delay M1 (A, B, C, D, E);

  initial
    begin
	  A = 1'b0; B = 1'b0; C = 1'b0;
      #10 A = 1'b1; B = 1'b1; C = 1'b1;
	end

  initial
    begin
	  $dumpfile("simple_circuit_prop_delay.vcd");
	  $dumpvars(0, t_Simple_Circuit_prop_delay);
      #100 $finish;
    end

endmodule
