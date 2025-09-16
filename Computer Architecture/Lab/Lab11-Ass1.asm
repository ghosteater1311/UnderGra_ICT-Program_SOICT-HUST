# ------------------------------------------------------
#           col 0x1     col 0x2     col 0x4     col 0x8
# row 0x1       0           1           2           3
#             0x11        0x21        0x41        0x81
# row 0x2       4           5           6           7 
#             0x12        0x22        0x42        0x82
# row 0x4       8           9           a           b
#             0x14        0x24        0x44        0x84
# row 0x8       c           d           e           f
#             0x18        0x28        0x48        0x88
# ------------------------------------------------------
# Command row number of hexadecimal keyboard (bit 0 to 3)
# Eg. assign 0x1, to get key button 0,1,2,3
# assign 0x2, to get key button 4,5,6,7
# NOTE must reassign value for this address before reading,
# eventhough you only want to scan 1 row
.eqv IN_ADDRESS_HEXA_KEYBOARD 0xFFFF0012
# Receive row and column of the key pressed, 0 if not key pressed
# Eg. equal 0x11, means that key button 0 pressed.# Eg. equal 0x28, means that key button D pressed.
.eqv OUT_ADDRESS_HEXA_KEYBOARD 0xFFFF0014
.data 
    space: .asciz " "
.text
main:
    li t1, IN_ADDRESS_HEXA_KEYBOARD
    li t2, OUT_ADDRESS_HEXA_KEYBOARD
    li t4, 0x08 # declare the maximum row
    init_row_1:
        li t3, 0x01 # init the row 1
    polling:
        sb t3, 0(t1) # must reassign expected row
        lb a0, 0(t2) # read scan code of key button
        bne a0, zero, print # if a0 = 0, jump to print
    next_row:
        slli t3, t3, 1 # shift left 1 bit to get next row
    check_row:
        bgt t3, t4, init_row_1 # check if the current row is greater than maximum row -> jump back to row 1
    print:
        li a7, 34 # print integer (hexa)
        ecall
    print_space:
        la a0, space # print thye space
        li a7, 4
        ecall
    sleep:
        li a0, 100 # sleep 100ms
        li a7, 32
        ecall
    back_to_polling:
        j polling # continue polling
