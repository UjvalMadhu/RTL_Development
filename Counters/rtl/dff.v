///////////////////////////////////////////////////////////////////////////////////
///                         A Standard D Flip Flop                              ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   This is a Standard DFF implementation                                     ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: dff.v, v 1.0
//
//  $Date: 2024-01-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module dff(
    input clk,
    input rst_n,
    input d,
    output reg q
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) q <= 0;
    else q <= d;
end

endmodule