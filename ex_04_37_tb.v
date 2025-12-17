module t_addsub_4bit;
    wire [3:0] t_res;
    wire t_carry_out;
    reg [3:0] t_A, t_B;
    reg t_M;

    addsub_4bit AS4(t_res, t_carry_out, t_A, t_B, t_M);

    initial
    begin
        t_A = 4'b0010; t_B = 4'b0010; t_M = 1'b0;
        #10 t_A = 4'b0010; t_B = 4'b0010; t_M = 1'b1;
    end;

    initial
    begin
        $dumpfile("ex_04_37.vcd");
        $dumpvars(0, t_addsub_4bit);
        #100 $finish;
    end;
endmodule