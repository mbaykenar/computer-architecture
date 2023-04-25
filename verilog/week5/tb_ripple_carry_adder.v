`timescale 1ns / 1ps

module tb_ripple_carry_adder;

reg [31:0] a_i;
reg [31:0] b_i;
reg cin_i;
wire cout_o;
wire [31:0] s_o;

ripple_carry_adder
#(.N(32))
DUT 
(
.a_i    (a_i   ),
.b_i    (b_i   ),
.cin_i  (cin_i ),
.cout_o (cout_o),
.s_o    (s_o   )
);

initial begin
a_i = 156;
b_i = 233;
cin_i = 0;
#10;

a_i = -33;
b_i = 233;
cin_i = 0;
#10;

a_i = -33;
b_i = 233;
cin_i = 1;
#10;


$finish;
end

endmodule
