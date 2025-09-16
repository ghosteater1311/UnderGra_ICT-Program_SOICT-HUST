.global init

.eqv GPIO_ENABLE_REG, 0x60004020 # Enable output GPIO
.eqv GPIO_OUT_REG, 0x60004004 # Register for output

.eqv IO_MUX_GPIO4_REG, 0x60009014 # Setup function GPIO4
.eqv IO_MUX_GPIO5_REG, 0x60009018 # Setup function GPIO5
.eqv IO_MUX_GPIO6_REG, 0x6000901C # Setup function GPIO6
.eqv IO_MUX_GPIO7_REG, 0x60009020 # Setup function GPIO7

.data
    num_Seg: .word 0x40, 0x79, 0x24, 0x30, 0x19, 0x12, 0x02, 0x78, 0x00, 0x10 # Segment values for 0-9

.text
init:
    # Enable GPIO0-GPIO7 for output
    li a1, GPIO_ENABLE_REG
    li a2, 0xFF           # Enable GPIO0-GPIO7 (8 bits)
    sw a2, 0(a1)          # Write to GPIO_ENABLE_REG

    # Configure GPIO4-GPIO7 for GPIO function (not SPI)
    li a2, 0x1000         # GPIO function value

    li a1, IO_MUX_GPIO4_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO5_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO6_REG
    sw a2, 0(a1)

    li a1, IO_MUX_GPIO7_REG
    sw a2, 0(a1)

declare:
    li t1, 0              # Index
    li t2, 10             # Limit (count from 0 to 9)

loop:    
    li a1, GPIO_OUT_REG   # Load the address of GPIO output register
    la t0, num_Seg        # Load base address of segment data (a[0])
    slli t1, t1, 2        # Multiply t1 by 4 to calculate offset
    add t0, t0, t1        # Add offset to base address
    lw a2, 0(t0)          # Load the value for the digit
    sw a2, 0(a1)          # Output to the display

    call delay            

next_num:
    srli t1, t1, 2        # Restore t1 for index counting
    addi t1, t1, 1        # Index = Index + 1
    blt t1, t2, loop      # Check if t1 < t2 -> continue looping 

    j declare             # Else reset counting 

delay:
    li a3, 0              # Counter
    li a4, 5000000        # Wait time (counting times)

loop_delay:
    addi a3, a3, 1
    blt a3, a4, loop_delay
    ret
