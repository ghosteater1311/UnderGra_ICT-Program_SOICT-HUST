# Request the compiler to allocate variable at the address of 0x10011234
.data 0x10011234
	x: .word
# Request the compiler to allocate variable at the address of 0x10014320
.data 0x10014320
	y: .word
# Request the compiler to allocate instruction at the address of 0x00408000
.text 0x00408000
	addi x1, zero, 2