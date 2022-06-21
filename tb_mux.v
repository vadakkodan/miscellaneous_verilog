`timescale 1us/1ns
`include "mux_2.v"

module tb_mux_2;
  reg tb_clk = 1'b0;
  reg tb_rst = 1'b1;
  reg tb_a=0;
  reg  tb_b=0;
  reg tb_sel=0;
  wire tb_out;

  mux_2 tb_mux_2(
    .clk(tb_clk),
    .rst(tb_rst),
    .a(tb_a),
    .b(tb_b),
    .sel(tb_sel),
    .out(tb_out));

  initial begin
    tb_clk = 1'b0;
    tb_rst = 1'b1;
  //  tb_a   = 1'b0;
  //  tb_b   = 1'b0;
  //  tb_sel = 1'b0;
  end

  always #5 tb_clk <= !(tb_clk); //10ns period

initial begin
  #10
  tb_rst  = 1'b0;
  tb_a    = 1'b0;
  tb_b    = 1'b1;
  tb_sel  = 1'b1;
  #20
  tb_rst  = 1'b0;
  tb_a    = 1'b0;
  tb_b    = 1'b1;
  tb_sel  = 1'b1;
  #20
  tb_rst  = 1'b0;
  tb_a    = 1'b0;
  tb_b    = 1'b1;
  tb_sel  = 1'b0;
  #20
  tb_rst  = 1'b0;
  tb_a    = 1'b0;
  tb_b    = 1'b1;
  tb_sel  = 1'b1;

end

endmodule


