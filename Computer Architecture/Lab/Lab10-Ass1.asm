# Lab 10 - Assignment 1
# Last 2 digit of Student ID 
# My Student ID is 20235890 -> last 2 digits is 90  
.eqv SEV_SEG_LEFT 0xFFFF0011 	# Address of the 7-SEG LED on the left
.eqv SEV_SEG_RIGHT 0xFFFF0010 	# Address of the 7-SEG LED on the right

.text
	main:
		li a1, 0x6F # Set value for 7 segments to Display 9
		jal SHOW_7SEG_LEFT # Show the result
		li a1, 0x3F # Set value for 7 segments to display 0
		jal SHOW_7SEG_RIGHT # Show the result
	exit:
		li a7, 10
		ecall
	end_main:
	
	SHOW_7SEG_LEFT:
		li t1, SEV_SEG_LEFT # Assign port's address
		sb a1, 0(t1) # Assign new value
		jr ra

	SHOW_7SEG_RIGHT:
		li t1, SEV_SEG_RIGHT # Assign port's address
		sb a1, 0(t1) # Assign new value
		jr ra
