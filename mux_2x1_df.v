`timescale 1ns/100ps

module mux_2x1_df(
    output m_out,
    input A, B, S
);
    assign m_out = (S)? A : B;
endmodule