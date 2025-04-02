///////////////////////////////////////////////////////////////////////////////////
///                        A Standard JK Flip Flop                              ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   This is a Standard DFF implementation                                     ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: jkff.v, v 1.0
//
//  $Date: 2024-01-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module jkff(
    input clk,
    input rst_n,
    input j,k,
    output reg q
);

always @(posedge clk) begin
    if (!rst_n) q <= 0;
    else begin
        case({j,k})
            2'b00: q <= q;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= ~q;
        endcase
    end
end

endmodule