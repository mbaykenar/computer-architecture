module fpu
(
input clk,
input rstn,
input load_a_i,
input load_b_i,
input load_op_i,
input [31:0] a_i,
input [31:0] b_i,
input [7:0] op_i,
output ready_o,
output [31:0] out_o
);

reg [31:0] a;
reg [31:0] b;
reg [7:0] op;
reg a_valid;
reg b_valid;
reg op_valid;

fp_addsub fp_addsub_i 
(
.aclk                       (clk),
.s_axis_a_tvalid            (a_valid),
.s_axis_a_tready            (),
.s_axis_a_tdata             (a),
.s_axis_b_tvalid            (b_valid),
.s_axis_b_tready            (),
.s_axis_b_tdata             (b),
.s_axis_operation_tvalid    (op_valid),
.s_axis_operation_tready    (),
.s_axis_operation_tdata     (op),
.m_axis_result_tvalid       (ready_o),
.m_axis_result_tdata        (out_o)
);

always @(posedge clk) begin
    if (!rstn) begin
        a           <= 0;
        b           <= 0;
        op          <= 0;
        a_valid     <= 0;
        b_valid     <= 0;
        op_valid    <= 0;        
    end
    else begin
        a_valid     <= 0;
        b_valid     <= 0;
        op_valid    <= 0;
        if (load_a_i) begin
            a           <= a_i;
            a_valid     <= 1;
        end
        if (load_b_i) begin
            b           <= b_i;
            b_valid     <= 1;
        end
        if (load_op_i) begin
            op          <= op_i;
            op_valid    <= 1;
        end
    end
end

endmodule

