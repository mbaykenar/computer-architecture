module counter
#(parameter N = 4)
(
input clk,
input rstn,
input en_i,
output reg [N-1:0] count_o
);

always @(posedge clk) begin
    if (!rstn) begin
        count_o <= 0;
    end else begin
        if (en_i) begin
            count_o <= count_o + 1;
        end
    end
end

endmodule

