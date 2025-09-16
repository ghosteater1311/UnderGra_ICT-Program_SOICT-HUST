.data
	A: .word 1, -2, 5, 3, 9, 7, 13
	Aend: .word
.text
main:
	la a0, A        # a0 = address(A[0])
	la a1, Aend     # a1 = address(A[n-1])
	addi a1, a1, -4 # a1 points to last element
	j bubble_sort
after_sort:
	li a7, 10
	ecall
end_main:



bubble_sort:
	addi t2, a0, 0 # t2 = first element pointer
loop_outer:
	beq a0, a1, done # If the list is fully sorted
	addi t0, a0, 0   # Reset inner loop pointer

loop_inner:
	addi t1, t0, 4    # t1 = next element
	beq t1, a1, swap_end # If at end of list, swap
	lw s0, 0(t0)      # Load current element
	lw s1, 0(t1)      # Load next element
	blt s1, s0, swap  # If next < current, swap
	addi t0, t0, 4    # Move to the next element
	j loop_inner
swap:
	sw s1, 0(t0)      # Swap current and next
	sw s0, 0(t1)
swap_end:
	addi a1, a1, -4   # Move the last unsorted element left
	j bubble_sort
done:
	j after_sort
