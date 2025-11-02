`timescale 1ns/100ps

primitive UDP_02467 (D, A, B, C);
  output D;
  input A, B, C;
  table
    0 0 0 : 1;
	0 0 1 : 0;
	0 1 0 : 1;
	0 1 1 : 0;
    1 0 0 : 1;
	1 0 1 : 0;
	1 1 0 : 1;
	1 1 1 : 1;
  endtable
endprimitive

module Circuit_with_UDP_02467 (E, F, G, A, B, C, D);
  output E, F, G;
  input A, B, C, D;

  assign E = A || (B && C) || ((!B) && D);
  assign F = ((!B) && C) || (B && (!C) && (!D));
  UDP_02467 (G, A, B, C);

endmodule
