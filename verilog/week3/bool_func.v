module bool_func
(
input x_i,
input y_i,
input z_i,
output f1_o,
output f2_o
);

assign f1_o =   x_i | (!y_i & z_i);
assign f2_o =   (!x_i & !y_i & z_i) | 
                (!x_i & y_i & z_i) | 
                (x_i & !y_i);

endmodule

