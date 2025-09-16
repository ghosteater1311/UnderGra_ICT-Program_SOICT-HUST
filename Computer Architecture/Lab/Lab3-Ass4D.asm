# Lab 3, Assignment 1
.text
	addi s1, zero, 1   # i = 1
	addi s2, zero, 2   # j = 2
	addi s3, zero, 3   # m = 3
	addi s4, zero, 4   # n = 4
start:
    	add t0, s1, s2  # t0 = i + j
    	add t1, s3, s4  # t1 = m + n
    	slt t2, t1, t0  # t2 = 1 if m + n < i + j
    	beqz t2, else   # if i + j <= m + n, jump to "else"
then:
    	addi t1, t1, 1  # x = x + 1
    	addi t3, zero, 1 # z = 1
    	j endif         # skip "else" part
else:
    	addi t2, t2, -1 # begin else part: y = y - 1
    	add t3, t3, t3  # z = 2 * z
endif:
