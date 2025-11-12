`timescale 1ns/100ps

module Circuit_ex_03_34 (Out1, Out2, Out3, A, B, C, D);
  output Out1, Out2, Out3;
  input A, B, C, D;

  assign Out1 = (A || (!B)) && (!C) && (C || D);
  assign Out2 = ((!A) || B) && (((!C) && D) || (B && C && D) || (C && (!D)));
  assign Out3 = (((A && B) || C) && D) || ((!B) && C);

endmodule
