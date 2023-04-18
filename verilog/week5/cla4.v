module cla4
(
input [3:0] a_i,
input [3:0] b_i,
input cin_i,
output p_o,
output g_o,
output [3:0] s_o
);

wire [1:0] p,g;
wire cout;

cla2 cla2_1 
(
.a_i    (a_i[1:0]),
.b_i    (b_i[1:0]),
.cin_i  (cin_i),
.p_o    (p[0]),
.g_o    (g[0]),
.s_o    (s_o[1:0])
);

cla2 cla2_2 
(
.a_i    (a_i[3:2]),
.b_i    (b_i[3:2]),
.cin_i  (cout),
.p_o    (p[1]),
.g_o    (g[1]),
.s_o    (s_o[3:2])
);

prop_gen pg
(
.cin_i  (cin_i),
.p_i    (p),
.g_i    (g),
.cout_o (cout),
.p_o    (p_o),
.g_o    (g_o)
);

endmodule

