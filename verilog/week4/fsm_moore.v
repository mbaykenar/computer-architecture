module fsm_moore
(
input clk,
input rstn,
input x_i,
output reg y_o
);

reg [1:0] state;

localparam S0 = 2'b00;
localparam S1 = 2'b01;
localparam S2 = 2'b10;

always @(posedge clk) begin
    if (!rstn) begin
        state   <= S0;
        y_o     <= 0;
    end else begin
        case (state)
            S0 : begin 
                y_o <= 0;
                if (!x_i) begin
                    state <= S2;
                end else begin
                    state <= S1;
                end
            end
            S1 : begin
                y_o <= 0;
                if (!x_i) begin
                    state <= S0;
                end else begin
                    state <= S2;
                end   
            end         
            S2 : begin 
                y_o <= 1;
                if (!x_i) begin
                    state <= S0;
                end else begin
                    state <= S2;
                end   
            end                     
            default: begin
                
            end
        endcase
    end
    
end

endmodule

