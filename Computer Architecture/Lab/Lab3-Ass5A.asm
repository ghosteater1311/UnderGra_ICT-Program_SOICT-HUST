# Lab3, Assignment 2
.data
	A: .word 1, 3, 2, 5, 4, 7, 8, 9, 6
.text
# Initialize s2, s3, s4 registers
    	li s1, 0      # i = 0
    	la s2, A      # s2 = address of A[i]
    	li s3, 9      # n = 9
    	li s4, 1      # step = 1
    	li s5, 0      # sum = 0
loop:
	ble s1, s3, partA      # if i <= n continue loop
    	j endloop              # if didn't satify the condition, end loop
partA:
    	add t1, s1, s1         # t1 = 2 * i
    	add t1, t1, t1         # t1 = 4 * i
    	add t1, t1, s2         # t1 = address of A[i]
    	lw t0, 0(t1)           # load A[i] into t0
    	add s5, s5, t0         # sum = sum + A[i]
    	add s1, s1, s4         # i = i + step
    	j loop                 # go to loop
endloop:
