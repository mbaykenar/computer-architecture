# initializations
addi x19,x0,5   # a
addi x20,x0,16  # b
addi x21,x0,0  # c

# a = a << 4;
# b = b >> 3;
# c = a << b;

slli x19,x19,4      # shift left logical immediate
srli x20,x20,3      # shift right logical immediate
sll x21,x19,x20     # shift left logical
nop
