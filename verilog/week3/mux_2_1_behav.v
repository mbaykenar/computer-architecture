module mux_2_1_behav
(
input i0_i,
input i1_i,
input sel_i,
output out_o
);

// reg data type must be used for assignments in a behavioral assignment block (always) 
reg out;

always@(i0_i or i1_i or sel_i) begin
    if (sel_i == 1'b0) begin
        out = i0_i;
    end
    else begin
        out = i1_i;
    end
end

assign out_o = out;

endmodule

