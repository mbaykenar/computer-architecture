module cla1
(
input a_i,
input b_i,
input cin_i,
output p_o,
output g_o,
output s_o
);

assign p_o = a_i ^ b_i;
assign g_o = a_i & b_i;
assign s_o = a_i ^ b_i ^ cin_i;

endmodule

