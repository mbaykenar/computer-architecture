module prop_gen
(
input cin_i,
input [1:0] p_i,
input [1:0] g_i,
output cout_o,
output p_o,
output g_o
);

assign cout_o = g_i[0] | p_i[0] & cin_i;
assign p_o = &p_i;
assign g_o = g_i[1] | g_i[0] & p_i[1];

endmodule

