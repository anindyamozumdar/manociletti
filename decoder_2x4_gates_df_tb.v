module t_decoder_2x4_gates_df;
    wire [0:3] D;
    reg A, B;
    reg enable;

    decoder_2x4_gates_df M1 (D, A, B, enable);

    initial
        begin
            A = 1'b1; B = 1'b0; enable = 1'b0;
    end

    initial
        begin
        $dumpfile("decoder_2x4_gates_df.vcd");
        $dumpvars(0, t_decoder_2x4_gates_df);
        #100 $finish;
    end

endmodule
