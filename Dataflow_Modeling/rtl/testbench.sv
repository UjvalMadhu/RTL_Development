///////////////////////////////////////////////////////////////////////////////////
///       Switch Level Modeling of a CMOS Gates and Boolean Logic               ///
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
    reg in_a, in_b;
    reg sel;
    reg en;
    wire out_m;
    wire [3:0] out_d;
    integer seed;

    // Instantiating 2x1 MUX
    mux_2x1 m1(.a(in_a), .b(in_b), .sel(sel), .out(out_m));

    // Instantiating 2x4 Decoder
    decoder_2x4 d1(.a(in_a), .b(in_b), .en(en), .out(out_d));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_b = 1'b0;
        in_a = 1'b0;
        sel  = 1'b0;
        en   = 1'b0;

        #10;
        
        for(int i = 1; i <= 10; i++) begin
            in_a = $random % 2;
            in_b = $random % 2;
            sel  = $random % 2;
            en   = $random % 2;

            #10;
            
            $display("2x1 MUX Output: Input A: %b, Input B: %b, Sel: %b, Out: %b", in_a, in_b, sel, out_m);
            $display("2x4 Decoder Output: Input A: %b, Input B: %b, En: %b, Out: %b", in_a, in_b, en, out_d);
            
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