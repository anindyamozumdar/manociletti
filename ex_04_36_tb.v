module t_priority_encoder;
    wire t_x, t_y, t_V;
    reg [3:0] t_D;

    priority_encoder PE1(t_x, t_y, t_V, t_D);

    initial
    begin
        t_D = 4'b0000;
        #10 t_D = 4'b1000;
        #10 t_D = 4'b1010;
        #10 t_D = 4'b0010;
        #10 t_D = 4'b0100;
        #10 t_D = 4'b0001;
        #10 t_D = 4'b0101;
    end;

    initial
    begin
        $dumpfile("ex_04_36.vcd");
        $dumpvars(0, t_priority_encoder);
        #100 $finish;
    end;
endmodule