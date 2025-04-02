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
    reg in, in_b;
    reg rst_n, clk;
    wire out_dff;
    wire out_tff;
    wire out_jkff;
    wire [3:0] q16_t;
    integer seed;

    //Clock Generation
    initial begin
        clk = 1'b0;
        repeat(500) #5 clk = ~clk;
    end

    // Reset Generation
    initial begin
        rst_n = 1'b1;
        repeat(10) @(posedge clk)
        rst_n = 1'b0;
        repeat(10) @(posedge clk)
        rst_n = 1'b1;
    end

    // Instantiating DFF
    dff dff1(.clk(clk), .rst_n(rst_n), .d(in), .q(out_dff));

    // Instantiating TFF 
    tff tff1(.clk(clk),.rst_n(rst_n), .t(in), .q(out_tff));

    // Instantiating JK FF 
    jkff jkff1(.clk(clk),.rst_n(rst_n), .j(in), .k(in_b), .q(out_jkff));

    // Instantiating Mod16 Ripple Counter built with T flip Flops
    mod16_T m16T(.clk(clk), .rst_n(rst_n), .t(4'b1111), .q(q16_t));

    // Random Stimulus Generation
    initial begin
        seed = $random;
        $random(seed);              // Icarus doesn't support $srandom yet

        in = 1'b0;
        in_b = 1'b0;
        #10;
        
        for(int i = 1; i <= 100; i++) begin
            in = $random % 2;
            in_b = $random % 2;

            @(posedge clk)
            #1
            $display("DFF Input: %b Output:%b", in, out_dff);
            $display("TFF Input: %b Output:%b", in, out_tff);
            $display("JKFF Input J: %b Input K: %b Output:%b\n", in, in_b, out_jkff);


        end
    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule