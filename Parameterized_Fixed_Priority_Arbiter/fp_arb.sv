////////////////////////////////////////////////
////  PARAMETERIZED FIXED PRIORITY ARBITER  ////
////////////////////////////////////////////////
// AUTHOR: Ujval Madhu
// Reference: Rahul Behl, quicksilicon.in
// Created: 28 Dec 2024

module fp_arb #( 
    num_ports = 5
)(
    input   wire[num_ports-1:0] req_i,     // Request signal
    output  wire[num_ports-1:0] gnt_o      // Grant Signal
);

    assign gnt_o[0] = req_i[0];  // Highest Priority

    genvar i;
    generate
        for(i = 0; i < num_ports; i++){
            assign gnt_o[i] = req_i[i] & ~(|req_i[i-1:0]) ;    // Reduction Or makes checks all higher priorities
        }
    endgenerate

endmodule

