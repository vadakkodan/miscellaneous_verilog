module add32( 
  input [31:0] a,b,
  output [32:0] result);
reg [32:0] w_result;
always @ (a or b)
begin
  w_result = a + b;
end

assign result = w_result;

endmodule
