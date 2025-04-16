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
    logic in_a;
    logic clk;
    logic rst;
    int seed;
    logic [1:0] out;

    initial begin
        clk = 1'b0;
        forever begin
            #5 clk = ~clk;     
        end
    end


    // Instantiating DUT
    div_by_3 dut(.clk(clk), .rst(rst), .in(in_a), .out_r(out));


    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in_a = 1'b0;
        rst  = 1'b1; 
        #10;
        rst = 1'b0;
        
        for(int i = 1; i <= 20; i++) begin
            in_a = $urandom_range(0,1);

            #10;
            
            $display("DUT Output: Input bit: %b, Reminder: %b, ", in_a, out);
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