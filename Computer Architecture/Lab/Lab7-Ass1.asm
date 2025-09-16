# Lab 7, Assignment 1
.text
main:
input:
	li a7, 5    	# input a integer to a0
    	ecall
	jal abs 	# jump and link to abs procedure
	li a7, 10 	# terminate
	ecall		# system call
end_main:

abs:
	sub s0, zero, a0 	# put -a0 in s0; in case a0 < 0
	blt a0, zero, done 	# if a0 < 0 then done
	add s0, a0, zero 	# else put a0 in s0
done:
	jr ra	# jump to return address