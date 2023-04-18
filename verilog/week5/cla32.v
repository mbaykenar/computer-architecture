module cla32
(
input [31:0] a_i,
input [31:0] b_i,
input cin_i,
output cout_o,
output [31:0] s_o
);

wire [1:0] p,g;
wire cout;

assign cout_o = g[1] | p[1] & cout;

cla16 cla16_1 
(
.a_i    (a_i[15:0]),
.b_i    (b_i[15:0]),
.cin_i  (cin_i),
.p_o    (p[0]),
.g_o    (g[0]),
.s_o    (s_o[15:0])
);

cla16 cla16_2 
(
.a_i    (a_i[31:16]),
.b_i    (b_i[31:16]),
.cin_i  (cout),
.p_o    (p[1]),
.g_o    (g[1]),
.s_o    (s_o[31:16])
);

prop_gen pg
(
.cin_i  (cin_i),
.p_i    (p),
.g_i    (g),
.cout_o (cout),
.p_o    (),
.g_o    ()
);

endmodule

