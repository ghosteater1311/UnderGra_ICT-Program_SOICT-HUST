ORG 0H
        MOV P1, #00H
        SETB P1.0 
        SETB P1.1 
        SETB P1.2 
        SETB P1.3 
        SETB P1.4 
        SETB P1.5 
        SETB P1.6 
        SETB P1.7

 

LOOP:    CLR P1.0
        ACALL DELAY
        SETB P1.0
        ACALL DELAY 

        CLR P1.1
        ACALL DELAY
        SETB P1.1
        ACALL DELAY

        CLR P1.2
        ACALL DELAY
        SETB P1.2
        ACALL DELAY

        CLR P1.3
        ACALL DELAY
        SETB P1.3
        ACALL DELAY

        CLR P1.4
        ACALL DELAY
        SETB P1.4
        ACALL DELAY

        CLR P1.5
        ACALL DELAY
        SETB P1.5
        ACALL DELAY

        CLR P1.6
        ACALL DELAY
        SETB P1.6
        ACALL DELAY

        CLR P1.7
        ACALL DELAY
        SETB P1.7
        ACALL DELAY


        SJMP LOOP     

 


DELAY:    MOV R5, #255
D1:        MOV R4, #255
D2:        DJNZ R4, D2
        DJNZ R5, D1
        RET
END