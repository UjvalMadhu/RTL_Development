///////////////////////////////////////////////////////////////////////////////////
///       Switch Level Modeling of a Carry of a Low Power Full Adder            ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Carry Gen Module: We design a switch level implementation of the carry    ///
///   of a ful adder, the number of transistors used when compared to a gate    ///
///   level design is much lower and hence this design would have improved      /// 
///   speed and lower power consumption                                         ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: carry_HA.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module carry_gen(
    input in_a,
    input in_b,
    input in_c,
    output c_out
);
    supply1 vdd;
    supply0 gnd;
    wire w, w1p, w2p, w1n, w2n, w3n;


    // NMOS Structure
    //(AB + BC + CA)' = Cout'
    nmos n1(w1n, gnd, in_b);
    nmos n2(w, w1n, in_a);

    nmos n3(w2n, gnd, in_b);
    nmos n4(w, w2n, in_c);

    nmos n5(w3n, gnd, in_c);
    nmos n6(w, w3n, in_a);


    //PMOS Structure
    //(AB + BC + CA) = ((A'+B').(B'+C').(A'+C'))' = Cout'
    pmos p1(w1p, vdd, in_a);
    pmos p2(w1p, vdd, in_b);

    pmos p3(w2p, w1p, in_b);
    pmos p4(w2p, w1p, in_c);

    pmos p5(w, w2p, in_c);
    pmos p6(w, w2p, in_a);

    // Inverting to obtain the Carry Out
    assign c_out = ~w;

endmodule