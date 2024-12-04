module jkjk (
    input j,        // J input
    input k,        // K input
    input clk,      // Clock input
    output q,       // Q output
    output qbar     // Complement of Q
);

    wire x, y, w, z;

    // Internal feedback connections
    assign w = q;
    assign z = qbar;

    // NAND gate logic for JK flip-flop
    nand n1(x, z, j, clk);  // x = ~(z & j & clk)
    nand n2(y, k, w, clk);  // y = ~(k & w & clk)
    nand n3(q, x, z);       // q = ~(x & z)
    nand n4(qbar, y, w);    // qbar = ~(y & w)

endmodule
