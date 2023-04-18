`include "defines.vh"

module add_sub
#(parameter N = 32)
(
input [N-1:0] a_i,
input [N-1:0] b_i,
input op_i,             // add if 0, sub if 1
output [N-1:0] s_o,
output cout_o
);

//wire [N-1:0] b_reg;
//genvar i;
//
//generate 
//    for (i=0; i<N; i=i+1) begin
//        assign b_reg[i] = b_i[i] ^ op_i;
//    end
//endgenerate

`ifdef USE_CARRY_LOOK_AHEAD

wire [N-1:0] b_reg;
genvar i;

generate 
    for (i=0; i<N; i=i+1) begin
        assign b_reg[i] = b_i[i] ^ op_i;
    end
endgenerate

cla32 cla32_inst
(
.a_i    (a_i),
.b_i    (b_reg),
.cin_i  (op_i),
.cout_o (cout_o),
.s_o    (s_o)
);

`elsif ADD_SUB_OPERATOR

reg cout;
reg [N-1:0] s;

always@* begin
    if (!op_i) begin    // add
        {cout,s} = a_i + b_i;
    end else begin      // sub
        {cout,s} = a_i - b_i;
    end
end

assign cout_o = cout;
assign s_o = s;

`else   // ripple carry adder

wire [N-1:0] b_reg;
genvar i;

generate 
    for (i=0; i<N; i=i+1) begin
        assign b_reg[i] = b_i[i] ^ op_i;
    end
endgenerate

wire [N:0] carry;

generate 
for (i=0; i<N; i=i+1) begin
    full_adder full_adder_inst
    ( 
        .a_i(a_i[i]),
        .b_i(b_reg[i]),
        .cin_i(carry[i]),
        .s_o(s_o[i]),
        .cout_o(carry[i+1])
    );
end
endgenerate

assign carry[0] = op_i;
assign cout_o   = carry[N];

`endif 

endmodule

