`include "fulladd_comb.v"
`timescale 1us/100ns

module tb_fulladdcomb;
reg tb_a = 1'b0;
reg tb_b = 1'b0;
reg tb_cin = 1'b0;
wire tb_sumf;
wire tb_carryf;

fulladdcomb full (
  .a(tb_a), .b(tb_b), .cin(tb_cin), 
  .sumf (tb_sumf), .carryf (tb_carryf));

initial 
begin
  tb_a = 1'b0;
  tb_b = 1'b0;
  tb_cin = 1'b0;

#10 
  tb_a = 1'b0;
  tb_b = 1'b0;
  tb_cin = 1'b1;

#10 
  tb_a = 1'b0;
  tb_b = 1'b1;
  tb_cin = 1'b0;
#10 
  tb_a = 1'b0;
  tb_b = 1'b1;
  tb_cin = 1'b1;

#10 
  tb_a = 1'b1;
  tb_b = 1'b0;
  tb_cin = 1'b0;

#10 
  tb_a = 1'b1;
  tb_b = 1'b0;
  tb_cin = 1'b1;

#10 
  tb_a = 1'b1;
  tb_b = 1'b1;
  tb_cin = 1'b0;
#10 
  tb_a = 1'b1;
  tb_b = 1'b1;
  tb_cin = 1'b1;
#20;
$stop;

end

initial 
begin
  $monitor($time, "The value of a= %b, b= %b, cin= %b, sum= %b, carry= %b", tb_a,tb_b,tb_cin,tb_sumf,tb_carryf);
end
endmodule

