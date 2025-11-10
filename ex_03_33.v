`timescale 1ns/100ps

module Circuit_ex_03_33 (X, A, B);

  output X;
  input A, B;
  wire w1, w2, w3, w4, w5;

  not #(3) G1 (w1, A);
  not #(3) G2 (w2, B);
  and #(6) G3 (w3, A, w2);
  and #(6) G4 (w4, B, w1);
  or #(8) G5 (w5, w3, w4);

endmodule
