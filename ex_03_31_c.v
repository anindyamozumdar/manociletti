`timescale 1ns/100ps

module Circuit_ex_03_31_c (A, B, C, D, F);

  output F;
  input A, B, C, D;
  wire w1, w2, w3, w4, w5, w6, w7;

  not G1 (w1, B);
  and G2 (w2, A, w1);
  not G3 (w3, A);
  and G4 (w4, B, w3);
  or G5 (w5, w2, w4);
  not G6 (w6, D);
  or G7 (w7, C, w6);
  and G8 (F, w5, w7);

endmodule
