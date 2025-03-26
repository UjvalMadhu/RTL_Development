///////////////////////////////////////////////////////////////////////////////////
///                       Three Out of Five Output                              ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   threeOfive: A circuit that generates a high only when any three of its    ///
///   five inputs are active, more than 3 is a low.                             ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: mux_2x1.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module threeOfive(
    input in_1,
    input in_2,
    input in_3,
    input in_4,
    input in_5,

    output out
);

    assign out = (in_1 + in_2 + in_3 + in_4 + in_5 == 2'b11);


endmodule