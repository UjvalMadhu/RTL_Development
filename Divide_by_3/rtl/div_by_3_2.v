module div_by_three (
  input   wire    clk,
  input   wire    reset,

  input   wire    x_i,

  output  wire    div_o
);

  reg div_prev;
  
  
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      div_prev <= 1'b1; 
    end
    else begin;
      div_prev <= div_o;
    end
  end
  
  assign div_o = {div_prev, x_i} == 2'b10 ? 1'b1 :
  {div_prev, x_i} == 2'b00 ? 1'b0 :
  {div_prev, x_i} == 2'b01 ? 1'b1 : 1'b0;   

endmodule