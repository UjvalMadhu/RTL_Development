///////////////////////////////////////////////////////////////////////////////////
///             Switch Level Modeling of a CMOS NOR Gate                        ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   NOR Module:                                                               ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: nor.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module cmos_nor(
    input in_a,
    input in_b,
    output out
);

    wire w1;
    supply0 gnd;
    supply1 vdd;

    // Argument order (Drain, Source, gate)
    // PMOS in series
    pmos p1(w1, vdd, in_a);                    
    pmos p2(out, w1, in_b);

    // NMOS in parallel
    nmos n1(out, gnd, in_a);
    nmos n2(out, gnd, in_b);

endmodule