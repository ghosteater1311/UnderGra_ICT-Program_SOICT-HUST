.global init

    .eqv GPIO_ENABLE_REG, 0x60004020 # Register to configure GPIO pins as input/output
    .eqv GPIO_OUT_W1TS_REG, 0x60004008 # Register to set GPIO pins

.text
init:
    li a1, GPIO_ENABLE_REG # Load register address to setup GPIO0
    li a2, 0x01 # Load the mask 0x01 for register GPIO_ENABLE_REG
    sw a2, 0(a1)
    li a1, GPIO_OUT_W1TS_REG # Load register to output GPIO0
    li a2, 0x01 # Load the mask 0x01 for register GPIO_OUT_W1TS_REG
    sw a2, 0(a1)