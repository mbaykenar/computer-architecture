module dff
(
input clk,
input rstn,
input d_i,
output reg q_o
);

// active-low, synchronous reset
always @(posedge clk) begin
    if (!rstn) begin
        q_o <= 0;
    end else begin
        q_o <= d_i;      
    end  
end

endmodule

