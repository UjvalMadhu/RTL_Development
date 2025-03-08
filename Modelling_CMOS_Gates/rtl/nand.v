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

module cmos_nand(
    input in_a,
    input in_b,
    output out
);
    supply1 vdd;
    supply0 gnd;
    wire w1;

    // Argument order (Drain, Source, gate)
    // PMOS in Parallel
    pmos p1(out, vdd, in_a);
    pmos p2(out, vdd, in_b);

    // NMOS in Series
    nmos n1(w1, gnd, in_b);
    nmos n2(out, w1, in_a);
endmodule