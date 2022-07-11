module add1(
  input a,b,
  output sum,cout);

    assign sum   = a ^ b;
    assign cout  = a & b;

endmodule
