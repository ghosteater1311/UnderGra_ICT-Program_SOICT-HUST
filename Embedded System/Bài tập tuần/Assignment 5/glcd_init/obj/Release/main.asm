;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _font
	.globl _main
	.globl _GLCD_WriteChar
	.globl _GLCD_Plot_Coordinate_Axes
	.globl _GLCD_ClearAll
	.globl _GLCD_Init
	.globl _GLCD_Data
	.globl _GLCD_Command
	.globl _delay
	.globl _delay_us
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
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
_GLCD_Plot_Coordinate_Axes_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_temp::
	.ds 1
_GLCD_WriteChar_Page_inc_65536_96:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;	main.c:50: void delay_us(unsigned char t)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	main.c:52: while(t--);
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
;	main.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;	main.c:54: void delay(unsigned int k)					/* Delay of msec with xtal = 11.0592MHz */
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:57: for (i=0;i<k;i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	mov	ar2,r4
	mov	ar3,r5
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	jnc	00109$
;	main.c:58: for (j=0;j<112;j++);
	mov	r2,#0x70
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	main.c:57: for (i=0;i<k;i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	main.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_Command'
;------------------------------------------------------------
;	main.c:60: void GLCD_Command(char Command)				/* GLCD command function */
;	-----------------------------------------
;	 function GLCD_Command
;	-----------------------------------------
_GLCD_Command:
	mov	_P2,dpl
;	main.c:63: RS = 0;									/* Make RS LOW to select command register */
;	assignBit
	clr	_P0_7
;	main.c:64: RW = 0;									/* Make RW LOW to select write operation */
;	assignBit
	clr	_P0_6
;	main.c:65: E = 1;									/* Make HIGH to LOW transition on Enable */
;	assignBit
	setb	_P0_5
;	main.c:66: delay_us(1);
	mov	dpl,#0x01
	lcall	_delay_us
;	main.c:67: E = 0;
;	assignBit
	clr	_P0_5
;	main.c:68: delay_us(1);
	mov	dpl,#0x01
;	main.c:69: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_Data'
;------------------------------------------------------------
;	main.c:70: void GLCD_Data(char Data)					/* GLCD data function */
;	-----------------------------------------
;	 function GLCD_Data
;	-----------------------------------------
_GLCD_Data:
	mov	_P2,dpl
;	main.c:73: RS = 1;									/* Make RS HIGH to select data register */
;	assignBit
	setb	_P0_7
;	main.c:74: RW = 0;									/* Make RW LOW to select write operation */
;	assignBit
	clr	_P0_6
;	main.c:75: E = 1;									/* Make HIGH to LOW transition on Enable */
;	assignBit
	setb	_P0_5
;	main.c:76: delay_us(1);
	mov	dpl,#0x01
	lcall	_delay_us
;	main.c:77: E = 0;
;	assignBit
	clr	_P0_5
;	main.c:78: delay_us(1);
	mov	dpl,#0x01
;	main.c:79: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_Init'
;------------------------------------------------------------
;	main.c:80: void GLCD_Init(void)						/* GLCD initialize function */
;	-----------------------------------------
;	 function GLCD_Init
;	-----------------------------------------
_GLCD_Init:
;	main.c:82: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
;	assignBit
	setb	_P0_4
;	assignBit
	setb	_P0_3
;	main.c:83: RST = 1;								/* Keep reset pin high */
;	assignBit
	setb	_P0_2
;	main.c:84: delay_us(20);
	mov	dpl,#0x14
	lcall	_delay_us
;	main.c:85: GLCD_Command(0x3E);						/* Display OFF */
	mov	dpl,#0x3e
	lcall	_GLCD_Command
;	main.c:86: GLCD_Command(0x40);						/* Set y address (column=0) */
	mov	dpl,#0x40
	lcall	_GLCD_Command
;	main.c:87: GLCD_Command(0xB8);						/* Set x address (page=0) */
	mov	dpl,#0xb8
	lcall	_GLCD_Command
;	main.c:88: GLCD_Command(0xC0);						/* Set z address (start line=0) */
	mov	dpl,#0xc0
	lcall	_GLCD_Command
;	main.c:89: GLCD_Command(0x3F);						/* Display ON */
	mov	dpl,#0x3f
;	main.c:90: }
	ljmp	_GLCD_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_ClearAll'
;------------------------------------------------------------
;	main.c:91: void GLCD_ClearAll(void)						/* GLCD all display clear function */
;	-----------------------------------------
;	 function GLCD_ClearAll
;	-----------------------------------------
_GLCD_ClearAll:
;	main.c:94: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
;	assignBit
	setb	_P0_4
;	assignBit
	setb	_P0_3
;	main.c:95: for(i=0;i<8;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	main.c:97: GLCD_Command((0xB8)+i);				/* Increment page */
	mov	ar5,r6
	mov	a,#0xb8
	add	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_GLCD_Command
	pop	ar6
	pop	ar7
;	main.c:98: for(j=0;j<64;j++)
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
;	main.c:100: GLCD_Data(0);					/* Write zeros to all 64 column */
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GLCD_Data
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:98: for(j=0;j<64;j++)
	inc	r4
	cjne	r4,#0x00,00127$
	inc	r5
00127$:
	clr	c
	mov	a,r4
	subb	a,#0x40
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	main.c:95: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:103: GLCD_Command(0x40);						/* Set Y address (column=0) */
	mov	dpl,#0x40
	lcall	_GLCD_Command
;	main.c:104: GLCD_Command(0xB8);						/* Set X address (page=0) */
	mov	dpl,#0xb8
;	main.c:105: }
	ljmp	_GLCD_Command
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_Plot_Coordinate_Axes'
;------------------------------------------------------------
;	main.c:106: void GLCD_Plot_Coordinate_Axes(void)			/* GLCD all display clear function */
;	-----------------------------------------
;	 function GLCD_Plot_Coordinate_Axes
;	-----------------------------------------
_GLCD_Plot_Coordinate_Axes:
;	main.c:113: CS1 = 1; CS2 = 0;						/* Select right half of display */
;	assignBit
	setb	_P0_4
;	assignBit
	clr	_P0_3
;	main.c:114: for(i=0;i<8;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
;	main.c:116: GLCD_Command((0xB8)+i);				/* Increment page */
	mov	ar5,r6
	mov	a,#0xb8
	add	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_GLCD_Command
	pop	ar6
	pop	ar7
;	main.c:117: for(j=0;j<64;j++)
	clr	c
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	clr	a
	rlc	a
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,#0x03
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	mov	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,c
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
;	main.c:119: if(i>=3 && j==0)
	jb	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,00112$
	mov	a,r3
	orl	a,r4
	jnz	00112$
;	main.c:121: GLCD_Command(0x40+5);
	mov	dpl,#0x45
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_GLCD_Command
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	main.c:122: if(i<7)
	mov	a,r5
	jz	00102$
;	main.c:123: GLCD_Data(0xFF);
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_GLCD_Data
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00112$
00102$:
;	main.c:125: GLCD_Data(0x3F);
	mov	dpl,#0x3f
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_GLCD_Data
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00112$:
;	main.c:117: for(j=0;j<64;j++)
	inc	r3
	cjne	r3,#0x00,00172$
	inc	r4
00172$:
	clr	c
	mov	a,r3
	subb	a,#0x40
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x80
	jc	00111$
;	main.c:114: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x00,00174$
	inc	r7
00174$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00175$
	ljmp	00113$
00175$:
;	main.c:129: GLCD_Command(0xB8+3); 					/* Select Page 3 (left) */
	mov	dpl,#0xbb
	lcall	_GLCD_Command
;	main.c:130: GLCD_Command(0x40+5-2);					/* Select Column 1 */
	mov	dpl,#0x43
	lcall	_GLCD_Command
;	main.c:131: GLCD_Data(0x04);
	mov	dpl,#0x04
	lcall	_GLCD_Data
;	main.c:132: GLCD_Command(0x40+5-1);		   			/* Select Column 2 */
	mov	dpl,#0x44
	lcall	_GLCD_Command
;	main.c:133: GLCD_Data(0x02);
	mov	dpl,#0x02
	lcall	_GLCD_Data
;	main.c:134: GLCD_Command(0x40+5+1);					/* Select Column 1 */
	mov	dpl,#0x46
	lcall	_GLCD_Command
;	main.c:135: GLCD_Data(0x02);
	mov	dpl,#0x02
	lcall	_GLCD_Data
;	main.c:136: GLCD_Command(0x40+5+2);		   			/* Select Column 2 */
	mov	dpl,#0x47
	lcall	_GLCD_Command
;	main.c:137: GLCD_Data(0x04);
	mov	dpl,#0x04
	lcall	_GLCD_Data
;	main.c:140: CS1 = 1; CS2 = 0;						/* Select left half of display */
;	assignBit
	setb	_P0_4
;	assignBit
	clr	_P0_3
;	main.c:141: GLCD_Command((0xB8)+7);
	mov	dpl,#0xbf
	lcall	_GLCD_Command
;	main.c:142: GLCD_Command(0x40+6);					/* Set Y address (column=1) */
	mov	dpl,#0x46
	lcall	_GLCD_Command
;	main.c:143: for(j=6;j<64;j++)
	mov	r6,#0x06
	mov	r7,#0x00
00115$:
;	main.c:145: GLCD_Data(0x20);
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_GLCD_Data
	pop	ar6
	pop	ar7
;	main.c:143: for(j=6;j<64;j++)
	inc	r6
	cjne	r6,#0x00,00176$
	inc	r7
00176$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00115$
;	main.c:147: CS1 = 0; CS2 = 1;						/* Select right half of display */
;	assignBit
	clr	_P0_4
;	assignBit
	setb	_P0_3
;	main.c:148: GLCD_Command((0xB8)+7);
	mov	dpl,#0xbf
	lcall	_GLCD_Command
;	main.c:149: GLCD_Command(0x40);						/* Set Y address (column=1) */
	mov	dpl,#0x40
	lcall	_GLCD_Command
;	main.c:150: for(j=0;j<32;j++)
	mov	r6,#0x00
	mov	r7,#0x00
00117$:
;	main.c:152: GLCD_Data(0x20);
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_GLCD_Data
	pop	ar6
	pop	ar7
;	main.c:150: for(j=0;j<32;j++)
	inc	r6
	cjne	r6,#0x00,00178$
	inc	r7
00178$:
	clr	c
	mov	a,r6
	subb	a,#0x20
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00117$
;	main.c:154: GLCD_Command(0x40+30);					/* Select Column 1 */
	mov	dpl,#0x5e
	lcall	_GLCD_Command
;	main.c:155: GLCD_Data(0x70);
	mov	dpl,#0x70
	lcall	_GLCD_Data
;	main.c:156: GLCD_Command(0x40+29);
	mov	dpl,#0x5d
	lcall	_GLCD_Command
;	main.c:157: GLCD_Data(0xA8);
	mov	dpl,#0xa8
;	main.c:158: }
	ljmp	_GLCD_Data
;------------------------------------------------------------
;Allocation info for local variables in function 'GLCD_WriteChar'
;------------------------------------------------------------
;	main.c:159: void GLCD_WriteChar(unsigned char page_no)	/* GLCD write a char function */
;	-----------------------------------------
;	 function GLCD_WriteChar
;	-----------------------------------------
_GLCD_WriteChar:
	mov	r7,dpl
;	main.c:162: float Page_inc=0.5;
	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	a,#0x3f
	inc	r0
	movx	@r0,a
;	main.c:164: CS1 = 1;
;	assignBit
	setb	_P0_4
;	main.c:165: CS2 = 0;
;	assignBit
	clr	_P0_3
;	main.c:166: GLCD_Command((0xB8)+page_no);
	mov	a,#0xb8
	add	a,r7
	mov	dpl,a
	lcall	_GLCD_Command
;	main.c:167: GLCD_Command(0x40);
	mov	dpl,#0x40
	lcall	_GLCD_Command
;	main.c:168: for(column=0;column<5;column++)
	mov	r2,#0x00
	mov	r7,#0x00
	mov	r4,#0x00
	mov	r3,#0x00
00104$:
;	main.c:170: GLCD_Data(font[1][column]);
	mov	a,r4
	add	a,#(_font + 0x0005)
	mov	dpl,a
	mov	a,r3
	addc	a,#((_font + 0x0005) >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_GLCD_Data
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	main.c:171: if((Y_address+1)%64==0)
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r7
	mov	r6,a
	mov	a,r5
	anl	a,#0x3f
	jz	00118$
	ljmp	00102$
00118$:
;	main.c:173: CS1 = !CS1; CS2 = !CS2;
	push	ar2
	push	ar7
	cpl	_P0_4
	cpl	_P0_3
;	main.c:174: GLCD_Command((Page+Page_inc));
	push	ar4
	push	ar3
	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x3a
	mov	a,#0x43
	lcall	___fsadd
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar4
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	___fs2uchar
	lcall	_GLCD_Command
;	main.c:175: Page_inc=Page_inc+0.5;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3f
	push	acc
	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	___fsadd
	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
	push	acc
	mov	a,dpl
	movx	@r0,a
	mov	a,dph
	inc	r0
	movx	@r0,a
	mov	a,b
	inc	r0
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
;	main.c:168: for(column=0;column<5;column++)
	pop	ar7
	pop	ar2
;	main.c:175: Page_inc=Page_inc+0.5;
00102$:
;	main.c:177: Y_address++;
	inc	r2
	cjne	r2,#0x00,00119$
	inc	r7
00119$:
;	main.c:168: for(column=0;column<5;column++)
	inc	r4
	cjne	r4,#0x00,00120$
	inc	r3
00120$:
	clr	c
	mov	a,r4
	subb	a,#0x05
	mov	a,r3
	subb	a,#0x00
	jnc	00121$
	ljmp	00104$
00121$:
;	main.c:179: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:180: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:182: GLCD_Init();							/* Initialize GLCD */
	lcall	_GLCD_Init
;	main.c:183: GLCD_ClearAll();
	lcall	_GLCD_ClearAll
;	main.c:184: GLCD_Plot_Coordinate_Axes();
	lcall	_GLCD_Plot_Coordinate_Axes
;	main.c:185: GLCD_WriteChar(0);
	mov	dpl,#0x00
	lcall	_GLCD_WriteChar
;	main.c:186: delay(500);
	mov	dptr,#0x01f4
	lcall	_delay
;	main.c:187: while(1);
00102$:
;	main.c:188: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_font:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
