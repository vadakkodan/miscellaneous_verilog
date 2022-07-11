module operation;
parameter delay = 10;
reg [15:0] A, B;
reg [ 15 : 0] AB_AND, AB_OR, AB_XOR;
always @(A or B) //whenever A or B changes in value
begin
//invoke the task bitwise-oper. provide 2 input arguments A, I
//Expect 3 output arguments AB-AND, AB-OR, AB-XOR
//The arguments must be specified in the same order as they
//appear in the task declaration.
bitwise_oper(AB_AND, AB_OR, AB_XOR, A, B);
end


//define task bitwise-oper
task bitwise_oper;
output [15:0] ab_and, ab_or, ab_xor; //outputs from the task
input [15:0] a, b; //inputs to the task
begin
#delay ab_and = a & b;
ab_or = a | b;
ab_xor = a ^ b;
end
endtask
endmodule
