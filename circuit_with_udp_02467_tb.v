module t_Circuit_with_UDP_02467;
  wire E, F, G;
  reg A, B, C, D;

  Circuit_with_UDP_02467 M1 (E, F, G, A, B, C, D);

  initial
    begin
	  A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
      #10 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
	end

  initial
    begin
	  $dumpfile("circuit_with_udp_02467.vcd");
	  $dumpvars(0, t_Circuit_with_UDP_02467);
      #100 $finish;
    end

endmodule
