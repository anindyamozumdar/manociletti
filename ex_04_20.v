`timescale 1ns/100ps

module binary_multiplier_4bit_df(
    output [7:0] Mult,
    input [3:0] A, B
);
    assign Mult = A * B;
endmodule