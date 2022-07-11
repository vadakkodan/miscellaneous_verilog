`include "add_com.v"
`timescale 1us/1ns 
module tb_add_comb;
  //reg   tb_clk  = 1'b0;
  //reg   tb_rstn = 1'b0;
  reg   tb_a    = 1'b0;
  reg   tb_b    = 1'b0;
  wire  tb_sum;
  wire  tb_cout;

add1 tb_add1(
 //.clk  (   tb_clk ),  
 //.rstn (   tb_rstn), 
 .a    (   tb_a   ), 
 .b    (   tb_b   ),   
 .sum  (  tb_sum  ),   
 .cout (  tb_cout ));
//initial begin
//   tb_clk = 1'b0;
//   tb_rstn = 1'b1;
// end

//  always #5 tb_clk <= !tb_clk;

  initial begin
    #20
//    tb_rstn = 1'b0;
    tb_a    = 1'b0;
    tb_b    = 1'b0;
   
    #20
//    tb_rstn = 1'b0;
    tb_a    = 1'b0;
    tb_b    = 1'b1;
   #20
//    tb_rstn = 1'b0;
    tb_a    = 1'b1;
    tb_b    = 1'b0;

   #20
//    tb_rstn = 1'b0;
    tb_a    = 1'b1;
    tb_b    = 1'b1;
  end
endmodule
