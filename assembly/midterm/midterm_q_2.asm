main:
    # Load values of a, b, c, and d into registers
    addi a0, x0, 7
    addi a1, x0, 4
    addi a2, x0, 6
    addi a3, x0, 3
    
    # Compute (a - b)
    sub t0, a0, a1
    
    # Compute (c - d)
    sub t1, a2, a3
    
    # Compare (a - b) with (c - d)
    beq t0, t1, equal
    
    # If not equal, compute (a + b)
    add t2, a0, a1
    
    # Compute (c + d)
    add t3, a2, a3
    
    # Compute (a + b) - (c + d)
    sub t4, t2, t3
    
    # Copy the result in e (a4)
    add a4, x0, t4
    j end
    
equal:
    # If equal, compute (a - b) + (c - d)
    add t4, t0, t1
    
    # Copy the result in e (a4)
    add a4, x0, t4
    
end:
    # End of program
    nop
