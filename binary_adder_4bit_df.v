`timescale 1ns/100ps

module binary_adder_4bit_df(
    output [3:0] Sum,
    output Carry_Out,
    input [3:0] A, B,
    input Carry_In
);
    assign {Carry_Out, Sum} = A + B + Carry_In;
endmodule