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
    logic [1:0] out_buf1;
    logic [1:0] out_buf2;

    logic in_buf1;
    logic in_buf2;
    logic in_buf3;


    initial begin
        clk = 1'b0;
        repeat(100) begin
            #5 clk = ~clk;     
        end
    end


    // Instantiating DUT
    div_by_3 dut(.clk(clk), .rst(rst), .in(in_a), .out_r(out));

    always @(posedge clk) begin
        out_buf1 <= out;
        out_buf2 <= out_buf1;
        in_buf1 <= in_a;
        in_buf2 <= in_buf1;
        in_buf3 <= in_buf2;
    end

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
            
            $display("DUT Signals: Reset: %d, Input bit: %b, Reminder: %d, ", rst, in_buf2, out);

            //Verification
            
            if(!rst) begin
                if (out_buf1 == 0 && in_buf2 == 0 && out != 0) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end
                if (out_buf1 == 0 && in_buf2 == 1 && out != 1) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end

                if (out_buf1 == 1 && in_buf2 == 0 && out != 2) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end
                if (out_buf1 == 1 && in_buf2 == 1 && out != 0) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end  

                if (out_buf1 == 2 && in_buf2 == 0 && out != 1) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end
                if (out_buf1 == 2 && in_buf2 == 1 && out != 2) begin
                    $display("Error Detected on DUT at %t, Previous Reminder: %0d, Input bit: %b, Reminder: %d",$time, out_buf1, in_buf2, out); 
                    $fatal;
                end                                              

            end
        end

        $display("All Test Cases Passed!!\n");
        $finish;
    end

    // Generating Waveform Files
    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);
    end

endmodule