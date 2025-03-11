/////////////////////////////////////////////////////////////////////////////////////
///                    2x1 Mux using Data Flow Modeling                           ///
///                                                                               ///
/////////////////////////////////////////////////////////////////////////////////////
///   2x1MUX Module: In this design we are primarily using NAND or NOR operations ///
///                  for logic realization using Dataflow modeling                ///
///                                                                               ///
///   Copyright 2025 Ujval Madhu, All rights reserved                             ///
/////////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: mux_2x1.v, v 1.0
//
//  $Date: 2024-11-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module mux_2x1(
    input a,
    input b,
    input sel,
    output out
);

assign out = ( a & ~sel ) | ( b & sel );

endmodule