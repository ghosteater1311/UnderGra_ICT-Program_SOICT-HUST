.data
    msg: .asciz "Overflow Occur!"
.text
    la t0, handler  # Loads the address of the handler function into t0.
    csrrs zero, utvec, t0   # Sets the user trap vector (utvec) to the address of handler.
    csrrsi zero ustatus, 1  # Enables user interrupts by setting the UIE (User Interrupt Enable) bit in the ustatus CSR.
    csrrsi zero, uie, 1 # Enables specific user-mode interrupts in the uie CSR.

    li s1, 0x7FFFFFFF   # s1 = 0x7FFFFFFF
    li s2, 1    # s2 = 1

    add s3, s1, s2  # s3 = s1 + s2, This operation causes an overflow since the result exceeds the maximum positive integer.
    xor t1, s1, s2  # Performs a bitwise XOR between s1 and s2. If s1 and s2 have the same sign, the XOR result will be non-negative.
    blt t1, zero, EXIT  # If t1 is negative (different signs for s1 and s2), the program exits without overflow handling.
    slt t2, s3, s1  # Checks if the result (s3) is less than the first operand (s1).
    blt s1, zero, NEGATIVE  # If s1 is negative, jumps to the NEGATIVE block for further checks.
    beq t2, zero, EXIT  # If t2 is zero (no overflow detected), exits the program.

    j OVERFLOW

    NEGATIVE:
        bne t2, zero, EXIT  # If there is no overflow in the negative case, exits the program.
        
    OVERFLOW:
        csrrsi zero, uip, 1 # Sets the UIP (User Interrupt Pending) bit in the uip CSR to trigger the interrupt.

    EXIT:
    # Executes the system call to exit the program.
        li a7, 10
        ecall

handler:
    addi sp, sp, -8 # Allocates space on the stack for saving registers.
    sw a0, 0(sp)    # Saves the value of a0 onto the stack.
    sw a7, 4(sp)    # Saves the value of a7 onto the stack.

# Print Message
    li a7, 4
    la a0, msg
    ecall

    lw a7, 4(sp)    # Restores the value of a7 from the stack.
    lw a0, 0(sp)    # Restores the value of a0 from the stack.
    addi sp, sp, 8  # Deallocates the stack space used.

    uret    # Returns from the trap and resumes execution at the point of interruption.
