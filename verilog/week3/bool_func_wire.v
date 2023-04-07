module bool_func_wire
(
input x_i,
input y_i,
input z_i,
output f1_o,
output f2_o
);

wire w1,w2,w3,w4,w5,w6;

assign w1 = !y_i;
assign w2 = w1 & z_i;
assign w3 = !x_i;
assign w4 = w3 & w1 & z_i;
assign w5 = w3 & y_i & z_i;
assign w6 = x_i & w1;

assign f1_o = x_i | w2;
assign f2_o = w4 | w5 | w6;

endmodule

