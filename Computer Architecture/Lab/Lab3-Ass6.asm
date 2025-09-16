# Lab 3, Assignment 6
.data
	A: .word 5, -12, 8, -20, 15, -25, 7, 3 
.text
	li s1, 0 	#i = 0
	la s2, A 	#s2 = address of A[i]
	li s3, 8 	#n = 8
	li s4, 1 	#step = 1
	lw s5, 0(s1) 	#s5 stores the first element in the array (initial max abs value)
	li s6, 0 	#position of the largest absolute value 
loop:
	bge s1, s3, endloop #condition if i >= n endloop
	add t1, s1, s1 		# t1 = 2 * s1
	add t1, t1, t1 		# t1 = 4 * s1 => t1 = 4*i
	add t1, t1, s2 		# t1 store the address of A[i]	
	lw t0, 0(t1) 		# load value of A[i] in t0
	bgez t0, check_max 	#if A[i] >= 0, skip
	neg t0, t0		#if A[i] is negative, make it possitve
check_max:
	ble t0, s5, continue	#if abs(A[i]) <= largest abs, skip update
	mv s5, t0 		#update the largest absolute value
	mv s6, s1 		#update the position of the largest absolute value
continue:
	addi s1, s1, 1 		#i = i + 1
	j loop
endloop:

	
	