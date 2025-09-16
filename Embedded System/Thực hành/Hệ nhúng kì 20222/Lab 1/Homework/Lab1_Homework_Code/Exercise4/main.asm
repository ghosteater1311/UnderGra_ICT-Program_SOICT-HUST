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
	.globl _convert
	.globl _celsius_to_fahrenheit
	.globl _ReadTemperature
	.globl _WriteByteToScratchpad
	.globl _ReadByteFromScratchpad
	.globl _Init_DS18B20
	.globl _delay_us_DS18B20
	.globl _display_char_lcd1602
	.globl _display_str_lcd1602
	.globl _lcd_init
	.globl _lcd_bytea
	.globl _lcd_cmd
	.globl _Wait_For_LCD
	.globl _external0_interrupt
	.globl _initilize_int0
	.globl _delay_ms
	.globl _sprintf
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
	.globl _en
	.globl _rw
	.globl _rs
	.globl _convert_PARM_2
	.globl _display_char_lcd1602_PARM_3
	.globl _display_char_lcd1602_PARM_2
	.globl _display_str_lcd1602_PARM_3
	.globl _display_str_lcd1602_PARM_2
	.globl _isFahrenheit
	.globl _temp
	.globl _currentTempIndex
	.globl _tempArr
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
_tempArr::
	.ds 22
_currentTempIndex::
	.ds 2
_temp::
	.ds 1
_isFahrenheit::
	.ds 2
_delay_ms_ms_65536_70:
	.ds 4
_display_str_lcd1602_PARM_2:
	.ds 2
_display_str_lcd1602_PARM_3:
	.ds 2
_display_str_lcd1602_a_65536_83:
	.ds 3
_display_char_lcd1602_PARM_2:
	.ds 2
_display_char_lcd1602_PARM_3:
	.ds 2
_convert_PARM_2:
	.ds 3
_main_str_131073_114:
	.ds 10
_main_min_131073_114:
	.ds 2
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
_rs	=	0x0087
_rw	=	0x0086
_en	=	0x0085
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
;	main.c:11: int tempArr[11] = {0};
	clr	a
	mov	(_tempArr + 0),a
	mov	(_tempArr + 1),a
;	main.c:12: int currentTempIndex = 1;  // Chỉ ra index của nhiệt độ hiện tại
	mov	_currentTempIndex,#0x01
	mov	(_currentTempIndex + 1),a
;	main.c:14: int isFahrenheit = 1;  // 0: hiển thị độ C - 1 : hiển thị độ F
	mov	_isFahrenheit,#0x01
	mov	(_isFahrenheit + 1),a
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
;ms                        Allocated with name '_delay_ms_ms_65536_70'
;------------------------------------------------------------
;	main.c:17: void delay_ms(long ms) {
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
;	main.c:18: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:19: while (ms > 0) {
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
;	main.c:21: TMOD = TMOD & 0xF0;
	anl	_TMOD,#0xf0
;	main.c:23: TMOD = TMOD | 0x01;
	orl	_TMOD,#0x01
;	main.c:24: ET0 = 0;  // Che ngắt Timer 0
;	assignBit
	clr	_ET0
;	main.c:26: if (ms >= 65536) {
	clr	c
	mov	a,r6
	subb	a,#0x01
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
;	main.c:28: TH0 = 0;
;	main.c:29: TL0 = 0;
;	main.c:30: ms -= 65536;
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
;	main.c:33: ms = 65536 - ms;
	clr	a
	clr	c
	subb	a,r4
	mov	_delay_ms_ms_65536_70,a
	clr	a
	subb	a,r5
	mov	(_delay_ms_ms_65536_70 + 1),a
	mov	a,#0x01
	subb	a,r6
	mov	(_delay_ms_ms_65536_70 + 2),a
	clr	a
	subb	a,r7
	mov	(_delay_ms_ms_65536_70 + 3),a
;	main.c:34: TH0 = ms / 256;
	clr	a
	mov	__divslong_PARM_2,a
	mov	(__divslong_PARM_2 + 1),#0x01
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_delay_ms_ms_65536_70
	mov	dph,(_delay_ms_ms_65536_70 + 1)
	mov	b,(_delay_ms_ms_65536_70 + 2)
	mov	a,(_delay_ms_ms_65536_70 + 3)
	lcall	__divslong
	mov	r0,dpl
	mov	_TH0,r0
;	main.c:35: TL0 = ms % 256;
	clr	a
	mov	__modslong_PARM_2,a
	mov	(__modslong_PARM_2 + 1),#0x01
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,_delay_ms_ms_65536_70
	mov	dph,(_delay_ms_ms_65536_70 + 1)
	mov	b,(_delay_ms_ms_65536_70 + 2)
	mov	a,(_delay_ms_ms_65536_70 + 3)
	lcall	__modslong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	_TL0,r0
;	main.c:36: ms = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:38: TF0 = 0;  // Xóa cờ tràn Timer 0
;	assignBit
	clr	_TF0
;	main.c:39: TR0 = 1;  // Khởi động Timer 0
;	assignBit
	setb	_TR0
;	main.c:40: while (TF0 == 0)
00104$:
	jnb	_TF0,00104$
;	main.c:42: TR0 = 0;  // Dừng Timer 0
;	assignBit
	clr	_TR0
;	main.c:44: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'initilize_int0'
;------------------------------------------------------------
;	main.c:49: void initilize_int0() {
;	-----------------------------------------
;	 function initilize_int0
;	-----------------------------------------
_initilize_int0:
;	main.c:50: P3_2 = 1;  // P3_2 là input
;	assignBit
	setb	_P3_2
;	main.c:51: EX0 = 1;   // Cho phép ngắt ngoài 0
;	assignBit
	setb	_EX0
;	main.c:52: IT0 = 1;   // Ngắt theo sườn xuống
;	assignBit
	setb	_IT0
;	main.c:53: EA = 1;    // Cho phép ngắt toàn cục
;	assignBit
	setb	_EA
;	main.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'external0_interrupt'
;------------------------------------------------------------
;	main.c:57: void external0_interrupt() __interrupt(0) {
;	-----------------------------------------
;	 function external0_interrupt
;	-----------------------------------------
_external0_interrupt:
	push	acc
	push	psw
;	main.c:58: EA = 0;  // Che toàn bộ các ngắt
;	assignBit
	clr	_EA
;	main.c:60: isFahrenheit = 1 - isFahrenheit;
	mov	a,#0x01
	clr	c
	subb	a,_isFahrenheit
	mov	_isFahrenheit,a
	clr	a
	subb	a,(_isFahrenheit + 1)
	mov	(_isFahrenheit + 1),a
;	main.c:61: EA = 1;  // Cho phép ngắt toàn cục
;	assignBit
	setb	_EA
;	main.c:62: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Wait_For_LCD'
;------------------------------------------------------------
;	main.c:71: void Wait_For_LCD() { delay_ms(1); }
;	-----------------------------------------
;	 function Wait_For_LCD
;	-----------------------------------------
_Wait_For_LCD:
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_cmd'
;------------------------------------------------------------
;command                   Allocated to registers 
;------------------------------------------------------------
;	main.c:74: void lcd_cmd(unsigned char command) {
;	-----------------------------------------
;	 function lcd_cmd
;	-----------------------------------------
_lcd_cmd:
	mov	_P2,dpl
;	main.c:76: rs = 0;  // Chế độ gửi lệnh
;	assignBit
	clr	_rs
;	main.c:77: rw = 0;  // Chế độ ghi
;	assignBit
	clr	_rw
;	main.c:79: en = 1;
;	assignBit
	setb	_en
;	main.c:80: delay_ms(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:81: en = 0;
;	assignBit
	clr	_en
;	main.c:83: Wait_For_LCD();
	lcall	_Wait_For_LCD
;	main.c:84: en = 1;
;	assignBit
	setb	_en
;	main.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_bytea'
;------------------------------------------------------------
;disp_bytea                Allocated to registers 
;------------------------------------------------------------
;	main.c:88: void lcd_bytea(unsigned char disp_bytea) {
;	-----------------------------------------
;	 function lcd_bytea
;	-----------------------------------------
_lcd_bytea:
	mov	_P2,dpl
;	main.c:90: rs = 1;  // Chế độ gửi dữ liệu
;	assignBit
	setb	_rs
;	main.c:91: rw = 0;  // Che do ghi
;	assignBit
	clr	_rw
;	main.c:93: en = 1;
;	assignBit
	setb	_en
;	main.c:94: delay_ms(1);
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:95: en = 0;
;	assignBit
	clr	_en
;	main.c:97: Wait_For_LCD();
	lcall	_Wait_For_LCD
;	main.c:98: en = 1;
;	assignBit
	setb	_en
;	main.c:99: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	main.c:102: void lcd_init() {
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	main.c:103: P0 = 0xFF;
	mov	_P0,#0xff
;	main.c:104: lcd_cmd(0x38);  // Sử dụng 2 dòng và ma trận 5x7 cho mỗi ký tự trên LCD
	mov	dpl,#0x38
	lcall	_lcd_cmd
;	main.c:105: lcd_cmd(0x0C);  // Tắt con trỏ
	mov	dpl,#0x0c
	lcall	_lcd_cmd
;	main.c:106: lcd_cmd(0x01);  // Xóa màn hình LCD
	mov	dpl,#0x01
	lcall	_lcd_cmd
;	main.c:107: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
	mov	dpl,#0x80
;	main.c:108: }
	ljmp	_lcd_cmd
;------------------------------------------------------------
;Allocation info for local variables in function 'display_str_lcd1602'
;------------------------------------------------------------
;line                      Allocated with name '_display_str_lcd1602_PARM_2'
;conti                     Allocated with name '_display_str_lcd1602_PARM_3'
;a                         Allocated with name '_display_str_lcd1602_a_65536_83'
;i                         Allocated to registers r1 r2 
;------------------------------------------------------------
;	main.c:115: void display_str_lcd1602(unsigned char a[], int line, int conti) {
;	-----------------------------------------
;	 function display_str_lcd1602
;	-----------------------------------------
_display_str_lcd1602:
	mov	_display_str_lcd1602_a_65536_83,dpl
	mov	(_display_str_lcd1602_a_65536_83 + 1),dph
	mov	(_display_str_lcd1602_a_65536_83 + 2),b
;	main.c:118: while (a[i] != '\0') {
	mov	a,#0x01
	cjne	a,_display_str_lcd1602_PARM_2,00140$
	dec	a
	cjne	a,(_display_str_lcd1602_PARM_2 + 1),00140$
	mov	a,#0x01
	sjmp	00141$
00140$:
	clr	a
00141$:
	mov	r4,a
	mov	a,#0x02
	cjne	a,_display_str_lcd1602_PARM_2,00142$
	clr	a
	cjne	a,(_display_str_lcd1602_PARM_2 + 1),00142$
	mov	a,#0x01
	sjmp	00143$
00142$:
	clr	a
00143$:
	mov	r3,a
	mov	r1,#0x00
	mov	r2,#0x00
00110$:
	mov	a,r1
	add	a,_display_str_lcd1602_a_65536_83
	mov	r0,a
	mov	a,r2
	addc	a,(_display_str_lcd1602_a_65536_83 + 1)
	mov	r6,a
	mov	r7,(_display_str_lcd1602_a_65536_83 + 2)
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00144$
	ret
00144$:
;	main.c:120: if (i == 0 && conti == 0) {
	mov	a,r1
	orl	a,r2
	jnz	00108$
	mov	a,_display_str_lcd1602_PARM_3
	orl	a,(_display_str_lcd1602_PARM_3 + 1)
	jnz	00108$
;	main.c:121: if (line == 1)
	mov	a,r4
	jz	00105$
;	main.c:122: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
	mov	dpl,#0x80
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcd_cmd
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00108$
00105$:
;	main.c:123: else if (line == 2)
	mov	a,r3
	jz	00102$
;	main.c:124: lcd_cmd(0xC0);  // Đặt con trỏ trở về đầu dòng 2
	mov	dpl,#0xc0
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcd_cmd
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	sjmp	00108$
00102$:
;	main.c:126: lcd_cmd(0x01);  // Xóa màn hình LCD
	mov	dpl,#0x01
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcd_cmd
;	main.c:127: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
	mov	dpl,#0x80
	lcall	_lcd_cmd
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
00108$:
;	main.c:130: lcd_bytea(a[i]);  // Gửi ký tự ra màn hình LCD
	mov	a,r1
	add	a,_display_str_lcd1602_a_65536_83
	mov	r5,a
	mov	a,r2
	addc	a,(_display_str_lcd1602_a_65536_83 + 1)
	mov	r6,a
	mov	r7,(_display_str_lcd1602_a_65536_83 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_lcd_bytea
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	main.c:131: i++;
	inc	r1
	cjne	r1,#0x00,00149$
	inc	r2
00149$:
;	main.c:133: }
	ljmp	00110$
;------------------------------------------------------------
;Allocation info for local variables in function 'display_char_lcd1602'
;------------------------------------------------------------
;line                      Allocated with name '_display_char_lcd1602_PARM_2'
;conti                     Allocated with name '_display_char_lcd1602_PARM_3'
;a                         Allocated to registers r7 
;------------------------------------------------------------
;	main.c:140: void display_char_lcd1602(unsigned char a, int line, int conti) {
;	-----------------------------------------
;	 function display_char_lcd1602
;	-----------------------------------------
_display_char_lcd1602:
	mov	r7,dpl
;	main.c:142: if (conti == 0) {
	mov	a,_display_char_lcd1602_PARM_3
	orl	a,(_display_char_lcd1602_PARM_3 + 1)
	jnz	00108$
;	main.c:143: if (line == 1)
	mov	a,#0x01
	cjne	a,_display_char_lcd1602_PARM_2,00124$
	dec	a
	cjne	a,(_display_char_lcd1602_PARM_2 + 1),00124$
	sjmp	00125$
00124$:
	sjmp	00105$
00125$:
;	main.c:144: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
	mov	dpl,#0x80
	push	ar7
	lcall	_lcd_cmd
	pop	ar7
	sjmp	00108$
00105$:
;	main.c:145: else if (line == 2)
	mov	a,#0x02
	cjne	a,_display_char_lcd1602_PARM_2,00126$
	clr	a
	cjne	a,(_display_char_lcd1602_PARM_2 + 1),00126$
	sjmp	00127$
00126$:
	sjmp	00102$
00127$:
;	main.c:146: lcd_cmd(0xC0);  // Đặt con trỏ trở về đầu dòng 2
	mov	dpl,#0xc0
	push	ar7
	lcall	_lcd_cmd
	pop	ar7
	sjmp	00108$
00102$:
;	main.c:148: lcd_cmd(0x01);  // Xóa màn hình LCD
	mov	dpl,#0x01
	push	ar7
	lcall	_lcd_cmd
;	main.c:149: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
	mov	dpl,#0x80
	lcall	_lcd_cmd
	pop	ar7
00108$:
;	main.c:152: lcd_bytea(a);
	mov	dpl,r7
;	main.c:153: }
	ljmp	_lcd_bytea
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us_DS18B20'
;------------------------------------------------------------
;time                      Allocated to registers 
;------------------------------------------------------------
;	main.c:158: void delay_us_DS18B20(unsigned int time) {
;	-----------------------------------------
;	 function delay_us_DS18B20
;	-----------------------------------------
_delay_us_DS18B20:
	mov	r6,dpl
	mov	r7,dph
;	main.c:160: while (time--)
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
;	main.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_DS18B20'
;------------------------------------------------------------
;	main.c:165: void Init_DS18B20(void) {
;	-----------------------------------------
;	 function Init_DS18B20
;	-----------------------------------------
_Init_DS18B20:
;	main.c:166: DQ = 1;
;	assignBit
	setb	_P3_7
;	main.c:167: delay_us_DS18B20(8);
	mov	dptr,#0x0008
	lcall	_delay_us_DS18B20
;	main.c:169: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:170: delay_us_DS18B20(65);
	mov	dptr,#0x0041
	lcall	_delay_us_DS18B20
;	main.c:171: DQ = 1;                // Cạnh tăng
;	assignBit
	setb	_P3_7
;	main.c:172: delay_us_DS18B20(20);  // Đợi DS18B20 phản hồi
	mov	dptr,#0x0014
;	main.c:173: }
	ljmp	_delay_us_DS18B20
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadByteFromScratchpad'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;byte                      Allocated to registers r7 
;------------------------------------------------------------
;	main.c:176: unsigned char ReadByteFromScratchpad() {
;	-----------------------------------------
;	 function ReadByteFromScratchpad
;	-----------------------------------------
_ReadByteFromScratchpad:
;	main.c:178: unsigned char byte = 0;
	mov	r7,#0x00
;	main.c:179: for (i = 8; i > 0; i--) {
	mov	r6,#0x08
00104$:
;	main.c:180: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:181: byte >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:182: DQ = 1;                // The master bus releases the 1-Wire bus
;	assignBit
	setb	_P3_7
;	main.c:183: if (DQ) byte |= 0x80;  // Read 1? Otherwise, Read 0
	jnb	_P3_7,00102$
	orl	ar7,#0x80
00102$:
;	main.c:184: delay_us_DS18B20(4);
	mov	dptr,#0x0004
	push	ar7
	push	ar6
	lcall	_delay_us_DS18B20
	pop	ar6
	pop	ar7
;	main.c:179: for (i = 8; i > 0; i--) {
	djnz	r6,00104$
;	main.c:186: return (byte);
	mov	dpl,r7
;	main.c:187: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteByteToScratchpad'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:190: void WriteByteToScratchpad(unsigned char byte) {
;	-----------------------------------------
;	 function WriteByteToScratchpad
;	-----------------------------------------
_WriteByteToScratchpad:
	mov	r7,dpl
;	main.c:192: for (i = 8; i > 0; i--) {
	mov	r6,#0x08
00102$:
;	main.c:193: DQ = 0;
;	assignBit
	clr	_P3_7
;	main.c:194: DQ = byte & 0x01;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P3_7,c
;	main.c:195: delay_us_DS18B20(5);
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	lcall	_delay_us_DS18B20
	pop	ar6
	pop	ar7
;	main.c:196: DQ = 1;  // The master bus releases the 1-Wire bus
;	assignBit
	setb	_P3_7
;	main.c:197: byte >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	main.c:192: for (i = 8; i > 0; i--) {
	djnz	r6,00102$
;	main.c:199: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadTemperature'
;------------------------------------------------------------
;Byte0                     Allocated to registers r7 
;Byte1                     Allocated to registers r6 
;------------------------------------------------------------
;	main.c:201: void ReadTemperature(void) {  // Hàm đọc nhiệt độ lưu vào biến temp
;	-----------------------------------------
;	 function ReadTemperature
;	-----------------------------------------
_ReadTemperature:
;	main.c:202: EA = 0;  // Nếu có ngắt thì cấm ngắt để tránh ảnh hưởng quá trình giao tiếp
;	assignBit
	clr	_EA
;	main.c:205: Init_DS18B20();               // Khởi tạo cảm biến DS18B20
	lcall	_Init_DS18B20
;	main.c:206: WriteByteToScratchpad(0xCC);  // The master issues Skip ROM [CCh] command
	mov	dpl,#0xcc
	lcall	_WriteByteToScratchpad
;	main.c:207: WriteByteToScratchpad(0x44);  // Convert T [44h] command. To initiate a temp
	mov	dpl,#0x44
	lcall	_WriteByteToScratchpad
;	main.c:209: delay_us_DS18B20(10);
	mov	dptr,#0x000a
	lcall	_delay_us_DS18B20
;	main.c:210: Init_DS18B20();
	lcall	_Init_DS18B20
;	main.c:211: WriteByteToScratchpad(0xCC);  // The master issues Skip ROM [CCh] command
	mov	dpl,#0xcc
	lcall	_WriteByteToScratchpad
;	main.c:212: WriteByteToScratchpad(0xBE);  // Read temp value.
	mov	dpl,#0xbe
	lcall	_WriteByteToScratchpad
;	main.c:214: delay_us_DS18B20(10);
	mov	dptr,#0x000a
	lcall	_delay_us_DS18B20
;	main.c:215: Byte0 = ReadByteFromScratchpad();  // Read Byte0 of the Scratchpad (low byte
	lcall	_ReadByteFromScratchpad
	mov	r7,dpl
;	main.c:217: Byte1 = ReadByteFromScratchpad();  // Read Byte1 of the Scratchpad (high
	push	ar7
	lcall	_ReadByteFromScratchpad
	mov	r6,dpl
	pop	ar7
;	main.c:220: temp = ((Byte1 * 256 + Byte0) >> 4);
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
;	main.c:222: EA = 1;  // Đọc xong thì cho phép ngắt
;	assignBit
	setb	_EA
;	main.c:223: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'celsius_to_fahrenheit'
;------------------------------------------------------------
;celsius                   Allocated to registers r4 r5 r6 r7 
;fahrenheit                Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:229: int celsius_to_fahrenheit(float celsius) {
;	-----------------------------------------
;	 function celsius_to_fahrenheit
;	-----------------------------------------
_celsius_to_fahrenheit:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	main.c:230: float fahrenheit = (celsius * 9 / 5) + 32;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x10
	mov	a,#0x41
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xa0
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x42
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:231: if (((int) (fahrenheit * 10) % 10) >= 5) fahrenheit += 1;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x41
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fs2sint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r2
	subb	a,#0x05
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	00102$
	clr	a
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x3f
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00102$:
;	main.c:232: return fahrenheit;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	main.c:233: }
	ljmp	___fs2sint
;------------------------------------------------------------
;Allocation info for local variables in function 'convert'
;------------------------------------------------------------
;str                       Allocated with name '_convert_PARM_2'
;n                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:236: void convert(int n, char *str) {
;	-----------------------------------------
;	 function convert
;	-----------------------------------------
_convert:
	mov	r6,dpl
	mov	r7,dph
;	main.c:237: if (isFahrenheit) n = celsius_to_fahrenheit(n);
	mov	a,_isFahrenheit
	orl	a,(_isFahrenheit + 1)
	jz	00102$
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	lcall	_celsius_to_fahrenheit
	mov	r6,dpl
	mov	r7,dph
00102$:
;	main.c:238: sprintf(str, "%d", n);
	push	ar6
	push	ar7
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	push	_convert_PARM_2
	push	(_convert_PARM_2 + 1)
	push	(_convert_PARM_2 + 2)
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:239: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;str                       Allocated with name '_main_str_131073_114'
;max                       Allocated to registers r6 r7 
;min                       Allocated with name '_main_min_131073_114'
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:242: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:243: lcd_init();        // Khởi tạo LCD
	lcall	_lcd_init
;	main.c:244: initilize_int0();  // Khởi tạo ngắt ngoài 0
	lcall	_initilize_int0
;	main.c:247: ReadTemperature();
	lcall	_ReadTemperature
;	main.c:248: delay_ms(1000);
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:251: ReadTemperature();  // Đọc nhiệt độ từ DS18B20
	lcall	_ReadTemperature
;	main.c:252: for (int i = 0; i < 10; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00117$
;	main.c:253: currentTempIndex = (currentTempIndex + 1) % 11;
	mov	dpl,_currentTempIndex
	mov	dph,(_currentTempIndex + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x0b
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__modsint
	mov	_currentTempIndex,dpl
	mov	(_currentTempIndex + 1),dph
	pop	ar6
	pop	ar7
;	main.c:255: if (temp <= 128)
	mov	a,_temp
	add	a,#0xff - 0x80
	jc	00102$
;	main.c:256: tempArr[currentTempIndex] = temp;
	mov	a,_currentTempIndex
	add	a,_currentTempIndex
	mov	r4,a
	mov	a,(_currentTempIndex + 1)
	rlc	a
	mov	a,r4
	add	a,#_tempArr
	mov	r1,a
	mov	r4,_temp
	mov	r5,#0x00
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
	sjmp	00121$
00102$:
;	main.c:258: tempArr[currentTempIndex] = temp - 256;
	mov	a,_currentTempIndex
	add	a,_currentTempIndex
	mov	r4,a
	mov	a,(_currentTempIndex + 1)
	rlc	a
	mov	a,r4
	add	a,#_tempArr
	mov	r1,a
	mov	r4,_temp
	clr	a
	add	a,#0xff
	mov	r5,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
00121$:
;	main.c:252: for (int i = 0; i < 10; i++) {
	inc	r6
;	main.c:261: while (1) {
	cjne	r6,#0x00,00120$
	inc	r7
	sjmp	00120$
00117$:
;	main.c:262: currentTempIndex = (currentTempIndex + 1) % 11;
	mov	dpl,_currentTempIndex
	mov	dph,(_currentTempIndex + 1)
	inc	dptr
	mov	__modsint_PARM_2,#0x0b
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	_currentTempIndex,dpl
	mov	(_currentTempIndex + 1),dph
;	main.c:263: ReadTemperature();  // Đọc nhiệt độ từ DS18B20
	lcall	_ReadTemperature
;	main.c:265: if (temp <= 128)
	mov	a,_temp
	add	a,#0xff - 0x80
	jc	00106$
;	main.c:266: tempArr[currentTempIndex] = temp;
	mov	a,_currentTempIndex
	add	a,_currentTempIndex
	mov	r6,a
	mov	a,(_currentTempIndex + 1)
	rlc	a
	mov	a,r6
	add	a,#_tempArr
	mov	r1,a
	mov	r6,_temp
	mov	r7,#0x00
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	sjmp	00107$
00106$:
;	main.c:268: tempArr[currentTempIndex] = temp - 256;
	mov	a,_currentTempIndex
	add	a,_currentTempIndex
	mov	r6,a
	mov	a,(_currentTempIndex + 1)
	rlc	a
	mov	a,r6
	add	a,#_tempArr
	mov	r1,a
	mov	r6,_temp
	clr	a
	add	a,#0xff
	mov	r7,a
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
00107$:
;	main.c:272: int max = -1000, min = 1000, i;
	mov	r6,#0x18
	mov	r7,#0xfc
	mov	_main_min_131073_114,#0xe8
	mov	(_main_min_131073_114 + 1),#0x03
;	main.c:273: for (i = 1; i <= 10; i++) {
	mov	r2,#0x01
	mov	r3,#0x00
00122$:
;	main.c:274: if (tempArr[i] < min) min = tempArr[i];
	mov	a,r2
	add	a,r2
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	a,r4
	add	a,#_tempArr
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	clr	c
	mov	a,r4
	subb	a,_main_min_131073_114
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_main_min_131073_114 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
	mov	_main_min_131073_114,r4
	mov	(_main_min_131073_114 + 1),r5
00109$:
;	main.c:275: if (tempArr[i] > max) max = tempArr[i];
	mov	a,r2
	add	a,r2
	mov	r4,a
	mov	a,r3
	rlc	a
	mov	a,r4
	add	a,#_tempArr
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	dec	r1
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
	mov	ar6,r4
	mov	ar7,r5
00123$:
;	main.c:273: for (i = 1; i <= 10; i++) {
	inc	r2
	cjne	r2,#0x00,00174$
	inc	r3
00174$:
	clr	c
	mov	a,#0x0a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
;	main.c:279: display_str_lcd1602("Cur Temp: ", 1, 0);
	mov	_display_str_lcd1602_PARM_2,#0x01
	clr	a
	mov	(_display_str_lcd1602_PARM_2 + 1),a
	mov	_display_str_lcd1602_PARM_3,a
	mov	(_display_str_lcd1602_PARM_3 + 1),a
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
;	main.c:281: convert(tempArr[currentTempIndex], str);
	mov	a,_currentTempIndex
	add	a,_currentTempIndex
	mov	r4,a
	mov	a,(_currentTempIndex + 1)
	rlc	a
	mov	a,r4
	add	a,#_tempArr
	mov	r1,a
	mov	dpl,@r1
	inc	r1
	mov	dph,@r1
	dec	r1
	mov	_convert_PARM_2,#_main_str_131073_114
	mov	(_convert_PARM_2 + 1),#0x00
	mov	(_convert_PARM_2 + 2),#0x40
	lcall	_convert
	pop	ar6
	pop	ar7
;	main.c:282: display_str_lcd1602(str, 2, 1);
	mov	_display_str_lcd1602_PARM_2,#0x02
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#_main_str_131073_114
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
	pop	ar6
	pop	ar7
;	main.c:284: display_char_lcd1602(0xDF, 1, 1);  // Hiển thị ký tự độ
	mov	_display_char_lcd1602_PARM_2,#0x01
	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
	mov	_display_char_lcd1602_PARM_3,#0x01
	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
	mov	dpl,#0xdf
	push	ar7
	push	ar6
	lcall	_display_char_lcd1602
	pop	ar6
	pop	ar7
;	main.c:285: if (isFahrenheit)
	mov	a,_isFahrenheit
	orl	a,(_isFahrenheit + 1)
	jz	00114$
;	main.c:286: display_char_lcd1602('F', 1, 1);
	mov	_display_char_lcd1602_PARM_2,#0x01
	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
	mov	_display_char_lcd1602_PARM_3,#0x01
	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
	mov	dpl,#0x46
	push	ar7
	push	ar6
	lcall	_display_char_lcd1602
	pop	ar6
	pop	ar7
	sjmp	00115$
00114$:
;	main.c:288: display_char_lcd1602('C', 1, 1);
	mov	_display_char_lcd1602_PARM_2,#0x01
	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
	mov	_display_char_lcd1602_PARM_3,#0x01
	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
	mov	dpl,#0x43
	push	ar7
	push	ar6
	lcall	_display_char_lcd1602
	pop	ar6
	pop	ar7
00115$:
;	main.c:289: display_str_lcd1602("      ", 1, 1);  // Xóa các ký tự thừa ở cuối dòng
	mov	_display_str_lcd1602_PARM_2,#0x01
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
	pop	ar6
	pop	ar7
;	main.c:292: display_str_lcd1602("L: ", 2, 0);
	mov	_display_str_lcd1602_PARM_2,#0x02
	clr	a
	mov	(_display_str_lcd1602_PARM_2 + 1),a
	mov	_display_str_lcd1602_PARM_3,a
	mov	(_display_str_lcd1602_PARM_3 + 1),a
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
;	main.c:295: convert(min, str);
	mov	_convert_PARM_2,#_main_str_131073_114
	mov	(_convert_PARM_2 + 1),#0x00
	mov	(_convert_PARM_2 + 2),#0x40
	mov	dpl,_main_min_131073_114
	mov	dph,(_main_min_131073_114 + 1)
	lcall	_convert
	pop	ar6
	pop	ar7
;	main.c:296: display_str_lcd1602(str, 2, 1);
	mov	_display_str_lcd1602_PARM_2,#0x02
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#_main_str_131073_114
	mov	b,#0x40
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
	pop	ar6
	pop	ar7
;	main.c:297: display_str_lcd1602(" H: ", 2, 1);
	mov	_display_str_lcd1602_PARM_2,#0x02
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	push	ar6
	lcall	_display_str_lcd1602
	pop	ar6
	pop	ar7
;	main.c:300: convert(max, str);
	mov	_convert_PARM_2,#_main_str_131073_114
	mov	(_convert_PARM_2 + 1),#0x00
	mov	(_convert_PARM_2 + 2),#0x40
	mov	dpl,r6
	mov	dph,r7
	lcall	_convert
;	main.c:301: display_str_lcd1602(str, 2, 1);
	mov	_display_str_lcd1602_PARM_2,#0x02
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#_main_str_131073_114
	mov	b,#0x40
	lcall	_display_str_lcd1602
;	main.c:302: display_str_lcd1602("       ", 2, 1);  // Xóa các ký tự thừa ở cuối dòng
	mov	_display_str_lcd1602_PARM_2,#0x02
	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
	mov	_display_str_lcd1602_PARM_3,#0x01
	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_display_str_lcd1602
;	main.c:303: delay_ms(1000);                        // for every 6s.
	mov	dptr,#0x03e8
	clr	a
	mov	b,a
	lcall	_delay_ms
;	main.c:305: }
	ljmp	00117$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Cur Temp: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "      "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "L: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii " H: "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "       "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
