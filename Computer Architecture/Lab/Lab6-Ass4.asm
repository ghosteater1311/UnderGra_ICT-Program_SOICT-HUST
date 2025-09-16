.data
	A: .word 1, -2, 5, 3, 9, 7, 13
	Aend: .word
.text
main:
	la a0, A         # a0 = address(A[0])
	la a1, Aend      # a1 = address(A[n-1])
	j insertion_sort
after_sort:
	li a7, 10
	ecall
end_main:



insertion_sort:
	addi t0, a0, 4    # Start from the second element
	beq t0, a1, done  # If there's only one element, it's already sorted
loop_outer:
	lw s1, 0(t0)      # Load the current element
	addi t1, t0, -4   # t1 points to the previous element
loop_inner:
	blt t1, a0, insert # If reached the beginning, insert
	lw s0, 0(t1)      # Load the previous element
	blt s0, s1, insert # If previous < current, insert
	sw s0, 4(t1)      # Shift the previous element right
	addi t1, t1, -4   # Move left to check the next element
	j loop_inner
insert:
	sw s1, 4(t1)      # Insert the current element in its sorted position
	addi t0, t0, 4    # Move to the next element
	beq t0, a1, done  # If at the end, we're done
	j loop_outer
done:
	j after_sort
