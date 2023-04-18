`include "defines.vh"

module multu
#(parameter N = 32)
(
input [N-1:0] a_i,
input [N-1:0] b_i,
output [2*N-1:0] mul_o
);

`ifndef USE_DSP

integer i;
integer j;
reg [2*N-1:0] temp;
reg [2*N-1:0] pp;

always@* begin
    temp = 0;
    for (i=0; i<N; i=i+1) begin
        pp = 0;
        for (j=0; j<N; j=j+1) begin
            pp[j] = a_i[j] & b_i[i]; 
        end
        pp = pp << i;     
        temp = temp + pp;        
    end
end

assign mul_o = temp;

`else

assign mul_o = a_i * b_i; 

`endif 

endmodule

