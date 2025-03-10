///////////////////////////////////////////////////////////////////////////////////
///               Modeling a 2x1 Mux using Transmission Gates                   ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   XOR Module:                                                               ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: xor.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module mux_2x1(
    input in_1,
    input in_2,
    input sel,
    output out
);
    wire sel_n;

    not n1(sel_n,sel);               // Not for obtaining the compliment of sel 

    cmos TG_1(out, in_1, sel_n, sel);    // Transmission Gate 1
    cmos TG_2(out, in_2, sel, sel_n);    // Transmission Gate 2


endmodule