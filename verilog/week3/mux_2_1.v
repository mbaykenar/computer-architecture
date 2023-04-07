module mux_2_1
(
input i0_i,
input i1_i,
input sel_i,
output out_o
);

wire w1,w2;

assign w1       = i0_i & !sel_i;
assign w2       = i1_i & sel_i;
assign out_o    = w1 | w2;

// conditional assignment
// assign out_o = (sel_i == 1'b0) ? i0_i : i1_i;

endmodule

