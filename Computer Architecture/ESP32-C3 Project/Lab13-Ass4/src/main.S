.global init

.eqv GPIO_OUT_W1TS_REG, 0x60004008 # set register
.eqv GPIO_OUT_W1TC_REG, 0x6000400C # clear register
.eqv GPIO_ENABLE_REG, 0x60004020 # enable output register
.eqv GPIO_IN_REG, 0x6000403C # state register GPIO
.eqv IO_MUX_GPIO0_REG, 0x60009004 # function register GPIO0

.data

.text
init:
    li a1, GPIO_ENABLE_REG # Set GPIO1 as input
    li a2, 0x02
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO0_REG # Enable GPIO0 as input
    lw a2, 0(a1)
    ori a2, a2, 0x200 # Set bit IO_MUX_GPIO0_FUN_IE
    sw a2, 0(a1)

loop:
    li a1, GPIO_IN_REG # Read status of GPIO
    lw a2, 0(a1)
    andi a3, a2, 0x01 # Check GPIO0
    beq a3, zero, clear # If GPIO0 = 0 => turn off LED

set:
    li a1, GPIO_OUT_W1TS_REG # turn on LED: Set GPIO1 = 1
    li a2, 0x02
    sw a2, 0(a1)
    j next

clear:
    li a1, GPIO_OUT_W1TC_REG # off LED: Clear GPIO1 = 0
    li a2, 0x02
    sw a2, 0(a1)

next:
    j loop # Loop