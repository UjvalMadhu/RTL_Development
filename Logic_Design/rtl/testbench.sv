///////////////////////////////////////////////////////////////////////////////////
///                      Logic Designs Testbench                                ///
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
    reg in_1, in_2, in_3, in_4, in_5;
    wire out;
    integer seed;

    // Instantiating 2x1 Transmission Gate MUX
    threeOfive m1(.in_1(in_1), .in_2(in_2), .in_3(in_3), .in_4(in_4), .in_5(in_5), .out(out));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_1 = 1'b0;
        in_2 = 1'b0;
        in_3 = 1'b0;
        in_4 = 1'b0;
        in_5 = 1'b0;

        #10;
        
        for(int i = 1; i <= 10; i++) begin
            in_1 = $random % 2;
            in_2 = $random % 2;
            in_3 = $random % 2;
            in_4 = $random % 2;
            in_5 = $random % 2;

            #10;
            
            $display("ThreeOFive Output: Input 1: %b, Input 2: %b, Input 3: %b, Input 4: %b, Input 5: %b, Out: %b", in_1, in_2, in_3, in_4, in_5, out);
            
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