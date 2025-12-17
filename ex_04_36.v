`timescale 1ns/100ps

module priority_encoder(
    output x, y, V,
    input [3:0] D
);
    assign
        x = D[3] || D[2],
        y = D[3] || (D[1] && !(D[2])),
        V = D[0] || D[1] || D[2] || D[3]
    ;
endmodule