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

    parameter num_bits = 4;
    parameter num_tests = 1000;

    reg [num_bits -1:0] in_a;
    reg [num_bits -1:0] in_b;
    reg c0;
    reg [num_bits -1:0]sum;
    reg [num_bits:0] expected_sum;
    reg [num_bits:0] obtained_sum;
    reg c_out;
    integer seed;

    // Instantiating the Carry Look Ahead Adder module
    cla_4b cla_adder(.a(in_a), .b(in_b), .c0(c0), .sum(sum), .c_out(c_out));
    
    ////////////////////////////////
    //    Random Stimulus Test    //
    ////////////////////////////////

    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_b = 4'b0;
        in_a = 4'b0;
        c0   = 1'b0;
        #10;
        
        for(int i = 1; i <= num_tests; i++) begin
            in_a = $random % (2);
            in_b = $random % (2);
            c0   = $random % (2);

            #10;

            $display("\n Random Test %0d", i);
            $display("CLA Result: Input A: %4b, Input B: %4b, C0: %0b, Sum: %4b, C_out: %0b", in_a, in_b, c0, sum, c_out);
            $display("CLA Result: Input A: %0d, Input B: %0d, C0: %0d, Sum: %0d, C_out: %0d", in_a, in_b, c0, sum, c_out);

           //////////////////////// 
           // Functional Testing //
           ////////////////////////

            expected_sum =  in_a + in_b + c0;

            if(c_out) begin 
                obtained_sum = (1 << num_bits) + sum;
            end
            else begin
                obtained_sum = sum;
            end

            assert(expected_sum == obtained_sum)
            else begin
                $error("Sum Check Assertion error: Expected Sum = %0d, but Obtained Sum = %0d at %0t", expected_sum, obtained_sum, $time);
                $fatal;
            end
            
            #10;

        end

        $display("\nAll %0d Test cases Passed !!\n", num_tests);

    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule