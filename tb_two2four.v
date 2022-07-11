`include "two2four.v"
`timescale 1us/100ns
module tb_two2four;
reg tb_x0 = 1'b0;
reg tb_x1 = 1'b0;
wire tb_d0,tb_d1,tb_d2,tb_d3;

//instantiate the DUT

two2four tb_two2four(
  .x0 (tb_x0),
  .x1 (tb_x1),
  .d0 (tb_d0),
  .d1 (tb_d1),
  .d2 (tb_d2),
  .d3 (tb_d3));

// test stimulus
initial 
begin
  #10 tb_x0 = 0; tb_x1 = 0;
  #10 tb_x0 = 1; tb_x1 = 0;
  #10 tb_x0 = 0; tb_x1 = 1;
  #10 tb_x0 = 1; tb_x1 = 1;
end

initial
begin
  $monitor ($time, "\tValue of D=%b %b %b %b", tb_d0,tb_d1,tb_d2,tb_d3);
end

endmodule
