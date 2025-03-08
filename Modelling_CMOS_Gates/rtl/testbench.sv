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
    reg in;
    reg in_a, in_b;
    wire out_inv;
    wire out_nand;
    wire out_nor;
    wire out_xor;
    wire out_xnor;
    integer seed;

    // Instantiating Inverter
    cmos_inv inv1(.in(in), .out(out_inv));

    // Instantiating NAND Gate
    cmos_nand nand1(.in_a(in_a),.in_b(in_b), .out(out_nand));

    // Instantiating NOR Gate
    cmos_nor nor1(.in_a(in_a),.in_b(in_b), .out(out_nor));

    // Instantiating NOR Gate
    cmos_xor xor1(.in_a(in_a),.in_b(in_b), .out(out_xor));

    // Instantiating NOR Gate
    cmos_xnor xnor1(.in_a(in_a),.in_b(in_b), .out(out_xnor));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in = 1'b0;
        in_b = 1'b0;
        in_a = 1'b0;
        #10;
        
        for(int i = 1; i <= 10; i++) begin
            in = $random % 2;
            in_a = $random % 2;
            in_b = $random % 2;
            #10;
            $display("-----------Test %0d---------- @ %0t", i, $time);
            $display("Inverter: Input: %b, Output: %b", in, out_inv);
            $display("NAND: Input A: %b, Input B: %b, Output: %b", in_a, in_b, out_nand);
            $display("NOR: Input A: %b, Input B: %b, Output: %b", in_a, in_b, out_nor);
            $display("XOR: Input A: %b, Input B: %b, Output: %b", in_a, in_b, out_xor);
            $display("XNOR: Input A: %b, Input B: %b, Output: %b", in_a, in_b, out_xnor);
            
            #10
            // Verification
            // Inverter
            if (out_inv != ~in) begin
                $display("Error Detected on inverter at %t, output = %b input = %b",$time, out_inv, in); 
                $fatal;
            end

            // NAND
            if (out_nand != ~(in_a & in_b) ) begin
                $display("Error Detected on NAND at %t, Output = %b , Input A= %b, Input B = %b",$time, out_nand, in_a, in_b); 
                $fatal;
            end

            // NOR
            if (out_nor != ~(in_a | in_b) ) begin
                $display("Error Detected on NOR at %t, Output = %b , Input A = %b, Input B = %b",$time, out_nor, in_a, in_b); 
                $fatal;
            end

            // XOR
            if (out_xor != (in_a ^ in_b) ) begin
                $display("Error Detected on XOR at %t, Output = %b , Input A = %b, Input B = %b",$time, out_xor, in_a, in_b); 
                $fatal;
            end

            // XNOR
            if (out_xnor != ~(in_a ^ in_b) ) begin
                $display("Error Detected on XNOR at %t, Output = %b , Input A = %b, Input B = %b",$time, out_xnor, in_a, in_b); 
                $fatal;
            end
        end
    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule