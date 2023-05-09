# This program defines a procedure called add_numbers that takes two input arguments (in a0 and a1) and returns the sum of all numbers from the first argument to the second argument (inclusive) in a0.
# The add_numbers procedure uses a loop to iteratively add the input numbers together, and then returns the result by setting a0 to the final sum.
# The main program calls the add_numbers procedure with inputs 5 and 10 and then exits the program.
# Main program
_start:
    # Call the add_numbers procedure with inputs 5 and 10
    addi a0, x0, 5
    addi a1, x0, 10
    jal ra, add_numbers
    
    # Exit the program
    li a7, 10
    ecall
# Declare the procedure called "add_numbers"
add_numbers:
    addi s1, s0, 0  # Initialize a counter variable
    addi s2, s0, 0  # Initialize a sum variable
    
loop:
    add s2, s2, a0  # Add the input number to the sum
    addi s1, s1, 1  # Increment the counter
    
    blt s1, a1, loop  # If the counter is less than the second input number, jump to the loop label
    
    add a0, s2, x0  # Set the output number to the sum
    jr ra  # Return from the procedure






