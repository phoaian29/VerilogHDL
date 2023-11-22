module Cong4bit(A, B, S);
input [3:0] A, B;
output [4:0] S
wire c1, c2, c3;
HalfAdder U0 (.A(A[0]), .B(B[0]), .S(S[0]), .Cout(c1));
FullAdder U1 (.A(A[1]), .B(B[1]), .Cin(c1), .S(S[1]), .Cout(c2));
FullAdder U2 (.A(A[2]), .B(B[2]), .Cin(c2), .S(S[2]), .Cout(c3));
FullAdder U3 (.A(A[3]), .B(B[3]), .Cin(c3), .S(S[3]), .Cout(S[4]));
endmodule
