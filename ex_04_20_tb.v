module t_binary_multiplier_4bit_df;
    wire [7:0] Mult;
    reg [3:0] A;
    reg [3:0] B;

    binary_multiplier_4bit_df BM1 (Mult, A, B);

    initial
        begin
        A = 4'b0000; B = 4'b0000;
        #20 A = 4'b1111; B = 4'b1111;
    end

    initial
        begin
        $dumpfile("ex_04_20.vcd");
        $dumpvars(0, t_binary_multiplier_4bit_df);
        #100 $finish;
    end
endmodule