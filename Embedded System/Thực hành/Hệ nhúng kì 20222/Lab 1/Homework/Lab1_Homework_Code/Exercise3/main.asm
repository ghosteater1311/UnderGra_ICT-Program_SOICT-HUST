;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #14012 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _output_7seg_PARM_2
	.globl _x50ms
	.globl _main
	.globl _display_number
	.globl _output_7seg
	.globl _external1_interrupt
	.globl _initilize_int1
	.globl _external0_interrupt
	.globl _initilize_int0
	.globl _timer1_interrupt
	.globl _stop_timer1
	.globl _initilize_timer1
	.globl _turnOnBuzzer_1s
	.globl _delay_ms
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _display_number_PARM_2
	.globl _countDownLoop
	.globl _seconds
	.globl _minutes
	.globl _startCountDown
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_startCountDown::
	.ds 2
_minutes::
	.ds 2
_seconds::
	.ds 2
_delay_ms_ms_65536_1:
	.ds 4
_countDownLoop::
	.ds 2
_display_number_PARM_2:
	.ds 2
_display_number_iNum_65536_23:
	.ds 2
_display_number_pos_131072_25:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_output_7seg_PARM_2:
	.ds 1
_output_7seg_mask_65536_21:
	.ds 10
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_external0_interrupt
	.ds	5
	reti
	.ds	7
	ljmp	_external1_interrupt
	.ds	5
	ljmp	_timer1_interrupt
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:5: int startCountDown = 0;  // 0: Chưa đếm ngược - 1: Bắt đầu đếm ngược
	clr	a
	mov	_startCountDown,a
	mov	(_startCountDown + 1),a
;	main.c:6: int minutes = 0, seconds = 0;
	mov	_minutes,a
	mov	(_minutes + 1),a
;	main.c:6: 
	mov	_seconds,a
	mov	(_seconds + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated with name '_delay_ms_ms_65536_1'
;------------------------------------------------------------
;	main.c:9: void delay_ms(long ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	main.c:10: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:11: while (ms > 0) {
00107$:
	clr	c
	clr	a
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00137$
	ret
00137$:
;	main.c:13: TMOD = TMOD & 0xF0;
	anl	_TMOD,#0xf0
;	main.c:15: TMOD = TMOD | 0x01;
	orl	_TMOD,#0x01
;	main.c:16: ET0 = 0;  // Che ngắt Timer 0
;	assignBit
	clr	_ET0
;	main.c:18: if (ms >= 65536) {
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	main.c:20: TH0 = 0;
;	main.c:21: TL0 = 0;
;	main.c:22: ms -= 65536;
	clr	a
	mov	_TH0,a
	mov	_TL0,a
	mov	a,r6
	add	a,#0xff
	mov	r6,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
	sjmp	00103$
00102$:
;	main.c:25: ms = 65536 - ms;
	clr	a
	clr	c
	subb	a,r4
	mov	_delay_ms_ms_65536_1,a
	clr	a
	subb	a,r5
	mov	(_delay_ms_ms_65536_1 + 1),a
	mov	a,#0x01
	subb	a,r6
	mov	(_delay_ms_ms_65536_1 + 2),a
	clr	a
	subb	a,r7
	mov	(_delay_ms_ms_65536_1 + 3),a
;	main.c:26: TH0 = ms / 256;
	clr	a
	mov	__divslong_PARM_2,a
	mov	(__divslong_PARM_2 + 1),#0x01
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_delay_ms_ms_65536_1
	mov	dph,(_delay_ms_ms_65536_1 + 1)
	mov	b,(_delay_ms_ms_65536_1 + 2)
	mov	a,(_delay_ms_ms_65536_1 + 3)
	lcall	__divslong
	mov	r0,dpl
	mov	_TH0,r0
;	main.c:27: TL0 = ms % 256;
	clr	a
	mov	__modslong_PARM_2,a
	mov	(__modslong_PARM_2 + 1),#0x01
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,_delay_ms_ms_65536_1
	mov	dph,(_delay_ms_ms_65536_1 + 1)
	mov	b,(_delay_ms_ms_65536_1 + 2)
	mov	a,(_delay_ms_ms_65536_1 + 3)
	lcall	__modslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	_TL0,r0
;	main.c:28: ms = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:30: TF0 = 0;  // Xóa cờ tràn Timer 0
;	assignBit
	clr	_TF0
;	main.c:31: TR0 = 1;  // Khởi động Timer 0
;	assignBit
	setb	_TR0
;	main.c:32: while (TF0 == 0)
00104$:
	jnb	_TF0,00104$
;	main.c:34: TR0 = 0;  // Dừng Timer 0
;	assignBit
	clr	_TR0
;	main.c:36: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'turnOnBuzzer_1s'
;------------------------------------------------------------
;	main.c:39: void turnOnBuzzer_1s() {
;	-----------------------------------------
;	 function turnOnBuzzer_1s
;	-----------------------------------------
_turnOnBuzzer_1s:
;	main.c:40: P3_6 = 1;
;	assignBit
	setb	_P3_6
;	main.c:41: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:42: P3_6 = 0;
;	assignBit
	clr	_P3_6
;	main.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initilize_timer1'
;------------------------------------------------------------
;	main.c:47: void initilize_timer1() {
;	-----------------------------------------
;	 function initilize_timer1
;	-----------------------------------------
_initilize_timer1:
;	main.c:48: countDownLoop = x50ms;  // Khởi tạo số vòng lặp là 20
	mov	dptr,#_x50ms
	clr	a
	movc	a,@a+dptr
	mov	_countDownLoop,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	(_countDownLoop + 1),a
;	main.c:49: TMOD = TMOD & 0x0F;     // Xóa các thiết lập cũ của Timer 1
	anl	_TMOD,#0x0f
;	main.c:50: TMOD = TMOD | 0x10;     // Thiết lập Mode 1, 16-bit Timer/Counter
	orl	_TMOD,#0x10
;	main.c:51: TH1 = 0x3C;             // Khởi tạo T1
	mov	_TH1,#0x3c
;	main.c:52: TL1 = 0xB0;             // tương đương 15536
	mov	_TL1,#0xb0
;	main.c:53: TF1 = 0;                // Xóa cờ tràn Timer 1
;	assignBit
	clr	_TF1
;	main.c:54: TR1 = 1;                // Khoi dong timer 1
;	assignBit
	setb	_TR1
;	main.c:55: ET1 = 1;                // Cho phép Timer 1 ngắt
;	assignBit
	setb	_ET1
;	main.c:56: EA = 1;                 // Cho phép ngắt tổng thể
;	assignBit
	setb	_EA
;	main.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_timer1'
;------------------------------------------------------------
;	main.c:60: void stop_timer1() { TR1 = 0; }
;	-----------------------------------------
;	 function stop_timer1
;	-----------------------------------------
_stop_timer1:
;	assignBit
	clr	_TR1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1_interrupt'
;------------------------------------------------------------
;	main.c:63: void timer1_interrupt() __interrupt(3) {
;	-----------------------------------------
;	 function timer1_interrupt
;	-----------------------------------------
_timer1_interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:64: TF1 = 0;     // Xóa cờ tràn
;	assignBit
	clr	_TF1
;	main.c:65: TR1 = 0;     // Dừng Timer 1
;	assignBit
	clr	_TR1
;	main.c:66: TH1 = 0x3C;  // Khởi tạo T1
	mov	_TH1,#0x3c
;	main.c:67: TL1 = 0xB0;  // tương đương 15536
	mov	_TL1,#0xb0
;	main.c:71: if (countDownLoop == 0) {
	mov	a,_countDownLoop
	orl	a,(_countDownLoop + 1)
	jnz	00110$
;	main.c:73: EA = 0;
;	assignBit
	clr	_EA
;	main.c:74: if (seconds == 0) {
	mov	a,_seconds
	orl	a,(_seconds + 1)
	jnz	00107$
;	main.c:75: if (minutes == 0) {
	mov	a,_minutes
	orl	a,(_minutes + 1)
	jnz	00104$
;	main.c:77: if (startCountDown) startCountDown = 0;
	mov	a,_startCountDown
	orl	a,(_startCountDown + 1)
	jz	00102$
	clr	a
	mov	_startCountDown,a
	mov	(_startCountDown + 1),a
00102$:
;	main.c:79: turnOnBuzzer_1s();
	lcall	_turnOnBuzzer_1s
;	main.c:80: delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:81: turnOnBuzzer_1s();
	lcall	_turnOnBuzzer_1s
;	main.c:82: delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:83: turnOnBuzzer_1s();
	lcall	_turnOnBuzzer_1s
;	main.c:84: delay_ms(300);
	mov	dptr,#0x012c
	clr	a
	mov	b,a
	lcall	_delay_ms
	sjmp	00108$
00104$:
;	main.c:87: seconds = 59;
	mov	_seconds,#0x3b
	mov	(_seconds + 1),#0x00
;	main.c:88: minutes--;
	dec	_minutes
	mov	a,#0xff
	cjne	a,_minutes,00134$
	dec	(_minutes + 1)
00134$:
	sjmp	00108$
00107$:
;	main.c:92: seconds--;
	dec	_seconds
	mov	a,#0xff
	cjne	a,_seconds,00135$
	dec	(_seconds + 1)
00135$:
00108$:
;	main.c:95: countDownLoop = x50ms;
	mov	dptr,#_x50ms
	clr	a
	movc	a,@a+dptr
	mov	_countDownLoop,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	(_countDownLoop + 1),a
;	main.c:96: EA = 1;
;	assignBit
	setb	_EA
	sjmp	00111$
00110$:
;	main.c:99: countDownLoop--;
	dec	_countDownLoop
	mov	a,#0xff
	cjne	a,_countDownLoop,00136$
	dec	(_countDownLoop + 1)
00136$:
00111$:
;	main.c:101: TR1 = 1;  // Khời động lại Timer 1
;	assignBit
	setb	_TR1
;	main.c:102: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'initilize_int0'
;------------------------------------------------------------
;	main.c:105: void initilize_int0() {
;	-----------------------------------------
;	 function initilize_int0
;	-----------------------------------------
_initilize_int0:
;	main.c:106: P3_2 = 1;  // P3_2 là input
;	assignBit
	setb	_P3_2
;	main.c:107: EX0 = 1;   // Cho phép ngắt ngoài 0
;	assignBit
	setb	_EX0
;	main.c:108: IT0 = 1;   // Ngắt theo sườn xuống
;	assignBit
	setb	_IT0
;	main.c:109: EA = 1;    // Cho phép ngắt toàn cục
;	assignBit
	setb	_EA
;	main.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external0_interrupt'
;------------------------------------------------------------
;	main.c:113: void external0_interrupt() __interrupt(0) {
;	-----------------------------------------
;	 function external0_interrupt
;	-----------------------------------------
_external0_interrupt:
	push	acc
	push	psw
;	main.c:114: EA = 0;  // Che toàn bộ các ngắt
;	assignBit
	clr	_EA
;	main.c:116: if (minutes < 60)
	clr	c
	mov	a,_minutes
	subb	a,#0x3c
	mov	a,(_minutes + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	main.c:117: minutes++;
	inc	_minutes
	clr	a
	cjne	a,_minutes,00103$
	inc	(_minutes + 1)
	sjmp	00103$
00102$:
;	main.c:119: minutes = 0;
	clr	a
	mov	_minutes,a
	mov	(_minutes + 1),a
00103$:
;	main.c:120: EA = 1;  // Cho phép ngắt toàn cục
;	assignBit
	setb	_EA
;	main.c:121: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'initilize_int1'
;------------------------------------------------------------
;	main.c:124: void initilize_int1() {
;	-----------------------------------------
;	 function initilize_int1
;	-----------------------------------------
_initilize_int1:
;	main.c:125: P3_3 = 1;  // P3_3 là input
;	assignBit
	setb	_P3_3
;	main.c:126: EX1 = 1;   // Cho phép ngắt ngoài 1
;	assignBit
	setb	_EX1
;	main.c:127: IT1 = 1;   // Ngắt theo sườn xuống
;	assignBit
	setb	_IT1
;	main.c:128: EA = 1;    // Cho phép ngắt toàn cục
;	assignBit
	setb	_EA
;	main.c:129: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external1_interrupt'
;------------------------------------------------------------
;	main.c:132: void external1_interrupt() __interrupt(2) {
;	-----------------------------------------
;	 function external1_interrupt
;	-----------------------------------------
_external1_interrupt:
	push	acc
	push	psw
;	main.c:133: EA = 0;  // Che toàn bộ các ngắt
;	assignBit
	clr	_EA
;	main.c:135: startCountDown = 1 - startCountDown;
	mov	a,#0x01
	clr	c
	subb	a,_startCountDown
	mov	_startCountDown,a
	clr	a
	subb	a,(_startCountDown + 1)
	mov	(_startCountDown + 1),a
;	main.c:136: EA = 1;  // Cho phép ngắt tổng thể
;	assignBit
	setb	_EA
;	main.c:137: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'output_7seg'
;------------------------------------------------------------
;dpDisplay                 Allocated with name '_output_7seg_PARM_2'
;value                     Allocated to registers r7 
;mask                      Allocated with name '_output_7seg_mask_65536_21'
;------------------------------------------------------------
;	main.c:142: void output_7seg(unsigned char value, unsigned char dpDisplay) {
;	-----------------------------------------
;	 function output_7seg
;	-----------------------------------------
_output_7seg:
	mov	r7,dpl
;	main.c:144: unsigned char const mask[10] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99,
	mov	_output_7seg_mask_65536_21,#0xc0
	mov	(_output_7seg_mask_65536_21 + 0x0001),#0xf9
	mov	(_output_7seg_mask_65536_21 + 0x0002),#0xa4
	mov	(_output_7seg_mask_65536_21 + 0x0003),#0xb0
	mov	(_output_7seg_mask_65536_21 + 0x0004),#0x99
	mov	(_output_7seg_mask_65536_21 + 0x0005),#0x92
	mov	(_output_7seg_mask_65536_21 + 0x0006),#0x82
	mov	(_output_7seg_mask_65536_21 + 0x0007),#0xf8
	mov	(_output_7seg_mask_65536_21 + 0x0008),#0x80
	mov	(_output_7seg_mask_65536_21 + 0x0009),#0x90
;	main.c:146: if (value < 10) {
	cjne	r7,#0x0a,00116$
00116$:
	jnc	00106$
;	main.c:147: if (dpDisplay > 0)
	mov	a,_output_7seg_PARM_2
	jz	00102$
;	main.c:148: P1 = (mask[value] & 0x7F);
	mov	a,r7
	add	a,#_output_7seg_mask_65536_21
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x7f
	anl	a,r6
	mov	_P1,a
	ret
00102$:
;	main.c:150: P1 = mask[value];
	mov	a,r7
	add	a,#_output_7seg_mask_65536_21
	mov	r1,a
	mov	_P1,@r1
00106$:
;	main.c:152: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_number'
;------------------------------------------------------------
;loop                      Allocated with name '_display_number_PARM_2'
;iNum                      Allocated with name '_display_number_iNum_65536_23'
;num                       Allocated to registers r2 r3 
;i                         Allocated to registers r0 r7 
;temp                      Allocated to registers r1 r6 
;pos                       Allocated with name '_display_number_pos_131072_25'
;------------------------------------------------------------
;	main.c:157: void display_number(int iNum, int loop) {
;	-----------------------------------------
;	 function display_number
;	-----------------------------------------
_display_number:
	mov	_display_number_iNum_65536_23,dpl
	mov	(_display_number_iNum_65536_23 + 1),dph
;	main.c:158: while (loop > 0) {
	mov	r4,_display_number_PARM_2
	mov	r5,(_display_number_PARM_2 + 1)
00105$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00134$
	ret
00134$:
;	main.c:159: int num = iNum;
	mov	r2,_display_number_iNum_65536_23
	mov	r3,(_display_number_iNum_65536_23 + 1)
;	main.c:161: unsigned char pos = 0x08;  // Cho digit 4 sáng (hàng đơn vị)
	mov	_display_number_pos_131072_25,#0x08
;	main.c:163: for (i = 0; i < 4; i++) {
	mov	r0,#0x00
	mov	r7,#0x00
00108$:
;	main.c:164: temp = num % 10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	__modsint
	mov	r1,dpl
	mov	r6,dph
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	main.c:165: num = num / 10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:166: P2 = pos ^ 0xFF;
	mov	a,#0xff
	xrl	a,_display_number_pos_131072_25
	mov	_P2,a
;	main.c:167: if (i == 2)
	cjne	r0,#0x02,00102$
	cjne	r7,#0x00,00102$
;	main.c:169: output_7seg(temp, 1);
	mov	dpl,r1
	mov	_output_7seg_PARM_2,#0x01
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_output_7seg
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	sjmp	00103$
00102$:
;	main.c:171: output_7seg(temp, 0);
	mov	dpl,r1
	mov	_output_7seg_PARM_2,#0x00
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_output_7seg
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
00103$:
;	main.c:172: delay_ms(10);
	mov	dptr,#(0x0a&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_delay_ms
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
;	main.c:173: pos = pos >> 1;  // Dịch bit để chuyển chữ số hiển thị
	mov	a,_display_number_pos_131072_25
	clr	c
	rrc	a
	mov	_display_number_pos_131072_25,a
;	main.c:163: for (i = 0; i < 4; i++) {
	inc	r0
	cjne	r0,#0x00,00137$
	inc	r7
00137$:
	clr	c
	mov	a,r0
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00138$
	ljmp	00108$
00138$:
;	main.c:175: loop--;
	dec	r4
	cjne	r4,#0xff,00139$
	dec	r5
00139$:
;	main.c:177: }
	ljmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:179: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:180: P3_6 = 0;  // Tắt còi
;	assignBit
	clr	_P3_6
;	main.c:182: initilize_int0();
	lcall	_initilize_int0
;	main.c:183: initilize_int1();
	lcall	_initilize_int1
;	main.c:184: while (1) {
00109$:
;	main.c:185: if (startCountDown == 1) {
	mov	a,#0x01
	cjne	a,_startCountDown,00129$
	dec	a
	cjne	a,(_startCountDown + 1),00129$
	sjmp	00130$
00129$:
	sjmp	00106$
00130$:
;	main.c:188: if (TR1 == 0) initilize_timer1();
	jb	_TR1,00107$
	lcall	_initilize_timer1
	sjmp	00107$
00106$:
;	main.c:191: if (TR1 == 1) stop_timer1();
	jnb	_TR1,00107$
	lcall	_stop_timer1
00107$:
;	main.c:194: display_number(minutes * 100 + seconds, 1);
	mov	__mulint_PARM_2,_minutes
	mov	(__mulint_PARM_2 + 1),(_minutes + 1)
	mov	dptr,#0x0064
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	add	a,_seconds
	mov	dpl,a
	mov	a,(_seconds + 1)
	addc	a,b
	mov	dph,a
	mov	_display_number_PARM_2,#0x01
	mov	(_display_number_PARM_2 + 1),#0x00
	lcall	_display_number
;	main.c:196: }
	sjmp	00109$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_x50ms:
	.byte #0x05, #0x00	;  5
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
