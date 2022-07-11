`include "add1.v"
module fulladd(
  input clk,rstn,
  input a,b,cin,
  output sumf,carryf);
wire s1,c1,c2;
wire sumf, carryf;
always @(posedge clk)
begin
  add1 u0(.clk  (clk),.rstn (rstn),.a (a),.b(b),.sum(s1),.cout(c1));
  add1 u1(.clk  (clk),.rstn (rstn),.a (s1),.b(cin),.sum(sumf),.cout(c2));
  //carryf = c1 | c2;
end

endmodule

