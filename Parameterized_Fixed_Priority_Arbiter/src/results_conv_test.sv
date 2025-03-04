///////////////////////////////////////////////////////////////////////////////////
///             Synchronous Parameterized Fixed Priority Arbiter                ///
///                                                                             ///
///////////////////////////////////////////////////////////////////////////////////
///   Top Module:  Asynchronous Design                                          ///
///   Reference: Rahul Behl, quicksilicon.in                                    ///
///   Copyright 2025 Ujval Madhu, All rights reserved                           ///
///////////////////////////////////////////////////////////////////////////////////
//  CVS Log
//
//  Id: results_conv_test.sv, v 1.0
//
//  $Date: 2024-28-12
//  $Revision: 1.0 $
//  $Author:  Ujval Madhu

module test;
	parameter num_ports = 5;
	parameter num_tests = 100;
	parameter CLK_PERIOD = 10;   // 10ns clock


	// Signals
	logic clk_i;
	logic rst_ni;

	logic [num_ports-1:0] req_i;
	logic [num_ports-1:0] gnt_o;

	integer seed;


	// Clock Generation
	
	initial begin
		clk_i =0;
		forever #(CLK_PERIOD/2) clk_i = ~clk_i;
	end


	// DUT Instantiation

	results_conv top(
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.req_i(req_i),
		.gnt_o(gnt_o)
		);


	// Assertions Based Verification

	// 1. Immediate assertion for verifing atmost 1 gnt_o signal is high
	 always @(gnt_o) begin
	 	assert($onehot0(gnt_o))
	 	else $error("gnt_o Assertion error: Multiple Grants Detected, gnt_o = %0b at %0t", gnt_o, $time);
	 end

	//2. Reset Behaviour Testing
	property reset_beh;
		@(posedge clk_i) !rst_ni |-> gnt_o == {num_ports{1'b0}};
	endproperty

	RESET_BEHAVIOUR: assert property(reset_beh) else $error("RESET Behavior Assertion Error Detected, gnt_o = %0b at %0t", gnt_o, $time); 

	//3. No Request = No Grant
	property nreq_ngnt;
		@(posedge clk_i) (rst_ni && (req_i == {num_ports{1'b0}})) ##1 rst_ni |-> gnt_o == {num_ports{1'b0}};
	endproperty

	NO_REQ_NO_GNT: assert property(nreq_ngnt) else $error("NO_REQ_NO_GNT Behavior Assertion Error Detected, req_i =%0b, gnt_o = %0b at %0t", req_i, gnt_o, $time);





	// Main Test Sequence

	initial begin
		
		req_i = 0;
		rst_ni = 0;

		seed = $random;
		$srandom(seed);

		repeat(3) @ (posedge clk_i);
		rst_ni = 1;
		repeat(2) @(posedge clk_i);

		//1. Testing Single Bit Requests
		
		for(int i = 0; i < num_ports; i++) begin
			req_i = ( 1 << i );
			@(posedge clk_i);
			@(posedge clk_i);
			$display("Single-bit test %0d: req_i =%0b, gnt_o = %0b", i, req_i, gnt_o);
			verify_gnt();
		end
		$display("----------------------");
		$display("Single-bit test Passed");
		$display("----------------------");


		//2. Testing Random Requests

		for(int i = 0; i < num_tests; i++) begin
			
			req_i = $urandom % (1 << num_ports);   // Note: Modulo operation is better than truncation for statistical distribution 
			@(posedge clk_i);
			@(posedge clk_i);
			$display("Randomized Stimulus Test %0d: req_i =%0b, gnt_o = %0b", i, req_i, gnt_o);
			verify_gnt();

		end
		$display("----------------------------");
		$display("Random Stimulus test Passed");
		$display("----------------------------");


		//3. Reset Testing
		for(int i = 0; i < 20; i++) begin
			
			req_i  = $urandom % (1 << num_ports);
			rst_ni = $urandom % 2;                 // Random 0 or 1
			@(posedge clk_i);
			@(posedge clk_i);
			$display("Reset Test %0d: rst_ni: %0d, req_i =%0b, gnt_o = %0b", i, rst_ni, req_i, gnt_o);
			verify_gnt();
		end
		$display("-------------------");
		$display("Reset test Passed");
		$display("-------------------");

		$finish;

	end


	// Verify Gnt_o task: Creates a model of the gnt_o signal and checks if they are the same
	
	task verify_gnt();
		logic [num_ports-1:0] expected_gnt;

		expected_gnt = {num_ports{1'b0}};

		if(rst_ni) begin
			for(int j = 0; j < num_ports ; j ++) begin
				

				if(req_i[j]) begin
				
					if(j == 0 || (req_i & ((1 << j)-1)) == 0) begin
						expected_gnt[j] = 1;
						break;
					end
				
				end
			
			end
		end

		if(gnt_o != expected_gnt) begin
			$error("Incorrect GNT_O signal detected, rst_ni: %0b req_i = %0b, gnt_o = %0b, expected_gnt = %0b, at %0t",rst_ni, req_i, gnt_o, expected_gnt, $time);
			$fatal;
		end 

	endtask : verify_gnt


endmodule