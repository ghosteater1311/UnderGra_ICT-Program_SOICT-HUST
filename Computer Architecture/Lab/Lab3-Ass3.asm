# Lab 3, Home Assignment 3
.data
	#test: .word 0
	#test: .word 1
	#test: .word 2
	test: .word 3
.text
	la s0, test 	# N?p ??a ch? c?a bi?n test vào s0
	lw s1, 0(s0) 	# N?p giá tr? c?a bi?n test vào s1
	li t0, 0 	# N?p giá tr? c?n ki?m tra
	li t1, 1 	# N?p giá tr? c?n ki?m tra
	li t2, 2 	# N?p giá tr? c?n ki?m tra
	beq s1, t0, case_0
	beq s1, t1, case_1
	beq s1, t2, case_2
	j default
case_0:
	addi s2, s2, 1 	# a = a + 1
	j continue
case_1:
	sub s2, s2, t1 	# a = a - 1
	j continue
case_2:
	add s3, s3, s3 	# b = 2 * b
	j continue
default:
continue:
