`timescale 1ns / 1ps

module tb_multu;

reg [31:0] a_i;
reg [31:0] b_i;
wire [63:0] mul_o;

multu 
#(.N(32))
DUT
(
    .a_i    (a_i   ),
    .b_i    (b_i   ),
    .mul_o  (mul_o   )
);

initial begin
a_i = 10;
b_i = 4;
#10;

a_i = 6;
b_i = 7;
#10;

a_i = 1556;
b_i = 20489;
#10;

$finish;

end

endmodule

