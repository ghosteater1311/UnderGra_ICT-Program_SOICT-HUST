.text 
	li a1, 10
	li a2, 20
	
	jal add_two_number
	addi t0, a0, 0
add_two_number:
	add a0, a1, a2
	jr ra