# initializations
addi x21,x0,50      # h
addi x22,x0,0x100   # my_array base address
addi x5,x0,40       # temp reg for storing "40"
sw x5,32(x22)       # write "40" to my_array[8]
addi x5,x0,0        # temp reg for storing "0"
sw x5,48(x22)       # write "0" to my_array[12]

# my_array[12] = h + my_array[8]
lw x9,32(x22)
add x9,x21,x9
sw x9,48,(x22)
nop