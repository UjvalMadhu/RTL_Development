///////////////////////////////////////////////////////////////////////////////////
///                      4-Bit Carry Look Ahead Adder                           ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   CLA Module:  4-Bit Implementation of the Carry Lookahead Adder (CLA)      ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: cla.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module cla_4b(
    input [3:0] a,
    input [3:0] b,
    input c0,      // Carry In
    output [3:0] sum,
    output c_out
);

wire [3:0] p, g;   // Propagate and Generate Bits for each bit position
wire [4:0] c;      // Carry out for each bit

assign c[0] = c0;

assign  p[0] = a[0] ^ b[0],
        p[1] = a[1] ^ b[1],
        p[2] = a[2] ^ b[2],
        p[3] = a[3] ^ b[3];

assign  g[0] = a[0] & b[0],
        g[1] = a[1] & b[1],
        g[2] = a[2] & b[2],
        g[3] = a[3] & b[3];

assign  c[1] = g[0] | (p[0] & c[0]),
        c[2] = g[1] | (p[1] & (g[0] | (p[0] & c[0]))),
        c[3] = g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & c[0]))))),
        c[4] = g[3] | (p[3] & (g[2] | (p[2] & (g[1] | (p[1] & (g[0] | (p[0] & c[0])))))));

assign  sum[0] = p[0] ^ c[0],
        sum[1] = p[1] ^ c[1],
        sum[2] = p[2] ^ c[2],
        sum[3] = p[3] ^ c[3];

assign c_out = c[4];        

endmodule