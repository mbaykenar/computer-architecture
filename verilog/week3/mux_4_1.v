module mux_4_1
(
input i0_i,
input i1_i,
input i2_i,
input i3_i,
input sel0_i,
input sel1_i,
output out_o
);

assign out_o =  (sel0_i == 1'b0) ? 
                (sel1_i == 1'b0) ? i0_i : i2_i :
                (sel1_i == 1'b0) ? i1_i : i3_i;


endmodule

