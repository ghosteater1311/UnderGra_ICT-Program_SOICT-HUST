.data 
    next_line: .asciz "\n"
.text
input1:
    li a7, 5    # input integer 1 
    ecall
    addi s0, a0, 0
input2:
    li a7, 5    # input integer 2
    ecall
    addi s1, a0, 0
division:
    div s3, s0, s1  # division without remember (a / b)
division_remember:
    rem s4, s0, s1  # division with remember (a % b) 
print_div:
    li a7, 1
    addi a0, s3, 0  # print division without remember (a / b)
    ecall
print_nextline:
    li a7, 4    # print next line
    la a0, next_line
    ecall  
print_rem:
    li a7, 1
    addi a0, s4, 0  # print division with remember (a % b)
    ecall