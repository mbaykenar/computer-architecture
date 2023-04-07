module mux_2_1_behav_reg
(
input i0_i,
input i1_i,
input sel_i,
output reg out_o
);

always@(i0_i or i1_i or sel_i) begin
    if (sel_i == 1'b0) begin
        out_o = i0_i;
    end
    else begin
        out_o = i1_i;
    end
end

endmodule

