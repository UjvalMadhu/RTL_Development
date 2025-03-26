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
    wire out_mux;
    wire out_xor;
    wire out_xnor;
    integer seed;

    // Instantiating 2x1 Transmission Gate MUX
    mux_2x1 m1(.in_1(in_a), .in_2(in_b), .sel(sel), .out(out_mux));

    // Instantiating Transmission Gate XOR 
    xor_gate xor1(.in_1(in_a), .in_2(in_b), .out(out_xor));

    // Instantiating Transmission Gate XNOR
    xnor_gate xnor1(.in_1(in_a), .in_2(in_b), .out(out_xnor));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_b = 1'b0;
        in_a = 1'b0;
        #10;
        
        for(int i = 1; i <= 20; i++) begin
            in_a = $random % 2;
            in_b = $random % 2;
            sel  = $random % 2;

            #10;
            
            $display("2x1 MUX Output: Input A: %b, Input B: %b, Sel: %b, Out: %b", in_a, in_b, sel, out_mux);
            $display("XOR Output: Input A: %b, Input B: %b, Out: %b", in_a, in_b, out_xor);
            $display("XNOR Output: Input A: %b, Input B: %b, Out: %b\n\n", in_a, in_b, out_xnor);
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