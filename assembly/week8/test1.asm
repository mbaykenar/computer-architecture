addi a0,zero,5
addi a1,zero,7
lui s2,0x1000
add a2,a0,a1
sw a2,4(s2)
lw a3,4(s2)
nop

addi x10,x0,5
addi x11,x0,7
lui x18,0x1000
add x12,x10,x11
sw x12,4(x18)
lw x13,4(x18)
addi x0,x0,0

