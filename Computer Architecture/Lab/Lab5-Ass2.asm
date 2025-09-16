#Lab 5 Assignment 2
.data
mes1: .asciz "The sum of "
mes2: .asciz " and "
mes3: .asciz " is "
.text
start:
	li a1, 3		#a1 = x = 3
	li a2, 4		#a2 = y = 4		
	add a3, a1, a2		#a3 = a1 + a2 / z = x + y
print_Mes1:	#The sum of
	li a7, 4		#load service number (4 is print string to I/O window)
	la a0, mes1		#load address of string to a0
	ecall			#system call
print_a1:	#a1
	li a7, 1		#load service number (1 is print a int to I/O window)			
	add a0, a1, zero	#a0 = a1
	ecall			#system call
print_Mes2:	#and
	li a7, 4		#load service number (4 is print string to I/O window)
	la, a0, mes2		#load address of mes2 to a0
	ecall			#system call
print_a2:	#a2
	li a7, 1		#load service number (1 is print a int to I/O window)
	add a0, a2, zero	#a0 = a2
	ecall			#system call
print_Mes3:	#is
	li a7, 4		#load service number (4 is print string to I/O window)
	la a0, mes3		#load address of mes3 to a0
	ecall			#system call
print_Result:	#a3
	li a7, 1		#load service number (1 is print a int to I/O window)
	add a0, a3, zero	#a0 = a3
	ecall			#system call
end: