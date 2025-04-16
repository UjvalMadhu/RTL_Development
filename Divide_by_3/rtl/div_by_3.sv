///////////////////////////////////////////////////////////////////////////////////
///                            Divide By 3                                      ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   This project designs an FSM in Verilog that will essentially generate as  ///
///   output the reminder of a serial bit stream inputted MSB first when divided///
///    by 3.                                                                    ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: div_by_3.v, v 1.0
//
//  $Date: 2024-15-04
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module div_by_3(
    input logic clk,
    input logic rst,
    input logic in,
    output logic [1:0] out_r
);

    typedef enum bit[1:0] {SA0, SA1, SA2} state_t;
    bit [1:0] current_state;
    bit [1:0] next_state;


// Current State Logic:

    always_ff@(posedge clk) begin
        
        if(rst) begin
            current_state <= SA0;
        end
        else begin
            current_state <= next_state;
        end

    end

// Next State Logic:
    always_comb begin
        
        case(current_state)
            SA0: begin
                    if(in == 0) begin
                        next_state = SA0;
                    end
                    else if(in == 1) begin
                        next_state = SA1;
                    end
                end
            
            SA1: begin
                    if(in == 0) begin
                        next_state = SA2;
                    end
                    else if(in == 1) begin
                        next_state = SA0;
                    end
                end
            SA2: begin
                    if(in == 0) begin
                        next_state = SA1;
                    end
                    else if(in == 1) begin
                        next_state = SA2;
                    end
                end
            default: next_state = SA0;
        endcase
    end


// Output Logic:
    always_ff@(posedge clk) begin
        case(current_state)
            SA0: out_r <= 2'b00;
            SA1: out_r <= 2'b01;
            SA2: out_r <= 2'b10;
            default: out_r <= 2'b00;
        endcase
    end

endmodule