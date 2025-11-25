`timescale 1ns/100ps

module ex_04_07 (
    output reg p, q, r, s,
    input i0, i1, i2, i3
);
    always @(i0, i1, i2, i3)
        case ({i0, i1, i2, i3})
            4'b0000: {p, q, r, s} = 4'b0000;
            4'b0001: {p, q, r, s} = 4'b0001;
            4'b0011: {p, q, r, s} = 4'b0010;
            4'b0010: {p, q, r, s} = 4'b0011;
            4'b0110: {p, q, r, s} = 4'b0100;
            4'b0111: {p, q, r, s} = 4'b0101;
            4'b0101: {p, q, r, s} = 4'b0110;
            4'b0100: {p, q, r, s} = 4'b0111;
            4'b1100: {p, q, r, s} = 4'b1000;
            4'b1101: {p, q, r, s} = 4'b1001;
            4'b1111: {p, q, r, s} = 4'b1010;
            4'b1110: {p, q, r, s} = 4'b1011;
            4'b1010: {p, q, r, s} = 4'b1100;
            4'b1011: {p, q, r, s} = 4'b1101;
            4'b1001: {p, q, r, s} = 4'b1110;
            4'b1000: {p, q, r, s} = 4'b1111;
        endcase
endmodule