.text 
li s1, 0xFFFFFFFF
li s2, -1

li t0, 0
add s3, s1, s2
xor t1, s1, s2
blt t1, zero, EXIT
xor t2, s3, s1

j OVERFLOW

OVERFLOW:
li t0, 1

EXIT:
