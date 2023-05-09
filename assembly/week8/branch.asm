# initializations
addi x19,x0,2   # a
addi x20,x0,2  # b
addi x21,x0,0   # c
addi x22,x0,40  # d
addi x23,x0,30  # e

# (a == b)  -> c = d + e
#           -> c = d - e

bne x19,x20,Else
add x21,x22,x23 
beq x0,x0,Exit
Else:
sub x21,x22,x23 
Exit:
nop