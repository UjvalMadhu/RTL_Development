///////////////////////////////////////////////////////////////////////////////////
///                    2x4 Decoder using Data Flow Modeling                     ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   2x4 Decoder Module: In this design we are primarily using NAND or NOR     ///
///                  operations for logic realization using Dataflow modeling   ///
///                  Although most ASIC tools optimize for this and is not      /// 
///                  required in FPGA design                                    ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: decoder_2x4.v, v 1.0
//
//  $Date: 2024-11-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module decoder_2x4(
    input a,
    input b,
    input en,
    output [3:0] out
);

assign  out[0] = en & ~( a | b ) ,        // out0 = en.a'.b'
        out[1] = en & ~( a | ~b ),        // out1 = en.a'.b
        out[2] = en & ~( ~a | b ),        // out1 = en.a.b' 
        out[3] = en & ~( ~a | ~b );       // out1 = en.a.b 

endmodule