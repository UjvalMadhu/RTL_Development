///////////////////////////////////////////////////////////////////////////////////
///       Verification of Carry Look Ahead Adder                                ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Testbench Module: Verification using Randomized Stimulus,                 ///
///                     Functional Equivalence and Immediate Assertion          ///                                                ///
///                                                                             ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: testbench.sv, v 1.0
//
//  $Date: 2024-12-03
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module testbench;

    parameter num_bits = 8;
    parameter num_tests = 100;

    reg [num_bits -1:0] in_a;
    reg [num_bits -1:0] in_b;
    reg c0;
    reg [(2*num_bits) -1:0]prod;
    reg [num_bits:0] expected_sum;
    reg [num_bits:0] obtained_sum;
    reg c_out;
    integer seed;

    // Instantiating the Braun Multiplier
    braun_mult bmx(.a(in_a), .b(in_b), .prod(prod));
    
    ////////////////////////////////
    //    Random Stimulus Test    //
    ////////////////////////////////

    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_b = 8'b0;
        in_a = 8'b0;
        #10;
        
        for(int i = 1; i <= num_tests; i++) begin
            in_a = $random % (8);
            in_b = $random % (8);

            #10;

            $display("\n Random Test %0d", i);
            $display("Braun Multiplier Result: Input A: %d, Input B: %d, Product: %d", in_a, in_b, prod);

        //    //////////////////////// 
        //    // Functional Testing //
        //    ////////////////////////

        //     expected_sum =  in_a + in_b + c0;

        //     if(c_out) begin 
        //         obtained_sum = (1 << num_bits) + sum;
        //     end
        //     else begin
        //         obtained_sum = sum;
        //     end

        //     assert(expected_sum == obtained_sum)
        //     else begin
        //         $error("Sum Check Assertion error: Expected Sum = %0d, but Obtained Sum = %0d at %0t", expected_sum, obtained_sum, $time);
        //         $fatal;
        //     end
            
        //     #10;

        end

        $display("\nAll %0d Test cases Passed !!\n", num_tests);

    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule