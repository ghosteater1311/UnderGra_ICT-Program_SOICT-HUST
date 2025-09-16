.data
	A: .word -2, 6, -1, 3, -2
	mes1: .asciz "The maximum prefix sum of length "
	mes2: .asciz " is: "
.text
main:
	la a0, A 	#a0 = address of A
	li a1, 5	#
	j mspfx
continue:
print_mes1:
	li a7, 4
	la a0, mes1
	ecall
print_length:
	li a7, 1
	mv a0, s0
	ecall
print_mes2:
	li a7, 4
	la a0, mes2
	ecall
print_result:
	li a7, 1
	mv a0, s1
	ecall
exit:
	li a7, 10
	ecall
end_of_main:

mspfx:
	li s0, 0 # prefix sum length
	li s1, 0x80000000 # maximum prefix sum
	li t0, 0 # t0 = i
	li t1, 0 # running sum
loop:
	add t2, t0, t0 
	add t2, t2, t2 # i = i + 4
	add t3, t2, a0 # 4i + A (address of A[i]) in t3
	lw t4, 0(t3) # load A[i] from mem(t3) into t4
	add t1, t1, t4 # add A[i] to running sum in t1
	blt s1, t1, mdfy # if(s1 < t1) modify results
	j next
mdfy:
	addi s0, t0, 1 # new max-sum prefix has length i+1
	addi s1, t1, 0 # new max sum is the running sum
next:
	addi t0, t0, 1 # advance the index i
	blt t0, a1, loop # if(i<n) repeat
done:
	j continue
mspfx_end: