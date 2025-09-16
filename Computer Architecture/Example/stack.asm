push:
	addi sp, sp, -4
	sw t0, 0(sp)
pop:
	lw t0, 0(sp)
	addi sp, sp, 4