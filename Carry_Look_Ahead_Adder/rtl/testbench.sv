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

    parameter num_bits = 4;

    reg [num_bits -1:0] in_a;
    reg [num_bits -1:0] in_b;
    reg c0;
    reg [num_bits -1:0]sum;
    reg c_out;
    integer seed;

    // Instantiating the CLA module
    cla_4b cla_adder(.a(in_a), .b(in_b), .c0(c0), .sum(sum), .c_out(c_out));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_b = 4'b0;
        in_a = 4'b0;
        #10;
        
        for(int i = 1; i <= 10; i++) begin
            in_a = $random % (2**num_bits);
            in_b = $random % (2**num_bits);
            c0   = $random % (2);

            #10;
            
            $display("CLA Result: Input A: %4b, Input B: %4b, C0: %0b, Sum: %4b, C_out: %0b", in_a, in_b, c0, sum, c_out);
            
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