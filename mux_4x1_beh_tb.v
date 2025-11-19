module t_mux_4x1_beh;
    wire m_out;
    reg i0, i1, i2, i3;
    reg [1:0] s;

    mux_4x1_beh MX1 (m_out, i0, i1, i2, i3, s);

    initial
        begin
            i0 = 1'b1; i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; s = 2'b00;
            #10 i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; s = 2'b01;
            #10 i0 = 1'b0; i1 = 1'b0; i2 = 1'b1; i3 = 1'b0; s = 2'b10;
            #10 i0 = 1'b0; i1 = 1'b0; i2 = 1'b0; i3 = 1'b1; s = 2'b11;
        end

    initial
        begin
            $dumpfile("mux_4x1_beh.vcd");
            $dumpvars(0, t_mux_4x1_beh);
            #100 $finish;
        end
endmodule;