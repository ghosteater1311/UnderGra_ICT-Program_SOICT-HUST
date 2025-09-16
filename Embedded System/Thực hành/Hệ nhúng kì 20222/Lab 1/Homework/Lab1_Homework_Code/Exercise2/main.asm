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
	.globl _ISR1
	.globl _ISR0
	.globl _initExtInterrupt
	.globl _hieu_ung_3
	.globl _hieu_ung_2
	.globl _hieu_ung_1
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
	.globl _delayms
	.globl _hieu_ung_hien_tai
	.globl _k
	.globl _j
	.globl _i
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
_i::
	.ds 2
_j::
	.ds 2
_k::
	.ds 2
_hieu_ung_hien_tai::
	.ds 2
_delayms::
	.ds 2
_delay_ms_ms_65536_1:
	.ds 4
_hieu_ung_2_countled_65537_13:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
	ljmp	_ISR0
	.ds	5
	reti
	.ds	7
	ljmp	_ISR1
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
;	main.c:5: int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
	mov	_hieu_ung_hien_tai,#0x01
	mov	(_hieu_ung_hien_tai + 1),#0x00
;	main.c:6: int delayms = 100;          // Thời gian trễ giữa các lần sáng led
	mov	_delayms,#0x64
	mov	(_delayms + 1),#0x00
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
;Allocation info for local variables in function 'hieu_ung_1'
;------------------------------------------------------------
;hieu_ung_1                Allocated to registers r7 
;------------------------------------------------------------
;	main.c:39: void hieu_ung_1() {
;	-----------------------------------------
;	 function hieu_ung_1
;	-----------------------------------------
_hieu_ung_1:
;	main.c:40: led = 0xFF;  // Tắt tất cả led
	mov	_P1,#0xff
;	main.c:41: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:43: unsigned char hieu_ung_1 = 0x03;  // Cho 2 led đầu sáng
	mov	r7,#0x03
;	main.c:45: for (j = 0; j < 7; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00107$:
;	main.c:47: if (hieu_ung_hien_tai != 1) return;
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00133$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00133$
	sjmp	00102$
00133$:
	ret
00102$:
;	main.c:49: led = ~hieu_ung_1;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:50: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	main.c:51: hieu_ung_1 = hieu_ung_1 << 1;
	mov	ar6,r7
	mov	a,r6
	add	a,r6
	mov	r7,a
;	main.c:45: for (j = 0; j < 7; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00134$
	inc	(_j + 1)
00134$:
	clr	c
	mov	a,_j
	subb	a,#0x07
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00107$
;	main.c:55: hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
	mov	r7,#0xc0
;	main.c:56: for (j = 0; j < 7; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00109$:
;	main.c:58: if (hieu_ung_hien_tai != 1) return;
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00136$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00136$
	sjmp	00105$
00136$:
	ret
00105$:
;	main.c:60: led = ~hieu_ung_1;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:61: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	main.c:62: hieu_ung_1 = hieu_ung_1 >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:56: for (j = 0; j < 7; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00137$
	inc	(_j + 1)
00137$:
	clr	c
	mov	a,_j
	subb	a,#0x07
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00109$
;	main.c:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hieu_ung_2'
;------------------------------------------------------------
;giu_hieu_ung              Allocated to registers r7 
;countled                  Allocated with name '_hieu_ung_2_countled_65537_13'
;hieu_ung_2                Allocated to registers r4 
;------------------------------------------------------------
;	main.c:67: void hieu_ung_2() {
;	-----------------------------------------
;	 function hieu_ung_2
;	-----------------------------------------
_hieu_ung_2:
;	main.c:68: led = 0xFF;  // Tắt tất cả led
	mov	_P1,#0xff
;	main.c:69: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:72: unsigned char giu_hieu_ung = 0x00;
;	main.c:77: for (j = 0; j < 8; j++) {
	clr	a
	mov	r7,a
	mov	_j,a
	mov	(_j + 1),a
	mov	_hieu_ung_2_countled_65537_13,#0x08
	mov	(_hieu_ung_2_countled_65537_13 + 1),a
00113$:
;	main.c:78: unsigned char hieu_ung_2 = 0x01;  // bật sáng led đầu tiên
	mov	r4,#0x01
;	main.c:80: for (k = 0; k < countled; k++) {
	clr	a
	mov	_k,a
	mov	(_k + 1),a
	mov	a,_hieu_ung_2_countled_65537_13
	add	a,#0xff
	mov	r2,a
	mov	a,(_hieu_ung_2_countled_65537_13 + 1)
	addc	a,#0xff
	mov	r3,a
00111$:
	clr	c
	mov	a,_k
	subb	a,_hieu_ung_2_countled_65537_13
	mov	a,(_k + 1)
	xrl	a,#0x80
	mov	b,(_hieu_ung_2_countled_65537_13 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	main.c:82: if (hieu_ung_hien_tai != 2) return;
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00152$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00152$
	sjmp	00102$
00152$:
	ret
00102$:
;	main.c:85: led = ~(hieu_ung_2 | giu_hieu_ung);
	mov	a,r7
	orl	a,r4
	cpl	a
	mov	_P1,a
;	main.c:86: delay_ms(delayms);
	mov	r0,_delayms
	mov	a,(_delayms + 1)
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_delay_ms
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	main.c:89: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
	mov	a,r2
	cjne	a,_k,00153$
	mov	a,r3
	cjne	a,(_k + 1),00153$
	sjmp	00112$
00153$:
	mov	ar6,r4
	mov	a,r6
	add	a,r6
	mov	r4,a
00112$:
;	main.c:80: for (k = 0; k < countled; k++) {
	inc	_k
	clr	a
	cjne	a,_k,00111$
	inc	(_k + 1)
	sjmp	00111$
00105$:
;	main.c:92: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
	mov	a,r4
	orl	ar7,a
;	main.c:93: countled--;  // Giảm vòng lặp dịch led
	dec	_hieu_ung_2_countled_65537_13
	mov	a,#0xff
	cjne	a,_hieu_ung_2_countled_65537_13,00155$
	dec	(_hieu_ung_2_countled_65537_13 + 1)
00155$:
;	main.c:77: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00156$
	inc	(_j + 1)
00156$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00157$
	ljmp	00113$
00157$:
;	main.c:97: for (j = 0; j < 8; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00115$:
;	main.c:99: if (hieu_ung_hien_tai != 2) return;
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00158$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00158$
	sjmp	00108$
00158$:
	ret
00108$:
;	main.c:101: led = ~giu_hieu_ung;
	mov	a,r7
	cpl	a
	mov	_P1,a
;	main.c:102: delay_ms(delayms);
	mov	r3,_delayms
	mov	a,(_delayms + 1)
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_delay_ms
	pop	ar7
;	main.c:104: giu_hieu_ung = giu_hieu_ung >> 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:97: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00159$
	inc	(_j + 1)
00159$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00115$
;	main.c:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hieu_ung_3'
;------------------------------------------------------------
;hieu_ung_3_1              Allocated to registers r7 
;hieu_ung_3_2              Allocated to registers r6 
;------------------------------------------------------------
;	main.c:109: void hieu_ung_3() {
;	-----------------------------------------
;	 function hieu_ung_3
;	-----------------------------------------
_hieu_ung_3:
;	main.c:110: led = 0xFF;  // Tắt tất cả các led
	mov	_P1,#0xff
;	main.c:111: delay_ms(delayms);
	mov	r4,_delayms
	mov	a,(_delayms + 1)
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_delay_ms
;	main.c:113: unsigned char hieu_ung_3_1 = 0x01;  // Bật led đầu tiên
	mov	r7,#0x01
;	main.c:114: unsigned char hieu_ung_3_2 = 0x80;  // Bật led cuối cùng
	mov	r6,#0x80
;	main.c:115: for (j = 0; j < 8; j++) {
	clr	a
	mov	_j,a
	mov	(_j + 1),a
00106$:
;	main.c:117: if (hieu_ung_hien_tai != 3) return;
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00122$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00122$
	sjmp	00102$
00122$:
	ret
00102$:
;	main.c:118: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
	mov	a,r6
	orl	a,r7
	mov	r5,a
	cpl	a
	mov	_P1,a
;	main.c:121: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
	cjne	r7,#0x08,00123$
	sjmp	00104$
00123$:
	mov	r2,_delayms
	mov	a,(_delayms + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
00104$:
;	main.c:123: hieu_ung_3_1 = hieu_ung_3_1 << 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	main.c:124: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	main.c:115: for (j = 0; j < 8; j++) {
	inc	_j
	clr	a
	cjne	a,_j,00124$
	inc	(_j + 1)
00124$:
	clr	c
	mov	a,_j
	subb	a,#0x08
	mov	a,(_j + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00106$
;	main.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initExtInterrupt'
;------------------------------------------------------------
;	main.c:129: void initExtInterrupt() {
;	-----------------------------------------
;	 function initExtInterrupt
;	-----------------------------------------
_initExtInterrupt:
;	main.c:130: P3_2 = 1;
;	assignBit
	setb	_P3_2
;	main.c:131: P3_3 = 1;
;	assignBit
	setb	_P3_3
;	main.c:132: IT0 = 1;
;	assignBit
	setb	_IT0
;	main.c:133: IT1 = 1;
;	assignBit
	setb	_IT1
;	main.c:134: IE = 0x85;
	mov	_IE,#0x85
;	main.c:135: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR0'
;------------------------------------------------------------
;	main.c:138: void ISR0() __interrupt(0) {
;	-----------------------------------------
;	 function ISR0
;	-----------------------------------------
_ISR0:
	push	acc
	push	psw
;	main.c:139: EA = 0;  // Che toàn bộ các ngắt
;	assignBit
	clr	_EA
;	main.c:141: if (hieu_ung_hien_tai == 1)
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00110$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00110$
	sjmp	00111$
00110$:
	sjmp	00102$
00111$:
;	main.c:142: hieu_ung_hien_tai = 3;
	mov	_hieu_ung_hien_tai,#0x03
	mov	(_hieu_ung_hien_tai + 1),#0x00
	sjmp	00103$
00102$:
;	main.c:144: hieu_ung_hien_tai--;
	dec	_hieu_ung_hien_tai
	mov	a,#0xff
	cjne	a,_hieu_ung_hien_tai,00112$
	dec	(_hieu_ung_hien_tai + 1)
00112$:
00103$:
;	main.c:145: EA = 1;  // Cho phép ngắt
;	assignBit
	setb	_EA
;	main.c:146: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR1'
;------------------------------------------------------------
;	main.c:149: void ISR1() __interrupt(2) {
;	-----------------------------------------
;	 function ISR1
;	-----------------------------------------
_ISR1:
	push	acc
	push	psw
;	main.c:150: EA = 0;  // Che toàn bộ các ngắt
;	assignBit
	clr	_EA
;	main.c:152: if (hieu_ung_hien_tai == 3)
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00110$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00110$
	sjmp	00111$
00110$:
	sjmp	00102$
00111$:
;	main.c:153: hieu_ung_hien_tai = 1;
	mov	_hieu_ung_hien_tai,#0x01
	mov	(_hieu_ung_hien_tai + 1),#0x00
	sjmp	00103$
00102$:
;	main.c:155: hieu_ung_hien_tai++;
	inc	_hieu_ung_hien_tai
	clr	a
	cjne	a,_hieu_ung_hien_tai,00112$
	inc	(_hieu_ung_hien_tai + 1)
00112$:
00103$:
;	main.c:156: EA = 1;  // Cho phép ngắt
;	assignBit
	setb	_EA
;	main.c:157: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:159: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:161: initExtInterrupt();
	lcall	_initExtInterrupt
;	main.c:162: while (1) {
00110$:
;	main.c:163: if (hieu_ung_hien_tai == 1) {
	mov	a,#0x01
	cjne	a,_hieu_ung_hien_tai,00130$
	dec	a
	cjne	a,(_hieu_ung_hien_tai + 1),00130$
	sjmp	00131$
00130$:
	sjmp	00107$
00131$:
;	main.c:164: hieu_ung_1();
	lcall	_hieu_ung_1
	sjmp	00110$
00107$:
;	main.c:165: } else if (hieu_ung_hien_tai == 2) {
	mov	a,#0x02
	cjne	a,_hieu_ung_hien_tai,00132$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00132$
	sjmp	00133$
00132$:
	sjmp	00104$
00133$:
;	main.c:166: hieu_ung_2();
	lcall	_hieu_ung_2
	sjmp	00110$
00104$:
;	main.c:167: } else if (hieu_ung_hien_tai == 3) {
	mov	a,#0x03
	cjne	a,_hieu_ung_hien_tai,00134$
	clr	a
	cjne	a,(_hieu_ung_hien_tai + 1),00134$
	sjmp	00135$
00134$:
	sjmp	00110$
00135$:
;	main.c:168: hieu_ung_3();
	lcall	_hieu_ung_3
;	main.c:171: }
	sjmp	00110$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
