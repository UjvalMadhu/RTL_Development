///////////////////////////////////////////////////////////////////////////////////
///                                                                             /// 
///                         3-Bit Palindrome Detector                           ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///  This design detects a 3 bit overlapping serial palindrome sequence         ///
///                                                                             ///
///  Copyright 2025 Ujval Madhu, All rights reserved                            ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: palindrome_3bit.v, v 1.0
//
//  $Date: 2024-29-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module palindrome3b (
  input   logic        clk,
  input   logic        reset,

  input   logic        x_i,

  output  logic        palindrome_o
);

  reg x1, x2, r1, r2;
  
  always @(posedge clk or posedge reset) begin
    if(reset) begin
    	x1 <= 1'b0;
      x2 <= 1'b0;
      r1 <= 1'b1;
      r2 <= 1'b0;
    end
    else begin
    	x1 <= x_i;
      x2 <= x1;
      r1 <= 1'b0;
      r2 <= r1;
    end
  end
  
  assign palindrome_o = (r1 || r2) ? 1'b0 : {x_i,x1,x2} == {x2,x1,x_i};
    
endmodule