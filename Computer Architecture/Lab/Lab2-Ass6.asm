# Lab 2 Assignment 6
.data # Declare variables
	X: .word 5 # Variable X, word type (4 bytes), initial value = 5
	Y: .word -1 # Variable Y, word type (4 bytes), initial value = -1
	Z: .word 0 # Variable Z, word type (4 bytes), initial value = 0
.text # Declare instructions
# Fetch values of variables X and Y to registers
	la t5, X # Get the literal address of X in Data Segment
	la t6, Y # Get the literal address of Y
	lw t1, 0(t5) # t1 = X content of word address [t5+0]
	lw t2, 0(t6) # t2 = Y content of word address [t6+0]
# Calculate Z = 2X + Y via registers respectively
	add s0, t1, t1 #s0 = Z = X + X = 2X
	add s0, s0, t2 #S0 = Z = 2X + Y
# Store values from registers to main memory (RAM)
	la t4, Z # Get Z’s address
	sw s0, 0(t4) # Store Z’s value to main memory