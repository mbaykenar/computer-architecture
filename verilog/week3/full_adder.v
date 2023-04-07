module full_adder
(
input a_i,
input b_i,
input cin_i,
output s_o,
output cout_o
);

assign {cout_o,s_o} = a_i + b_i + cin_i;

endmodule

