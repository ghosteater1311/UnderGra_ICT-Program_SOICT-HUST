.data
    str:    .space 255
    mes1:   .asciiz "Input the string from keyboard"
    mes2:   .asciiz "The length of the string is: "

.text
main:
get_string:
    li a7, 54          #service number to InputDialogString
    la a0, mes1        #load address of message on dialog to a0
    la a1, str         #load address of input string to a1
    li a2, 255          #load buffer to a2 (50)
    ecall              #system call

get_length:
    la a0, str         #a0 = address of str[0]
    li t0, 0           #t0 = i = 0

check_char:
    add t1, a0, t0     #t1 = a0 + t0   //address of str[0 + i]
    lb t2, 0(t1)       #t2 = str[i]
    beq t2, zero, end_of_str    #check end of str
    addi t0, t0, 1     #t0 = t0 + 1    //i = i + 1
    j check_char

end_of_str:
end_of_get_length:
    addi t0, t0, -1    #avoid counting new line character (\n)

print_length:
    li a7, 56          #service number to MessageDialogInt
    la a0, mes2        #load address of message on dialog to a0
    add a1, t0, zero   #load a1 = length of string
    ecall              #system call
