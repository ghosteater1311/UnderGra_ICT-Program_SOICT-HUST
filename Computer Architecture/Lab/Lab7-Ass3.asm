# Lab 7, Assignment 3
.text
    li s0, 0x00000005
    li s1, 0xfffffffe
push:
    addi sp, sp, -12 # adjust the stack pointer
    sw s0, 8(sp) # push s0 to stack
    sw s1, 4(sp) # push s1 to stack
work:
sum:
    add s2, s0, s1  # s2 = s0 + s1
push_s2:
    sw s2, 0(sp)    # push s2 to stack 
pop:
    lw s0, 0(sp) # pop from stack to s0
    lw s1, 4(sp) # pop from stack to s1
    lw s2, 8(sp) # pop from stack to s2    
    addi sp, sp, 12 # adjust the stack pointer