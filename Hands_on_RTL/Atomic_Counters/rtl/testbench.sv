///////////////////////////////////////////////////////////////////////////////////
///            64-Bit Atomic Counter with 32-Bit Bus Testbench                  ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Testbench Module                                                          ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: testbench.sv, v 1.0
//
//  $Date: 2024-07-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module testbench;
    reg atomic_i, req_i, trig_i;
    reg clk, rst;
    wire ack_o;
    wire [31:0] count_o;
    int seed;

    // Instantiating atmoic_counter
    atm_counter a1(.clk(clk), .rst(rst), .trig_i(trig_i), .req_i(req_i), .atomic_i(atomic_i), .ack_o(ack_o), .count_o(count_o));

    // Clock Gen
    initial begin
        clk = 1'b0;
        repeat(500) #5 clk = ~clk;
    end

    // Reset Gen
    initial begin
        rst = 1'b0;
        repeat(2) @(posedge clk);
        rst = 1'b1;
        repeat(2) @(posedge clk);
        rst = 1'b0;
    end

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        trig_i      = 1'b0;
        atomic_i    = 1'b0;
        req_i       = 1'b0;
        #10;
        
        for(int i = 1; i <= 50; i++) begin

            @(posedge clk)
            trig_i      = $urandom_range(0,1);
            atomic_i    = $urandom_range(0,1);
            req_i       = $urandom_range(0,1);

            #1;
            
            $display("Atmoic Counter, Reset: %0b, Output: Trig_i: %b, Atomic_i: %b, req_i: %b, Count_o: %d, ack_o: %b", rst, trig_i, atomic_i, req_i, count_o, ack_o);

            //#10
            // Verification
            // // Inverter
            // if (sel == ) begin
            //     $display("Error Detected on inverter at %t, output = %b input = %b",$time, out_inv, in); 
            //     $fatal;
            // end

            // // NAND
            // if (out_nand != ~(in_a & in_b) ) begin
            //     $display("Error Detected on NAND at %t, Output = %b , Input A= %b, Input B = %b",$time, out_nand, in_a, in_b); 
            //     $fatal;
            // end
        end
    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule