`timescale 1ns / 1ps
module tb_fpu;

reg clk             ;
reg rstn            ;
reg load_a_i        ;
reg load_b_i        ;
reg load_op_i       ;
reg [31:0] a_i      ;
reg [31:0] b_i      ;
reg [7:0] op_i      ;
wire ready_o        ;
wire [31:0] out_o   ;

localparam real c_clk_period = 20;

fpu DUT
(
.clk        (clk      ),      
.rstn       (rstn     ), 
.load_a_i   (load_a_i ),
.load_b_i   (load_b_i ),
.load_op_i  (load_op_i),
.a_i        (a_i      ),
.b_i        (b_i      ),
.op_i       (op_i     ),
.ready_o    (ready_o  ),
.out_o      (out_o    )
);

always begin
    #(c_clk_period/2) clk = !clk;
end

initial begin
clk         = 0;
rstn        = 0;
load_a_i    = 0;
load_b_i    = 0;
load_op_i   = 0;
a_i         = 32'h40fc0000; // 7.875
b_i         = 32'h3e400000; // 0.1875
op_i        = 0;
#40;
rstn        = 1;
load_a_i    = 1; 
load_b_i    = 1;
load_op_i   = 1;
#20;
load_a_i    = 0;
load_b_i    = 0;
load_op_i   = 0;
@(posedge ready_o);
#20;
load_a_i    = 1; 
load_b_i    = 1;
load_op_i   = 1;
op_i        = 1;
#20;
load_a_i    = 0; 
load_b_i    = 0;
load_op_i   = 0;
op_i        = 0;
@(posedge ready_o);
#20;

$finish;
end

endmodule

