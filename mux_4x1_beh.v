`timescale 1ns/100ps

module mux_4x1_beh (
    output reg m_out,
    input i0, i1, i2, i3,
    input [1:0] select
);
    always @(i0, i1, i2, i3, select)
        case (select)
            2'b00: m_out = i0;
            2'b01: m_out = i1;
            2'b10: m_out = i2;
            2'b11: m_out = i3;
        endcase
endmodule