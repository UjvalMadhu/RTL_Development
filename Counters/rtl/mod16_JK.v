///////////////////////////////////////////////////////////////////////////////////
///       4-Bit Ripple Counter or Mod 16 Counter using JK flip Flops             ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   This is a design for a 4 bit asynchronous Ripple counter using JK FFs     ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: mod16_JK.v, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module mod16_T(
    input clk,
    input rst_n,
    input [3:0] t,
    output [3:0] q 
);

    // create 4 instances of TFF connected in cascade
    tff tff0(.clk(clk), .rst_n(rst_n), .t(1'b1), .q(q[0]));
    genvar i;
    generate
        for (i = 1; i<4; i++) begin
            tff tffx(.clk(q[i-1]), .rst_n(rst_n), .t(1'b1), .q(q[i]));
        end
    endgenerate

endmodule