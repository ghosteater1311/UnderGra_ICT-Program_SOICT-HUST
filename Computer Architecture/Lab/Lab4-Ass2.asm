.text
li s0, 0x12345678
srli s1, s0, 24
andi s0, s0, 0xFFFFFF00 
ori t2, s0, 0x000000FF
li s0, 0
