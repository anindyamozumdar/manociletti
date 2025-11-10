`timescale 1ns/100ps

module Circuit_ex_03_32_b (F, A, B, C, D);
  output F;
  input A, B, C, D;

  assign F = !(!((!(!(C && D)) || !(!B)) && A)) || !(!(B && !C));

endmodule
