module t_binary_adder_4bit_df;
    wire [3:0] Sum;
    wire Carry;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;

    binary_adder_4bit_df BA1 (Sum, Carry, A, B, C0);

    initial
        begin
        A = 4'b0000; B = 4'b0000; C0 = 0;
        #10 A = 4'b1000; B = 4'b0001; C0 = 0;
        #10 A = 4'b1000; B = 4'b0001; C0 = 1;
        #10 A = 4'b1000; B = 4'b1111; C0 = 0;
    end

    initial
        begin
        $dumpfile("binary_adder_4bit_df.vcd");
        $dumpvars(0, t_binary_adder_4bit_df);
        #100 $finish;
    end
endmodule