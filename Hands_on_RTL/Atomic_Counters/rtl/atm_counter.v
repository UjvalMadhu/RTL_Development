///////////////////////////////////////////////////////////////////////////////////
///                                                                             /// 
///                   64-Bit Atomic Counter with 32-Bit Bus                     ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
/// A 64-bit event counter module and its 32-bit bus interface for a            ///
/// micro-controller. The counter increments on a trigger input, sends the      ///
/// counter value over through the bus in 2 single cycle atomic reads and       ///
/// issues an ack for each read. Two req must be asserted for completely        ///
/// reading the 64 bit counter value using the 32 bit bus.                      ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: atm_counter.v, v 1.0
//
//  $Date: 2024-19-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module atm_counter(
    input clk,
    input rst,
    input trig_i,
    input req_i,
    input atomic_i,

    output reg ack_o,
    output reg[31:0] count_o
);

reg [63:0] count_reg;
reg [63:0] count;

always @(posedge clk or posedge rst) begin  
    if(rst)  begin count_reg <= 64'b0; end
    else begin
        count_reg[63:0] <= count[63:0];
    end
end

// Logic for count update
always @(posedge trig_i) begin
    count = count_reg + 1'b1;
end

// Logic for ack_o
always @(posedge clk or posedge rst) begin
    if(rst) begin
        ack_o <= 1'b0;
    end
    else if(req_i) begin
        ack_o <= 1'b1;
    end
    else begin
        ack_o <= 1'b0;
    end
end

// Output logic
always @(posedge clk or negedge rst) begin
    if(rst) begin
        count_o[31:0] <= 32'b0;
    end

    if(req_i && atomic_i) begin
        count_o[31:0] <=  count_reg[31:0];
    end
    else if(req_i) begin
        count_o[31:0] <= count_reg[63:32];
    end
end

endmodule