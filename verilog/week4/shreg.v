module shreg
#(parameter N = 8)
(
input clk,
input rstn,
input datain_i,
input en_i,
input load_i,
input [N-1:0] loadval_i,
output dataout_o
);

reg [N-1:0] r_reg;

always @(posedge clk) begin
    if (!rstn) begin
        r_reg <= 0;
    end else begin
        if (load_i) begin
            r_reg           <= loadval_i;        
        end else if (en_i) begin
            r_reg[0]        <= datain_i;
            r_reg[N-1:1]    <= r_reg[N-2:0];
        end else begin
            r_reg           <= r_reg;
        end
    end
end

assign dataout_o = r_reg[N-1];

endmodule

