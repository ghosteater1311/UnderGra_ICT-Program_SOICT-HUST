# Lab 10 - Assignment 4
.eqv KEY_CODE 0xFFFF0004    # ASCII code from keyboard, 1 byte
.eqv KEY_READY 0xFFFF0000   # =1 if has a new keycode ?
                            # Auto clear after lw
.eqv DISPLAY_CODE 0xFFFF000C    # ASCII code to show, 1 byte
.eqv DISPLAY_READY 0xFFFF0008   # =1 if the display has already to do
                                # Auto clear after sw
.text
    li a0, KEY_CODE
    li a1, KEY_READY

    li s0, DISPLAY_CODE
    li s1, DISPLAY_READY
loop:
    WaitForKey:
        lw t1, 0(a1) # t1 = [a1] = KEY_READY
        beq t1, zero, WaitForKey # if t1 == 0 then Polling
        
    ReadKey:
        lw t0, 0(a0) # t0 = [a0] = KEY_CODE

    WaitForDis:
        lw t2, 0(s1) # t2 = [s1] = DISPLAY_READY
        beq t2, zero, WaitForDis # if t2 == 0 then polling

    Encrypt:
        LowercaseCheck:
            # Check if it's a lowercase character (a-z)
            li t3, 97      # ASCII 'a'
            li t4, 122     # ASCII 'z'
            blt t0, t3, UppercaseCheck  # Skip if t0 < 'a'
            bgt t0, t4, UppercaseCheck  # Skip if t0 > 'z'
            addi t0, t0, -32              # Convert to uppercase
            j ShowKey                   # Jump to show the key

        UppercaseCheck:
            # Check if it's an uppercase character (A-Z)
            li t3, 65      # ASCII 'A'
            li t4, 90      # ASCII 'Z'
            blt t0, t3, DigitCheck   # Skip if t0 < 'A'
            bgt t0, t4, DigitCheck  # Skip if t0 > 'Z'
            addi t0, t0, 32              # Convert to lowercase
            j ShowKey                   # Jump to show the key

        DigitCheck:
            # Check if it's a digit (0-9)
            li t3, 48      # ASCII '0'
            li t4, 57      # ASCII '9'
            blt t0, t3, OtherChar  # Skip if t0 < '0'
            bgt t0, t4, OtherChar  # Skip if t0 > '9'
            j ShowKey               # Digit is displayed as is

        OtherChar:
            # Display '*' for other characters
            li t0, 42      # ASCII '*'

        j ShowKey          # Jump to show the key
   
    ShowKey:
        sw t0, 0(s0) # show key
        j loop
