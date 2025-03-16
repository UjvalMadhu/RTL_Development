module fa(
    input a,
    input b,
    input c_in,
    output sum,
    output c_out
);  

    wire gen;
    wire prop;

    assign gen  = a & b;
    assign prop = a ^ b;

    assign sum   = prop ^ c_in;
    assign c_out = gen | prop & c_in;

endmodule
