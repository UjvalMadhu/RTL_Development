///////////////////////////////////////////////////////////////////////////////////
///             Switch Level Modeling of a CMOS NAND Gate                       ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Nand Module:                                                              ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: nand.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module cmos_xnor(
    input in_a,
    input in_b,
    output out
);
    supply1 vdd;
    supply0 gnd;
    wire w1p, w2p, w3n,w4n;

    // Argument order (Drain, Source, gate)
    // PMOS A.B + A'.B' = XNOR         
    pmos p1(w1p, vdd, in_b);
    pmos p2(out, w1p, in_a);

    pmos p3(w2n, vdd, ~in_b);
    pmos p4(out, w2n, ~in_a);

    // NMOS A.B' + A'.B  ; complement of the PMOS
    nmos n1(w1n, gnd, in_b);
    nmos n2(out, w1n, ~in_a);

    nmos n3(w2n, gnd, ~in_b);
    nmos n4(out, w2n, in_a);

endmodule