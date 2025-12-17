`timescale 1ns/100ps

module addsub_4bit(
    output [3:0] res,
    output carry_out,
    input [3:0] A, B,
    input M
);
    assign {carry_out, res} = A + (B ^ {4{M}}) + M;
endmodule;