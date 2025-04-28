////////////////////////////////////////////////////////////////////////////////////
///                       A more efficient Divide By 3                           ///
///                                                                              ///
////////////////////////////////////////////////////////////////////////////////////
///   This is a more efficient and simplified implementation of a divide by 3    ///                                                                  ///
///   problem we have been seeing, upon further thought it became apparent that  ///
///   the process of checking if a number is divisible by 3 can be implemented   ///
///   using a few muxes rather than needing to design an FSM, this is shown here ///
///                                                                              ///
///   Copyright 2025 Ujval Madhu, All rights reserved                            ///
////////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: div_by_3.v, v 1.0
//
//  $Date: 2024-15-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module div_by_three (
  input   wire    clk,
  input   wire    reset,
  input   wire    x_i,
  output  wire    div_o
);

// Internal Signals
  reg [1:0] div_prev;
  wire [1:0] div;
  
  
  // Reset and Previous Reminder Logic

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      div_prev <= 2'b00; 
    end
    else begin;
      div_prev <= div;
    end
  end
  
  // We only need to check these conditions to determine the new reminder from adding the new serial bit.

  assign div =  {div_prev, x_i} == 3'b001 ? 2'b01 :
                {div_prev, x_i} == 3'b010 ? 2'b10 :
                {div_prev, x_i} == 3'b100 ? 2'b01 :
                {div_prev, x_i} == 3'b101 ? 2'b10 : 2'b00;
  
  // Output assignment here just checks if the number is divisible, but can also output the actual reminder.
  assign div_o = div == 2'b00 ? 1'b1 : 1'b0;


endmodule