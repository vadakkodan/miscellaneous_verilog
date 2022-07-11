`include "add_com.v"
module fulladdcomb(
  input a,b,cin,
  output sumf,carryf);
wire s1,c1,c2;
wire wsum, wcarry;
//always (a or b or cin)
//begin
//wire sumf, carryf;
  add1 a0(.a (a),.b(b),.sum(s1),.cout(c1));
  add1 a1(.a (s1),.b(cin),.sum(wsum),.cout(c2));
//end
  assign wcarry = c1 | c2;

  assign carryf = wcarry;
  assign sumf   = wsum;

endmodule

