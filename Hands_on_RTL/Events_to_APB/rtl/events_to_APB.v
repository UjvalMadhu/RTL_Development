///////////////////////////////////////////////////////////////////////////////////
///                                                                             /// 
///                      Events to APB Transaction Module                       ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///  This design detects a 3 bit overlapping serial palindrome sequence         ///
///                                                                             ///
///  Copyright 2025 Ujval Madhu, All rights reserved                            ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: events_to_APB.v, v 1.0
//
//  $Date: 2024-02-05
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module events_to_APB(
  input wire  clk,
  input wire  reset,
  input wire  event_a_i,
  input wire  event_b_i,
  input wire  event_c_i,

  output wire apb_sel_o,
  output wire apb_penable_o,
  output wire [31:0] apb_paddr_o,
  output wire apb_pwrite_o,
  output wire [31:0] apb_pwdata_o,
  input  wire apb_pready_i
);




    
endmodule