////////////////////////////////////////////////////////////////////////////////////////
////  Parameterized Fixed Point Arbiter Test Bench for Assertion Based Verification ////
////////////////////////////////////////////////////////////////////////////////////////
// AUTHOR: Ujval Madhu
// Created: 28 Dec 2024

module fp_arb_tb;

parameter num_ports = 5;
parameter num_tests = 100;

// Signals

logic [num_ports-1:0] req_i;
logic [num_ports-1:0] gnt_o;


fp_arb #(
    .num_ports(num_ports)
) dut (
    .req_i(req_i),
    .gnt_o(gnt_o)
);

initial begin
    
    seed = $random;
    $srandom(seed); // Seeds the pseudorandom number generator

    // Random Request Generation
    for(int i = 0; i < num_tests; i++) begin
        req_i = {$random} % (1 << num_ports);
        #10;
        $display("Test %0d: req_i = %b, gnt_o = %b")
    end

end

