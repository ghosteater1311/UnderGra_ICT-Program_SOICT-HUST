.eqv MONITOR_SCREEN 0x10010000 # Start address of the bitmap display
.eqv BLACK 0x00000000           # Color values
.eqv WHITE 0x00FFFFFF

.text
    li a0, MONITOR_SCREEN       # Load the base address into a0
    li t1, 8                    # Number of rows
    li t2, 8                    # Number of columns
    li t3, 4                    # Bytes per pixel (32-bit color)
    li s1, 256                  # Precomputed (t2 * t3) for row size in bytes (8 columns * 4 bytes)
    li s2, 2					# Value to check odd or even

outer_loop:                     # Outer loop for rows
    li t4, BLACK                # Starting color for the row (default: BLACK)
    rem t5, t1, s2              # Determine row parity (odd/even)
    beq t5, zero, set_white          # If even row, start with WHITE
    j start_row

set_white:
    li t4, WHITE                # Set starting color to WHITE for even rows

start_row:
    li t6, 0                    # Column counter

inner_loop:                     # Inner loop for columns
    sw t4, 0(a0)                # Store the current color at the current pixel address
    add a0, a0, t3              # Move to the next pixel
    # Toggle the color manually
    li s3, BLACK                # Load BLACK into a temporary register
    beq t4, s3, toggle_to_white # Compare t4 (current color) with BLACK
    li t4, BLACK                # Set color to BLACK
    j next_pixel
    
toggle_to_white:
    li t4, WHITE                # Set color to WHITE
    
next_pixel:
    addi t6, t6, 1              # Increment column counter
    blt t6, t2, inner_loop      # Repeat for all columns in the row

    sub a0, a0, s1              # Reset address to start of the row
    add a0, a0, s1              # Move to the next row in memory
    addi t1, t1, -1             # Decrement row counter
    bne t1, zero, outer_loop         # Repeat for all rows

end:
    li a7, 10                   # Exit program
    ecall
