ORG 000h
LJMP start ; jump to ISR1

ORG 0013h ; vector address for interrupt 1
LJMP CANCEL ; jump to ISR1
; Main program
start:
	MOV DPTR, #MALED
	CLR P2.3
   	CLR P3.6; turn off buzzer
	SETB P3.2; OK
	SETB P3.3; cancel
	SETB P3.4; +;
	SETB P3.5; -
; Set time loop
; state
RESET:
	mov R0,#0

MAIN:
	MOV A, R0
	MOVC A, @A+DPTR
	MOV P1, A
	JNB P3.2, OK	
    JNB P3.4, PLUS
    JNB P3.5, MINUS
	JNB P3.3, CANCEL
	MOV IE, #10000100B ;enable external interrupts IE0, IE1
	SETB IT1 ; negative edge trigger for interrupt 1
	JMP MAIN

END_LOOP:
	JMP END_LOOP

OK:
	CLR P3.6
	MOV A, R0
	JZ RESET
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	LCALL DELAY_50MS
	DEC R0
	MOV A, R0
	MOVC A, @A+DPTR
	MOV P1, A
	CJNE R0, #0,OK	   // JNZ A,OK
	SETB P3.6; 		
	JMP MAIN

MINUS:
	DEC R0
	JNB P3.5,$
	CALL DELAY_50MS
	CJNE R0, #-1,MAIN
	JMP RESET

PLUS:
	INC R0
	JNB P3.4,$
	CALL DELAY_50MS
	CJNE R0, #10,MAIN
	JMP RESET

CANCEL:
	CLR P3.6
	mov R0,#0h
	LJMP MAIN
	RETI

DELAY_50MS:
    MOV TMOD, #01h   
    MOV TH0, #3ch; 
    MOV TL0, #0b0h;
	MOV TH1, #3ch; 
    MOV TL1, #0b0h;
    SETB TR0        
	SETB TR1
	JMP WAIT

WAIT:
	;MOV P1, #0h
    JNB TF0, WAIT    ; Ch? d?n khi b? d?m tràn
	;MOV P1, #0ffh
    CLR TR0         ; T?t Timer
    CLR TF0         ; Xóa c? tràn
    RET       ; Nh?y d?n chuong trình chính

MALED:
	DB 0C0h, 0f9h, 0a4h, 0b0h, 99h, 92h, 82h, 0f8h, 80h, 90h
END
