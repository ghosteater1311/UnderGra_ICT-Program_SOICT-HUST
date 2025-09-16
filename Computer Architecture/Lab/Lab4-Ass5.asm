.text
    li s0, 10      # x = 10 
    li s1, 3       # n order of 2^n
    sll s5, s0, s1  # s5 = s0 * 2^s1, s0 will shift left s1 times.	
    