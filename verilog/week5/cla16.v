module cla16
(
input [15:0] a_i,
input [15:0] b_i,
input cin_i,
output p_o,
output g_o,
output [15:0] s_o
);

wire [1:0] p,g;
wire cout;

cla8 cla8_1 
(
.a_i    (a_i[7:0]),
.b_i    (b_i[7:0]),
.cin_i  (cin_i),
.p_o    (p[0]),
.g_o    (g[0]),
.s_o    (s_o[7:0])
);

cla8 cla8_2 
(
.a_i    (a_i[15:8]),
.b_i    (b_i[15:8]),
.cin_i  (cout),
.p_o    (p[1]),
.g_o    (g[1]),
.s_o    (s_o[15:8])
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

