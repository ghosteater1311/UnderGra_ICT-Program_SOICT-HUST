#Lab 5, Assignment 5
.data 
	strIn: .space 20
	strRev: .space 20
.text
main:
get_string:
	li a7, 8	#service number to InputDialogString
	la a0, strIn	#load address of input string to a2
	li a1, 20	#load buffer to a1 (20)
	ecall		#system call
get_length:
	la a0, strIn	#a0 = address of strIn[0]
	li t0, 0	#t0 = i = 0
	la a3, strRev 	#a3 = address of strRev[0]
check_char:
	add t1, a0, t0	#t1 = a0 + t0  //address of str[0 + i]
	lb t2, 0(t1)	#t2 = str[i]
	beq t2, zero, end_of_str	#check end of str
	addi t0, t0, 1	#t0 = t0 + 1  //i = i + 1
	j check_char	
end_of_str:
check_length:
	addi t0, t0, -1	#avoid counting new line character (\n)
reverse_string:
	add t3, t0, a0 	# t3 = t0 + a0 = i + strIn[0] = address of strIn[i]
	lb t4, 0(t3)	# t4 = value at t1 = strIn[i]
	add t5, t0, a3	# t5 = t0 + a3 = i + strRev[0] = address of strRev[i]
	sb t4, 0(t5)	# strRev[i] = t2 = strIn[i]
	beq t4, zero, end_of_reverse	# if strIn[i] == 0, exit
	addi t0, t0, -1	# s0 = s0 - 1 <-> i = i - 1
	j reverse_string #next character
end_of_reverse:

