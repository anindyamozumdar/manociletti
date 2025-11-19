module t_mag_compare_4_bit_df;
    wire A_lt_B, A_eq_B, A_gt_B;
    reg [3:0] A, B;

    mag_compare_4bit_df MC1 (A_lt_B, A_eq_B, A_gt_B, A, B);

    initial
        begin
        A = 4'b0000; B = 4'b0000;
        #10 A = 4'b1000; B = 4'b0001;
        #10 A = 4'b1000; B = 4'b0001;
        #10 A = 4'b1000; B = 4'b1111;
    end

    initial
        begin
        $dumpfile("mag_compare_4bit_df.vcd");
        $dumpvars(0, t_mag_compare_4_bit_df);
        #100 $finish;
    end
endmodule