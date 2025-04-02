///////////////////////////////////////////////////////////////////////////////////
///                            T Flip Flop Design                               ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   In this design a T Flip Flop is implemented using a D FF                  ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: tff.v, v 1.0
//
//  $Date: 2024-01-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module tff(
    input rst_n,
    input clk,
    input t,
    output q
);

wire d;
wire q_internal;

// Using XOR combinational logic to convert t to d
//assign d = t ^ q_internal;
cmos_xor xor1(
    .in_a(t),
    .in_b(q_internal),
    .out(d)
);

// Instantiating DFF
dff dff2(
    .rst_n(rst_n),
    .clk(clk),
    .d(d),
    .q(q_internal)
);

assign q = q_internal;

endmodule