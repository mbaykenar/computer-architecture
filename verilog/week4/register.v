module register
#(parameter N = 8)
(
input clk,
input rstn,
input [N-1:0] d_i,
output [N-1:0] q_o
);

always @(posedge clk) begin
    if (!rst) begin
        q_o <= 0;
    end else begin
        q_o <= d_i;
    end
end

endmodule

