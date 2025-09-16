.global init

.eqv GPIO_ENABLE_REG, 0x60004020
.eqv GPIO_OUT_W1TS_REG, 0x60004008
.eqv GPIO_OUT_W1TC_REG, 0x6000400C

.text
init:
    li a1, GPIO_ENABLE_REG
    li a2, 0x01
    sw a2, 0(a1)

main_loop:
    li a1, GPIO_OUT_W1TS_REG
    li a2, 0x01
    sw a2, 0(a1)
    call delay_asm

    li a1, GPIO_OUT_W1TC_REG
    li a2, 0x01
    sw a2, 0(a1)
    call delay_asm

    j main_loop

delay_asm:
    li a3, 0
    li a4, 5000000
loop_delay:
    addi a3, a3, 1
    blt a3, a4, loop_delay
    ret