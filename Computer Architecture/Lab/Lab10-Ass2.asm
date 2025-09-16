# Lab 10 - Assignment 2
# Print last 2 digits ASCII Code of a letter input from keyboard 
.eqv SEV_SEG_LEFT 0xFFFF0011 	# Address of the 7-SEG LED on the left
.eqv SEV_SEG_RIGHT 0xFFFF0010 	# Address of the 7-SEG LED on the right

.data 
	num_data: .byte 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F # 7-segment codes for 0-9

.text
main:
	input:
        # Input a Character from keyboard
        li a7, 12            # Syscall to read a character
        ecall

    process:
        # Calculate the last two digits of the ASCII code
        li t0, 10            # Base 10
        rem t1, a0, t0       # t1 = a0 % 10 (last digit)
        div a0, a0, t0       # a0 = a0 / 10
        rem t2, a0, t0       # t2 = a0 % 10 (second last digit)

        # Load 7-segment representation for the digits
        la t3, num_data      # Load base address of num_data
        add t4, t3, t1       # t4 = address of num_data[t1] (last digit code)
        lb t4, 0(t4)         # Load value at num_data[t1] into t4
        add t5, t3, t2       # t5 = address of num_data[t2] (second last digit code)
        lb t5, 0(t5)         # Load value at num_data[t2] into t5

    display:
        # Display the digits on the 7-segment LEDs
        li t6, SEV_SEG_RIGHT
        sb t4, 0(t6)         # Write the last digit to the right display

        li t6, SEV_SEG_LEFT
        sb t5, 0(t6)         # Write the second last digit to the left display
end:
	# End of program
	li a7, 10            # Exit syscall
	ecall

