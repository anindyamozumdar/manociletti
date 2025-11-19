module t_mux_tri;
    wire m_out;
    reg A, B, select;

    mux_tri MX1 (m_out, A, B, select);

    initial
        begin
            A = 1'b0; B = 1'b0; select = 1'b0;
            #10 A = 1'b1; B = 1'b0; select = 1'b0;
            #10 A = 1'b1; B = 1'b1; select = 1'b1;
            #10 A = 1'b1; B = 1'b0; select = 1'b1;
        end

    initial
        begin
            $dumpfile("mux_tri.vcd");
            $dumpvars(0, t_mux_tri);
            #100 $finish;
        end
endmodule;