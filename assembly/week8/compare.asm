# initializations
addi x19,x0,3   # a
addi x20,x0,4   # b
addi x21,x0,0   # less

# (a < b)  -> less = 1

slt x21,x19,x20
nop