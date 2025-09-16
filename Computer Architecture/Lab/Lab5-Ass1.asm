#Lab 5 Assignment 1
.data 
test: .asciz "Hello World"
.text
	li a7, 4	#laod the serviceis number (4 is print string to I/O window)
	la a0, test	#load the address of test to a0
	ecall		#system call
