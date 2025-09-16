.global init

.eqv GPIO_ENABLE_REG, 0x60004020 # Enable outpu GPIO
.eqv GPIO_OUT_REG, 0x60004004 # setup output

.eqv IO_MUX_GPIO4_REG, 0x60009014 # Setup function GPIO4
.eqv IO_MUX_GPIO5_REG, 0x60009018 # Setup function GPIO5
.eqv IO_MUX_GPIO6_REG, 0x6000901C # Setup function GPIO6
.eqv IO_MUX_GPIO7_REG, 0x60009020 # Setup function GPIO7

.text
init:
    li a1, GPIO_ENABLE_REG
    li a2, 0xFF # output from GPIO0 to GPIO7 (8 bits)
    sw a2, 0(a1) # setupt bits in GPIO_ENABLE_REG
    # setup function in GPIO4, GPIO5, GPIO6, GPIO7
    # in default, they are used for SPI function
    # we need to change to GPIO function

    li a2, 0x1000

    li a1, IO_MUX_GPIO4_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO5_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO6_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO7_REG
    sw a2, 0(a1)
    
    # a1 contains the address of state register GPIO
    li a1, GPIO_OUT_REG
    li a2, 0x10
    sw a2, 0(a1) # Output to GPIO