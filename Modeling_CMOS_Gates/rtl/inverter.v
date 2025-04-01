///////////////////////////////////////////////////////////////////////////////////
///             Switch Level Modeling of a CMOS Inverter                        ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Inverter Module:                                                          ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: inverter.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module cmos_inv(
    input in,
    output out
);
supply1 vdd;
supply0 gnd;

// Argument order (Drain, Source, gate)
nmos n1(out, gnd, in);
pmos p1(out, vdd, in);

endmodule