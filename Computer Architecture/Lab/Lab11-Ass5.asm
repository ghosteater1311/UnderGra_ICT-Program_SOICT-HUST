.data
    message: .asciz "Exception occurred.\n"
.text
main:
    try:
        la t0, catch
        csrrw zero, 5, t0 # Set utvec (5) to the handlers address
        csrrsi zero, 0, 1 # Set interrupt enable bit in ustatus (0)
        lw zero, 0 # Trigger trap for Load access fault
    finally:
        li a7, 10 # Exit the program
        ecall
    catch:
        # Show message
        li a7, 4
        la a0, message
        ecall
        
        # Load finally address to uepc
        la t0, finally
        csrrw zero, 65, t0
        uret
