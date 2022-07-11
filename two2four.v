//module two2four(
//  input x0,x1,
//  output d0,d1,d2,d3);
//
//assign d0 = ~(x0) & ~x1;
//assign d1 =  x0 & ~x1;
//assign d2 = ~x0 &  x1;
//assign d3 =  x0 &  x1;
//
//endmodule


module two2four(
  input x0,x1,
  output reg d0,d1,d2,d3);

always @ (x0 or x1)
begin
  
 d0 = ~x0 & ~x1;
 d1 =  x0 & ~x1;
 d2 = ~x0 &  x1;
 d3 =  x0 &  x1;
end
endmodule

