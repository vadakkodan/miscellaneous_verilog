`timescale 1us/1ns
module mux_2(
  input clk,rst,
  input a,b,sel,
  output reg out);

always@(posedge(clk))
begin
  if (rst)
    out <= 1'b0;
  else
    out <= sel ? a : b;
end
endmodule


