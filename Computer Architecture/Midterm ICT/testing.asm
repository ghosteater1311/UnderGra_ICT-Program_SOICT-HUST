.eqv IN_ADDRESS_HEXA_KEYBOARD 0xFFFF0012
.eqv OUT_ADDRESS_HEXA_KEYBOARD 0xFFFF0014
.data
    message: .asciz "Key scan code: "

# -----------------------------------------------------------------
# MAIN Procedure
# -----------------------------------------------------------------

.text
main:
    # Load the interrupt service routine address to the UTVEC register
    la t0, handler
    csrrw zero, utvec, t0

    # Set the UEIE (User External Interrupt Enable) bit in UIE register
    li t1, 0x100
    csrrs zero, uie, t1  # Enable external interrupts in the user mode

    # Set the UIE (User Interrupt Enable) bit in USTATUS register
    csrrsi zero, ustatus, 0x1  # Enable interrupts globally

    # Enable the interrupt of keypad of Digital Lab Sim
    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t3, 0x80  # Enable interrupt (bit 7)
    sb t3, 0(t1)

    # ---------------------------------------------------------
    # Loop to print a sequence of numbers
    # ---------------------------------------------------------
    xor s0, s0, s0  # count = s0 = 0
loop:
    addi s0, s0, 1  # Increment count
prn_seq:
    addi a7, zero, 1
    add a0, s0, zero  # Print auto sequence number
    ecall
    addi a7, zero, 11
    li a0, '\n'  # Print EOL
    ecall
sleep:
    addi a7, zero, 32
    li a0, 300  # Sleep 300 ms
    ecall
    j loop  # Jump back to loop
end_main:

# -----------------------------------------------------------------
# Interrupt Service Routine (Handler)
# -----------------------------------------------------------------
handler:
    # Save context
    addi sp, sp, -16
    sw a0, 0(sp)
    sw a7, 4(sp)
    sw t1, 8(sp)
    sw t2, 12(sp)

    # Print message
prn_msg:
    addi a7, zero, 4
    la a0, message
    ecall

    # Scan all rows to detect pressed key
get_key_code:
    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t2, 0x81  # Re-enable interrupt and check row 0
    sb t2, 0(t1)  # Enable row 0
    li t1, OUT_ADDRESS_HEXA_KEYBOARD
    lb t3, 0(t1)
    bne t3, zero, prn_key_code  # If key pressed, go to print key

    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t2, 0x82
    sb t2, 0(t1)  # Enable row 1
    li t1, OUT_ADDRESS_HEXA_KEYBOARD
    lb t3, 0(t1)
    bne t3, zero, prn_key_code  # If key pressed, go to print key
	
    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t2, 0x84
    sb t2, 0(t1)  # Enable row 2
    li t1, OUT_ADDRESS_HEXA_KEYBOARD
    lb t3, 0(t1)
    bne t3, zero, prn_key_code  # If key pressed, go to print key
    
    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t2, 0x88
    sb t2, 0(t1)  # Enable row 3
    li t1, OUT_ADDRESS_HEXA_KEYBOARD
    lb t3, 0(t1)
    bne t3, zero, prn_key_code  # If key pressed, go to print key

    j end_handler  # No key press, skip key printing

# Print the key code
prn_key_code:
    addi a7, zero, 34  # Print integer syscall
    add a0, t3, zero   # Key code to print
    ecall
    addi a7, zero, 11
    li a0, '\n'  # Print EOL
    ecall

# Restore context and return
end_handler:
    lw t2, 12(sp)
    lw t1, 8(sp)
    lw a7, 4(sp)
    lw a0, 0(sp)
    addi sp, sp, 16
    uret  # Return from interrupt
