# Lab 3, Assignment 1
.text
	addi s1, zero, 1 	#i = 1
	addi s2, zero, 2 	#j = 2
start:
    	slt t0, s2, s1  	# set t0 = 1 if j < i else t0 = 0
    	beq t0, zero, else  	# if t0 = 0 then i >= j, jump to else
then:
	addi t1, t1, 1 		# x = x + 1
	addi t3, zero, 1 	# z = 1
	j endif 		# skip “else” part
else:
	addi t2, t2, -1 	# begin else part: y=y-1
	add t3, t3, t3 		# z=2*z
endif:
