module t_ex_04_07;
    wire p, q, r, s;
    reg i0, i1, i2, i3;

    ex_04_07 M1 (p, q, r, s, i0, i1, i2, i3);

    initial
        begin
            i0 = 1'b1; i1 = 1'b0; i2 = 1'b0; i3 = 1'b0;
            #10 i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0;
            #10 i0 = 1'b0; i1 = 1'b0; i2 = 1'b1; i3 = 1'b0;
            #10 i0 = 1'b0; i1 = 1'b0; i2 = 1'b0; i3 = 1'b1;
        end

    initial
        begin
            $dumpfile("ex_04_07.vcd");
            $dumpvars(0, t_ex_04_07);
            #100 $finish;
        end
endmodule;