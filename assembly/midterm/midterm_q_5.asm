# initializations
# NOTE: You did not have to write initialization instructions
# These are just for testing purpose
initializations:
    addi x10,x0,0x100
    addi x11,x0,0x110
    addi t0, x0, 4    
    sw t0, 0(x10)
    addi t0, x0, 7    
    sw t0, 4(x10)
    addi t0, x0, 10    
    sw t0, 8(x10)

# Find max of 3 numbers

main:
    addi t0, x0, 0
    lw t1, 0(x10) 
    lw t2, 4(x10)
    lw t3, 8(x10)
    bgt t1, t0, check_t1_t2   # Compare t1 with t0  
    # If t1 <= t0, go to comparing t2 with t0
    bgt t2, t0, check_t2_t3   # Compare t2 with t0  
    # If t2 <= t0, the maximum number is t3
    addi t0, t3, 0            # Move t3 to t0
    j store_result    

check_t1_t2:
    addi t0, t1, 0            # For now t1 is the largest
    # If t1 is also larger than t2, then check t1-t3
    bgt t1, t2, check_t1_t3   # Compare t1 with t3  
    # If t2 is larger than t1, then check t2-t3
    j check_t2_t3   # if t2 >= t3 then t2 is the largest

check_t1_t3:
    addi t0, t1, 0            # For now t1 is the largest
    bgt t1, t3, store_result  # Compare t1 with t3   
    # If t1 <= t3, the maximum number is t3
    addi t0, t3, 0            # Move t3 to t0
    j store_result    

check_t2_t3:
    addi t0, t2, 0            # For now t2 is the largest
    bgt t2, t3, store_result  # Compare t2 with t3    
    # If t2 <= t3, the maximum number is t3
    addi  t0, t3, 0           # Move t3 to t0

store_result:
    sw t0, 0(x11)

end:
    nop
