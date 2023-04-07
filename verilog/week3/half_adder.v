module half_adder
(
input a_i,
input b_i,
output s_o,
output cout_o
);

assign s_o      = a_i ^ b_i; 
assign cout_o   = a_i & b_i; 

endmodule

