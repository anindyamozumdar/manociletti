`timescale 1ns/100ps

module mux_2x1_beh (m_out, A, B, select);
    output m_out;
    input A, B, select;
    reg m_out;

    always @(A or B or select)
        if (select == 1) m_out = A;
        else m_out = B;
endmodule