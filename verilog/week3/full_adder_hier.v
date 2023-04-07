module full_adder_hier
(
input a_i,
input b_i,
input cin_i,
output s_o,
output cout_o
);

wire ha1_s, ha1_cout, ha2_cout;

half_adder HA1 
(
.a_i    (a_i),
.b_i    (b_i),
.s_o    (ha1_s),
.cout_o (ha1_cout)
);

half_adder HA2 
(
.a_i    (ha1_s),
.b_i    (cin_i),
.s_o    (s_o),
.cout_o (ha2_cout)
);

assign cout_o = ha2_cout | ha1_cout;

endmodule

