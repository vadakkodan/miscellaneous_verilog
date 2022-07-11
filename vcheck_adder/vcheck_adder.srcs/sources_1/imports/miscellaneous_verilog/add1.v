module add1(
  input clk,rstn,
  input a,b,
  output reg sum,cout);

always@(posedge clk)
begin
  if(rstn)
  begin
    sum   <= 1'b0;
    cout <= 1'b0;
  end
  else
  begin
    sum     <= a ^ b;
    cout    <= a & b;
  end
end
endmodule
