#Lab 2 Assigment 2
#In High Level Language
#int a = 0x20232024;
#In Assembly Language
.text 
	lui s0, 0x20232 #s0 = 0x20232000; U-Type
	addi s0, s0, 0x024 #s0 = s0 + 0x024
