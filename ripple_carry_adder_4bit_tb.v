module t_ripple_carry_adder_4bit;
    wire [3:0] Sum;
    wire Carry;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;

    ripple_carry_adder_4bit RCA1 (Sum, Carry, A, B, C0);

    initial
        begin
        A = 4'b0000; B = 4'b0000; C0 = 0;
        #10 A = 4'b1000; B = 4'b0001; C0 = 0;
        #10 A = 4'b1000; B = 4'b0001; C0 = 1;
        #10 A = 4'b1000; B = 4'b1111; C0 = 0;
    end

    initial
        begin
        $dumpfile("ripple_carry_adder_4bit.vcd");
        $dumpvars(0, t_ripple_carry_adder_4bit);
        #100 $finish;
    end
endmodule