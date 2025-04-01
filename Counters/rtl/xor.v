///////////////////////////////////////////////////////////////////////////////////
///               Modeling an XOR gate using Transmission Gates                   ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   xor_gate Module:                                                               ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: xor.v, v 1.0
//
//  $Date: 2024-26-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module xor_gate(
    input in_1,
    input in_2,
    output out
);
    wire in_1_n;
    wire in_2_n;

    supply1 vdd;
    supply0 gnd;
    not n1(in_1_n, in_1);               // Not for obtaining the compliment of in_1 
    not n2(in_2_n, in_2);               // Not for obtaining the compliment of in_2 

    // Argument order: (out, in, n_ctrl, p_ctrl)
    //cmos test(out, in_1, vdd, gnd);
    cmos TG_1(out, in_1, in_2_n, in_2);      // Transmission Gate 1
    cmos TG_2(out, in_1_n, in_2, in_2_n);    // Transmission Gate 2


endmodule