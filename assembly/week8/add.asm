# initializations
addi x18,x0,0   # f
addi x19,x0,36  # g
addi x20,x0,64  # h
addi x21,x0,-23 # i
addi x22,x0,24  # j

# f = (g + h) - (i + j)
add x5,x19,x20
add x6,x21,x22
sub x18,x5,x6
nop