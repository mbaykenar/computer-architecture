module ripple_carry_adder
#(parameter N = 32)
(
input [N-1:0] a_i,
input [N-1:0] b_i,
input cin_i,
output [N-1:0] s_o,
output cout_o
);

wire [N:0] carry;

genvar i;
generate 
for (i=0; i<N; i=i+1) begin
    full_adder full_adder_inst
    ( 
        .a_i(a_i[i]),
        .b_i(b_i[i]),
        .cin_i(carry[i]),
        .s_o(s_o[i]),
        .cout_o(carry[i+1])
    );
end
endgenerate

assign carry[0] = cin_i;
assign cout_o   = carry[N];

endmodule