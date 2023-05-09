# initializations
addi x19,x0,-5  # a
slli x20,x19,24 # b
addi x21,x0,0   # c
addi x22,x0,0   # d

# a = a & 0xFF;
# c = a ^ b;
# d = c | b;
# b = ~d;

andi x19,x19,0xFF
xor x21,x19,x20 
or x22,x21,x20
addi x5,x0,-1
xor x20,x22,x5
nop
