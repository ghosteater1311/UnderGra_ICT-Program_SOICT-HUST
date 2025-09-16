.data
    message_largest: .asciz "Largest: "
    message_smallest: .asciz "\nSmallest: "
    comma: .asciz ", "
.text
main:
    # Call Max_Min subroutine to find largest and smallest values
    jal Max_Min 

print:
    # Print largest value and its position
    la a0, message_largest    # Load message for largest
    li a7, 4                  # System call for print string
    ecall

    addi a0, s0, 0            # Move largest value to a0 for print
    li a7, 1                  # System call for print integer
    ecall

    li a7, 4                  # Print comma and space
    la a0, comma
    ecall

    addi a0, s1, 0            # Move largest position to a0 for print
    li a7, 1                  # System call for print integer
    ecall

    # Print smallest value and its position
    la a0, message_smallest   # Load message for smallest
    li a7, 4                  # System call for print string
    ecall

    addi a0, s2, 0            # Move smallest value to a0 for print
    li a7, 1                  # System call for print integer
    ecall

    li a7, 4                  # Print comma and space
    la a0, comma
    ecall

    addi a0, s3, 0            # Move smallest position to a0 for print
    li a7, 1                  # System call for print integer
    ecall

    li a7, 10                 # System call for program exit
    ecall

Max_Min:
    # Initial example values in a0 to a7
    li a0, 2    
    li a1, -1
    li a2, 4
    li a3, 9
    li a4, 5
    li a5, 3
    li a6, 21
    li a7, 7

    # Store initial values and set up the stack
    addi sp, sp, -16          # Adjust stack for storing registers
    sw ra, 12(sp)             # Store return address
    sw t0, 8(sp)              # Store temporary registers
    sw t1, 4(sp)
    sw t2, 0(sp)

    # Initialize largest and smallest values with a0 and positions with 0
    addi s0, a0, 0            # s0 = largest value
    addi s2, a0, 0            # s2 = smallest value
    li s1, 0                  # s1 = position of largest value
    li s3, 0                  # s3 = position of smallest value

    # Begin comparisons with registers a0 through a7
    li t0, 0                  # Position counter for current register, start from 0

    # Manually check each register from a0 to a7
    addi t1, a0, 0            # Load a0
    jal compare_and_update
    addi t0, t0, 1            # Increment position

    addi t1, a1, 0            # Load a1
    jal compare_and_update
    addi t0, t0, 1            # Continue incrementing position

    addi t1, a2, 0            # Load a2
    jal compare_and_update
    addi t0, t0, 1

    addi t1, a3, 0            # Load a3
    jal compare_and_update
    addi t0, t0, 1

    addi t1, a4, 0            # Load a4
    jal compare_and_update
    addi t0, t0, 1

    addi t1, a5, 0            # Load a5
    jal compare_and_update
    addi t0, t0, 1

    addi t1, a6, 0            # Load a6
    jal compare_and_update
    addi t0, t0, 1

    addi t1, a7, 0            # Load a7
    jal compare_and_update

end_loop:
    # Restore the stack and return
    lw ra, 12(sp)             # Restore return address
    lw t0, 8(sp)              # Restore temporary registers
    lw t1, 4(sp)
    lw t2, 0(sp)
    addi sp, sp, 16           # Restore stack pointer
    jr ra                     # Return to caller

compare_and_update:
    bgt t1, s0, update_largest # If current value > largest, update largest
    blt t1, s2, update_smallest # If current value < smallest, update smallest
    jr ra                       # Return to Max_Min

update_largest:
    addi s0, t1, 0              # Update largest value
    addi s1, t0, 0              # Update largest position
    jr ra                       # Return to compare_and_update

update_smallest:
    addi s2, t1, 0              # Update smallest value
    addi s3, t0, 0              # Update smallest position
    jr ra                       # Return to compare_and_update
