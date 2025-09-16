#Lab 2 Assignment 5
.text 
#Assign X, Y into t1, t2 register
	addi t1, zero, 4
	addi t2, zero, 5
#Exxpression Z = X * Y
	mul s1, t1, t2 #s1 contain low 32 bit