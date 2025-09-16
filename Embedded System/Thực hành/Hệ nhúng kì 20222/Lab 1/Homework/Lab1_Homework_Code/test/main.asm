;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.14 #14012 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _ReadTemperature
	.globl _WriteOneChar
	.globl _ReadOneChar
	.globl _Init_18B20
	.globl _delay_18B20
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
	.globl _temp
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_temp::
	.ds 1
_delay_ms_ms_65536_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;	main.c:6: void delay_ms(long ms) {
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
;	main.c:7: ms *= 1000;  // Tinh so chu ki may (1000 ckm ~ 1ms)
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:8: while (ms > 0) {
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
;	main.c:10: TMOD = TMOD & 0xF0;
	anl	_TMOD,#0xf0
;	main.c:12: TMOD = TMOD | 0x01;
	orl	_TMOD,#0x01
;	main.c:13: ET0 = 0;  // Che ngat Timer 0
;	assignBit
	clr	_ET0
;	main.c:14: if (ms >= 65536) {
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	main.c:15: TH0 = 0;
;	main.c:16: TL0 = 0;
;	main.c:17: ms -= 65536;
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
;	main.c:19: ms = 65536 - ms;
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
;	main.c:20: TH0 = ms / 256;
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
;	main.c:21: TL0 = ms % 256;
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
;	main.c:22: ms = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:24: TF0 = 0;  // Xoa co tran Timer 0
;	assignBit
	clr	_TF0
;	main.c:25: TR0 = 1;  // Khoi dong Timer 0
;	assignBit
	setb	_TR0
;	main.c:26: while (TF0 == 0)
00104$:
	jnb	_TF0,00104$
;	main.c:28: TR0 = 0;  // Tat Timer 0
;	assignBit
	clr	_TR0
;	main.c:30: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_18B20'
;------------------------------------------------------------
;ti                        Allocated to registers 
;------------------------------------------------------------
;	main.c:32: void delay_18B20(unsigned int ti) {  // delay us
;	-----------------------------------------
;	 function delay_18B20
;	-----------------------------------------
_delay_18B20:
	mov	r6,dpl
	mov	r7,dph
;	main.c:33: while (ti--)
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00111$
	dec	r7
00111$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	main.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_18B20'
;------------------------------------------------------------
;	main.c:36: void Init_18B20(void) {  // Khởi tạo cảm biến
;	-----------------------------------------
;	 function Init_18B20
;	-----------------------------------------
_Init_18B20:
;	main.c:37: DQ = 1;
;	assignBit
	setb	_P3_7
;	main.c:38: delay_18B20(8);
	mov	dptr,#0x0008
	lcall	_delay_18B20
;	main.c:39: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:40: delay_18B20(65);
	mov	dptr,#0x0041
	lcall	_delay_18B20
;	main.c:41: DQ = 1;
;	assignBit
	setb	_P3_7
;	main.c:42: delay_18B20(20);
	mov	dptr,#0x0014
;	main.c:43: }
	ljmp	_delay_18B20
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadOneChar'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:44: unsigned char ReadOneChar(void) {  // Đọc 1 byte từ IC
;	-----------------------------------------
;	 function ReadOneChar
;	-----------------------------------------
_ReadOneChar:
;	main.c:46: unsigned char dat = 0;
	mov	r7,#0x00
;	main.c:47: for (i = 8; i > 0; i--) {
	mov	r6,#0x08
00104$:
;	main.c:48: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:49: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:50: DQ = 1;
;	assignBit
	setb	_P3_7
;	main.c:51: if (DQ) dat |= 0x80;
	jnb	_P3_7,00102$
	orl	ar7,#0x80
00102$:
;	main.c:52: delay_18B20(4);
	mov	dptr,#0x0004
	push	ar7
	push	ar6
	lcall	_delay_18B20
	pop	ar6
	pop	ar7
;	main.c:47: for (i = 8; i > 0; i--) {
	djnz	r6,00104$
;	main.c:54: return (dat);
	mov	dpl,r7
;	main.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteOneChar'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:56: void WriteOneChar(unsigned char dat) {  // Ghi một byte vào IC
;	-----------------------------------------
;	 function WriteOneChar
;	-----------------------------------------
_WriteOneChar:
	mov	r7,dpl
;	main.c:58: for (i = 8; i > 0; i--) {
	mov	r6,#0x08
00102$:
;	main.c:59: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:60: DQ = dat & 0x01;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P3_7,c
;	main.c:61: delay_18B20(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay_18B20
	pop	ar6
	pop	ar7
;	main.c:62: DQ = 1;
;	assignBit
	setb	_P3_7
;	main.c:63: dat >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:58: for (i = 8; i > 0; i--) {
	djnz	r6,00102$
;	main.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadTemperature'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;b                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:66: void ReadTemperature(void) {  // Hàm đọc nhiệt độ lưu vào biến temp
;	-----------------------------------------
;	 function ReadTemperature
;	-----------------------------------------
_ReadTemperature:
;	main.c:70: Init_18B20();
	lcall	_Init_18B20
;	main.c:71: WriteOneChar(0xCC);  // Bỏ qua ROM
	mov	dpl,#0xcc
	lcall	_WriteOneChar
;	main.c:72: WriteOneChar(0x44);
	mov	dpl,#0x44
	lcall	_WriteOneChar
;	main.c:73: delay_18B20(10);
	mov	dptr,#0x000a
	lcall	_delay_18B20
;	main.c:74: Init_18B20();
	lcall	_Init_18B20
;	main.c:75: WriteOneChar(0xCC);
	mov	dpl,#0xcc
	lcall	_WriteOneChar
;	main.c:76: WriteOneChar(0xBE);           // Đọc nhiệt độ
	mov	dpl,#0xbe
	lcall	_WriteOneChar
;	main.c:77: delay_18B20(10);
	mov	dptr,#0x000a
	lcall	_delay_18B20
;	main.c:78: a = ReadOneChar();            // Read temp low value
	lcall	_ReadOneChar
	mov	r7,dpl
;	main.c:79: b = ReadOneChar();            // Read temp high value
	push	ar7
	lcall	_ReadOneChar
	mov	r6,dpl
	pop	ar7
;	main.c:80: temp = ((b * 256 + a) >> 4);  // Giá trị nhiệt độ lưu vào biến temp
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00103$
	orl	a,#0xfffffff0
00103$:
	mov	_temp,r6
;	main.c:82: }  // End code DS18B20
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:84: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:85: Beep = 0;               // Turn off the buzzer
;	assignBit
	clr	_P3_6
;	main.c:86: while (1) {
00102$:
;	main.c:87: ReadTemperature();  // Read the DS18B20 ...
	lcall	_ReadTemperature
;	main.c:88: P1 = ~temp;     // and the display the temp value (in binary form) on 8
	mov	a,_temp
	cpl	a
	mov	_P1,a
;	main.c:90: delay_ms(500);  // for every 0.5s.
	mov	dptr,#0x01f4
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:92: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
