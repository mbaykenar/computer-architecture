module mults
#(parameter N = 32)
(
input signed [N-1:0] a_i,
input signed [N-1:0] b_i,
output signed [2*N-1:0] mul_o
);

assign mul_o = a_i * b_i; 

endmodule

