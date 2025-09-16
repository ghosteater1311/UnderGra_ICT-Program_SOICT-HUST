#Hello world program
.data
	x: .word 0x01020304 #declare variable x with initialization
	msg: .asciz "Hello RISC-V"
.text
	la a0, msg #load address of string msg to register a0
	li a7, 4 #assign a7 = 4 for the function to print string
	ecall #issue a system call
	#do c = a + b
	addi t1, zero, 1 #t1 = 1
	addi t2, zero, 2 #t2 = 2
	add t0, t1, t2 #t0 = t1 + t2
	