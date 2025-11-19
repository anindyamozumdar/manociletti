module t_mux_2x1_df;
    wire m_out;
    reg A, B, select;

    mux_2x1_df MX1 (m_out, A, B, select);

    initial
        begin
            A = 1'b0; B = 1'b0; select = 1'b0;
            #10 A = 1'b1; B = 1'b0; select = 1'b0;
            #10 A = 1'b1; B = 1'b1; select = 1'b1;
            #10 A = 1'b1; B = 1'b0; select = 1'b1;
        end

    initial
        begin
            $dumpfile("mux_2x1_df.vcd");
            $dumpvars(0, t_mux_2x1_df);
            #100 $finish;
        end
endmodule;