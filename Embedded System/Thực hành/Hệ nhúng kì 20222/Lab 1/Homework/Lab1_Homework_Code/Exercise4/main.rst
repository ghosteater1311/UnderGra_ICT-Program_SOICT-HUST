                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.14 #14012 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _convert
                                     13 	.globl _celsius_to_fahrenheit
                                     14 	.globl _ReadTemperature
                                     15 	.globl _WriteByteToScratchpad
                                     16 	.globl _ReadByteFromScratchpad
                                     17 	.globl _Init_DS18B20
                                     18 	.globl _delay_us_DS18B20
                                     19 	.globl _display_char_lcd1602
                                     20 	.globl _display_str_lcd1602
                                     21 	.globl _lcd_init
                                     22 	.globl _lcd_bytea
                                     23 	.globl _lcd_cmd
                                     24 	.globl _Wait_For_LCD
                                     25 	.globl _external0_interrupt
                                     26 	.globl _initilize_int0
                                     27 	.globl _delay_ms
                                     28 	.globl _sprintf
                                     29 	.globl _TF2
                                     30 	.globl _EXF2
                                     31 	.globl _RCLK
                                     32 	.globl _TCLK
                                     33 	.globl _EXEN2
                                     34 	.globl _TR2
                                     35 	.globl _C_T2
                                     36 	.globl _CP_RL2
                                     37 	.globl _T2CON_7
                                     38 	.globl _T2CON_6
                                     39 	.globl _T2CON_5
                                     40 	.globl _T2CON_4
                                     41 	.globl _T2CON_3
                                     42 	.globl _T2CON_2
                                     43 	.globl _T2CON_1
                                     44 	.globl _T2CON_0
                                     45 	.globl _PT2
                                     46 	.globl _ET2
                                     47 	.globl _CY
                                     48 	.globl _AC
                                     49 	.globl _F0
                                     50 	.globl _RS1
                                     51 	.globl _RS0
                                     52 	.globl _OV
                                     53 	.globl _F1
                                     54 	.globl _P
                                     55 	.globl _PS
                                     56 	.globl _PT1
                                     57 	.globl _PX1
                                     58 	.globl _PT0
                                     59 	.globl _PX0
                                     60 	.globl _RD
                                     61 	.globl _WR
                                     62 	.globl _T1
                                     63 	.globl _T0
                                     64 	.globl _INT1
                                     65 	.globl _INT0
                                     66 	.globl _TXD
                                     67 	.globl _RXD
                                     68 	.globl _P3_7
                                     69 	.globl _P3_6
                                     70 	.globl _P3_5
                                     71 	.globl _P3_4
                                     72 	.globl _P3_3
                                     73 	.globl _P3_2
                                     74 	.globl _P3_1
                                     75 	.globl _P3_0
                                     76 	.globl _EA
                                     77 	.globl _ES
                                     78 	.globl _ET1
                                     79 	.globl _EX1
                                     80 	.globl _ET0
                                     81 	.globl _EX0
                                     82 	.globl _P2_7
                                     83 	.globl _P2_6
                                     84 	.globl _P2_5
                                     85 	.globl _P2_4
                                     86 	.globl _P2_3
                                     87 	.globl _P2_2
                                     88 	.globl _P2_1
                                     89 	.globl _P2_0
                                     90 	.globl _SM0
                                     91 	.globl _SM1
                                     92 	.globl _SM2
                                     93 	.globl _REN
                                     94 	.globl _TB8
                                     95 	.globl _RB8
                                     96 	.globl _TI
                                     97 	.globl _RI
                                     98 	.globl _P1_7
                                     99 	.globl _P1_6
                                    100 	.globl _P1_5
                                    101 	.globl _P1_4
                                    102 	.globl _P1_3
                                    103 	.globl _P1_2
                                    104 	.globl _P1_1
                                    105 	.globl _P1_0
                                    106 	.globl _TF1
                                    107 	.globl _TR1
                                    108 	.globl _TF0
                                    109 	.globl _TR0
                                    110 	.globl _IE1
                                    111 	.globl _IT1
                                    112 	.globl _IE0
                                    113 	.globl _IT0
                                    114 	.globl _P0_7
                                    115 	.globl _P0_6
                                    116 	.globl _P0_5
                                    117 	.globl _P0_4
                                    118 	.globl _P0_3
                                    119 	.globl _P0_2
                                    120 	.globl _P0_1
                                    121 	.globl _P0_0
                                    122 	.globl _TH2
                                    123 	.globl _TL2
                                    124 	.globl _RCAP2H
                                    125 	.globl _RCAP2L
                                    126 	.globl _T2CON
                                    127 	.globl _B
                                    128 	.globl _ACC
                                    129 	.globl _PSW
                                    130 	.globl _IP
                                    131 	.globl _P3
                                    132 	.globl _IE
                                    133 	.globl _P2
                                    134 	.globl _SBUF
                                    135 	.globl _SCON
                                    136 	.globl _P1
                                    137 	.globl _TH1
                                    138 	.globl _TH0
                                    139 	.globl _TL1
                                    140 	.globl _TL0
                                    141 	.globl _TMOD
                                    142 	.globl _TCON
                                    143 	.globl _PCON
                                    144 	.globl _DPH
                                    145 	.globl _DPL
                                    146 	.globl _SP
                                    147 	.globl _P0
                                    148 	.globl _en
                                    149 	.globl _rw
                                    150 	.globl _rs
                                    151 	.globl _convert_PARM_2
                                    152 	.globl _display_char_lcd1602_PARM_3
                                    153 	.globl _display_char_lcd1602_PARM_2
                                    154 	.globl _display_str_lcd1602_PARM_3
                                    155 	.globl _display_str_lcd1602_PARM_2
                                    156 	.globl _isFahrenheit
                                    157 	.globl _temp
                                    158 	.globl _currentTempIndex
                                    159 	.globl _tempArr
                                    160 ;--------------------------------------------------------
                                    161 ; special function registers
                                    162 ;--------------------------------------------------------
                                    163 	.area RSEG    (ABS,DATA)
      000000                        164 	.org 0x0000
                           000080   165 _P0	=	0x0080
                           000081   166 _SP	=	0x0081
                           000082   167 _DPL	=	0x0082
                           000083   168 _DPH	=	0x0083
                           000087   169 _PCON	=	0x0087
                           000088   170 _TCON	=	0x0088
                           000089   171 _TMOD	=	0x0089
                           00008A   172 _TL0	=	0x008a
                           00008B   173 _TL1	=	0x008b
                           00008C   174 _TH0	=	0x008c
                           00008D   175 _TH1	=	0x008d
                           000090   176 _P1	=	0x0090
                           000098   177 _SCON	=	0x0098
                           000099   178 _SBUF	=	0x0099
                           0000A0   179 _P2	=	0x00a0
                           0000A8   180 _IE	=	0x00a8
                           0000B0   181 _P3	=	0x00b0
                           0000B8   182 _IP	=	0x00b8
                           0000D0   183 _PSW	=	0x00d0
                           0000E0   184 _ACC	=	0x00e0
                           0000F0   185 _B	=	0x00f0
                           0000C8   186 _T2CON	=	0x00c8
                           0000CA   187 _RCAP2L	=	0x00ca
                           0000CB   188 _RCAP2H	=	0x00cb
                           0000CC   189 _TL2	=	0x00cc
                           0000CD   190 _TH2	=	0x00cd
                                    191 ;--------------------------------------------------------
                                    192 ; special function bits
                                    193 ;--------------------------------------------------------
                                    194 	.area RSEG    (ABS,DATA)
      000000                        195 	.org 0x0000
                           000080   196 _P0_0	=	0x0080
                           000081   197 _P0_1	=	0x0081
                           000082   198 _P0_2	=	0x0082
                           000083   199 _P0_3	=	0x0083
                           000084   200 _P0_4	=	0x0084
                           000085   201 _P0_5	=	0x0085
                           000086   202 _P0_6	=	0x0086
                           000087   203 _P0_7	=	0x0087
                           000088   204 _IT0	=	0x0088
                           000089   205 _IE0	=	0x0089
                           00008A   206 _IT1	=	0x008a
                           00008B   207 _IE1	=	0x008b
                           00008C   208 _TR0	=	0x008c
                           00008D   209 _TF0	=	0x008d
                           00008E   210 _TR1	=	0x008e
                           00008F   211 _TF1	=	0x008f
                           000090   212 _P1_0	=	0x0090
                           000091   213 _P1_1	=	0x0091
                           000092   214 _P1_2	=	0x0092
                           000093   215 _P1_3	=	0x0093
                           000094   216 _P1_4	=	0x0094
                           000095   217 _P1_5	=	0x0095
                           000096   218 _P1_6	=	0x0096
                           000097   219 _P1_7	=	0x0097
                           000098   220 _RI	=	0x0098
                           000099   221 _TI	=	0x0099
                           00009A   222 _RB8	=	0x009a
                           00009B   223 _TB8	=	0x009b
                           00009C   224 _REN	=	0x009c
                           00009D   225 _SM2	=	0x009d
                           00009E   226 _SM1	=	0x009e
                           00009F   227 _SM0	=	0x009f
                           0000A0   228 _P2_0	=	0x00a0
                           0000A1   229 _P2_1	=	0x00a1
                           0000A2   230 _P2_2	=	0x00a2
                           0000A3   231 _P2_3	=	0x00a3
                           0000A4   232 _P2_4	=	0x00a4
                           0000A5   233 _P2_5	=	0x00a5
                           0000A6   234 _P2_6	=	0x00a6
                           0000A7   235 _P2_7	=	0x00a7
                           0000A8   236 _EX0	=	0x00a8
                           0000A9   237 _ET0	=	0x00a9
                           0000AA   238 _EX1	=	0x00aa
                           0000AB   239 _ET1	=	0x00ab
                           0000AC   240 _ES	=	0x00ac
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000D0   263 _P	=	0x00d0
                           0000D1   264 _F1	=	0x00d1
                           0000D2   265 _OV	=	0x00d2
                           0000D3   266 _RS0	=	0x00d3
                           0000D4   267 _RS1	=	0x00d4
                           0000D5   268 _F0	=	0x00d5
                           0000D6   269 _AC	=	0x00d6
                           0000D7   270 _CY	=	0x00d7
                           0000AD   271 _ET2	=	0x00ad
                           0000BD   272 _PT2	=	0x00bd
                           0000C8   273 _T2CON_0	=	0x00c8
                           0000C9   274 _T2CON_1	=	0x00c9
                           0000CA   275 _T2CON_2	=	0x00ca
                           0000CB   276 _T2CON_3	=	0x00cb
                           0000CC   277 _T2CON_4	=	0x00cc
                           0000CD   278 _T2CON_5	=	0x00cd
                           0000CE   279 _T2CON_6	=	0x00ce
                           0000CF   280 _T2CON_7	=	0x00cf
                           0000C8   281 _CP_RL2	=	0x00c8
                           0000C9   282 _C_T2	=	0x00c9
                           0000CA   283 _TR2	=	0x00ca
                           0000CB   284 _EXEN2	=	0x00cb
                           0000CC   285 _TCLK	=	0x00cc
                           0000CD   286 _RCLK	=	0x00cd
                           0000CE   287 _EXF2	=	0x00ce
                           0000CF   288 _TF2	=	0x00cf
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable register banks
                                    291 ;--------------------------------------------------------
                                    292 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        293 	.ds 8
                                    294 ;--------------------------------------------------------
                                    295 ; internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area DSEG    (DATA)
      000008                        298 _tempArr::
      000008                        299 	.ds 22
      00001E                        300 _currentTempIndex::
      00001E                        301 	.ds 2
      000020                        302 _temp::
      000020                        303 	.ds 1
      000021                        304 _isFahrenheit::
      000021                        305 	.ds 2
      000023                        306 _delay_ms_ms_65536_70:
      000023                        307 	.ds 4
      000027                        308 _display_str_lcd1602_PARM_2:
      000027                        309 	.ds 2
      000029                        310 _display_str_lcd1602_PARM_3:
      000029                        311 	.ds 2
      00002B                        312 _display_str_lcd1602_a_65536_83:
      00002B                        313 	.ds 3
      00002E                        314 _display_char_lcd1602_PARM_2:
      00002E                        315 	.ds 2
      000030                        316 _display_char_lcd1602_PARM_3:
      000030                        317 	.ds 2
      000032                        318 _convert_PARM_2:
      000032                        319 	.ds 3
      000035                        320 _main_str_131073_114:
      000035                        321 	.ds 10
      00003F                        322 _main_min_131073_114:
      00003F                        323 	.ds 2
                                    324 ;--------------------------------------------------------
                                    325 ; overlayable items in internal ram
                                    326 ;--------------------------------------------------------
                                    327 	.area	OSEG    (OVR,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; Stack segment in internal ram
                                    330 ;--------------------------------------------------------
                                    331 	.area SSEG
      000081                        332 __start__stack:
      000081                        333 	.ds	1
                                    334 
                                    335 ;--------------------------------------------------------
                                    336 ; indirectly addressable internal ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area ISEG    (DATA)
                                    339 ;--------------------------------------------------------
                                    340 ; absolute internal ram data
                                    341 ;--------------------------------------------------------
                                    342 	.area IABS    (ABS,DATA)
                                    343 	.area IABS    (ABS,DATA)
                                    344 ;--------------------------------------------------------
                                    345 ; bit data
                                    346 ;--------------------------------------------------------
                                    347 	.area BSEG    (BIT)
                           000087   348 _rs	=	0x0087
                           000086   349 _rw	=	0x0086
                           000085   350 _en	=	0x0085
                                    351 ;--------------------------------------------------------
                                    352 ; paged external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area PSEG    (PAG,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; uninitialized external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XSEG    (XDATA)
                                    359 ;--------------------------------------------------------
                                    360 ; absolute external ram data
                                    361 ;--------------------------------------------------------
                                    362 	.area XABS    (ABS,XDATA)
                                    363 ;--------------------------------------------------------
                                    364 ; initialized external ram data
                                    365 ;--------------------------------------------------------
                                    366 	.area XISEG   (XDATA)
                                    367 	.area HOME    (CODE)
                                    368 	.area GSINIT0 (CODE)
                                    369 	.area GSINIT1 (CODE)
                                    370 	.area GSINIT2 (CODE)
                                    371 	.area GSINIT3 (CODE)
                                    372 	.area GSINIT4 (CODE)
                                    373 	.area GSINIT5 (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 	.area GSFINAL (CODE)
                                    376 	.area CSEG    (CODE)
                                    377 ;--------------------------------------------------------
                                    378 ; interrupt vector
                                    379 ;--------------------------------------------------------
                                    380 	.area HOME    (CODE)
      000000                        381 __interrupt_vect:
      000000 02 00 09         [24]  382 	ljmp	__sdcc_gsinit_startup
      000003 02 01 30         [24]  383 	ljmp	_external0_interrupt
                                    384 ;--------------------------------------------------------
                                    385 ; global & static initialisations
                                    386 ;--------------------------------------------------------
                                    387 	.area HOME    (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.area GSFINAL (CODE)
                                    390 	.area GSINIT  (CODE)
                                    391 	.globl __sdcc_gsinit_startup
                                    392 	.globl __sdcc_program_startup
                                    393 	.globl __start__stack
                                    394 	.globl __mcs51_genXINIT
                                    395 	.globl __mcs51_genXRAMCLEAR
                                    396 	.globl __mcs51_genRAMCLEAR
                                    397 ;	main.c:11: int tempArr[11] = {0};
      000062 E4               [12]  398 	clr	a
      000063 F5 08            [12]  399 	mov	(_tempArr + 0),a
      000065 F5 09            [12]  400 	mov	(_tempArr + 1),a
                                    401 ;	main.c:12: int currentTempIndex = 1;  // Chỉ ra index của nhiệt độ hiện tại
      000067 75 1E 01         [24]  402 	mov	_currentTempIndex,#0x01
      00006A F5 1F            [12]  403 	mov	(_currentTempIndex + 1),a
                                    404 ;	main.c:14: int isFahrenheit = 1;  // 0: hiển thị độ C - 1 : hiển thị độ F
      00006C 75 21 01         [24]  405 	mov	_isFahrenheit,#0x01
      00006F F5 22            [12]  406 	mov	(_isFahrenheit + 1),a
                                    407 	.area GSFINAL (CODE)
      000071 02 00 06         [24]  408 	ljmp	__sdcc_program_startup
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
      000006                        414 __sdcc_program_startup:
      000006 02 04 AF         [24]  415 	ljmp	_main
                                    416 ;	return from main will return to caller
                                    417 ;--------------------------------------------------------
                                    418 ; code
                                    419 ;--------------------------------------------------------
                                    420 	.area CSEG    (CODE)
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'delay_ms'
                                    423 ;------------------------------------------------------------
                                    424 ;ms                        Allocated with name '_delay_ms_ms_65536_70'
                                    425 ;------------------------------------------------------------
                                    426 ;	main.c:17: void delay_ms(long ms) {
                                    427 ;	-----------------------------------------
                                    428 ;	 function delay_ms
                                    429 ;	-----------------------------------------
      000074                        430 _delay_ms:
                           000007   431 	ar7 = 0x07
                           000006   432 	ar6 = 0x06
                           000005   433 	ar5 = 0x05
                           000004   434 	ar4 = 0x04
                           000003   435 	ar3 = 0x03
                           000002   436 	ar2 = 0x02
                           000001   437 	ar1 = 0x01
                           000000   438 	ar0 = 0x00
      000074 85 82 77         [24]  439 	mov	__mullong_PARM_2,dpl
      000077 85 83 78         [24]  440 	mov	(__mullong_PARM_2 + 1),dph
      00007A 85 F0 79         [24]  441 	mov	(__mullong_PARM_2 + 2),b
      00007D F5 7A            [12]  442 	mov	(__mullong_PARM_2 + 3),a
                                    443 ;	main.c:18: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
      00007F 90 03 E8         [24]  444 	mov	dptr,#0x03e8
      000082 E4               [12]  445 	clr	a
      000083 F5 F0            [12]  446 	mov	b,a
      000085 12 09 47         [24]  447 	lcall	__mullong
      000088 AC 82            [24]  448 	mov	r4,dpl
      00008A AD 83            [24]  449 	mov	r5,dph
      00008C AE F0            [24]  450 	mov	r6,b
      00008E FF               [12]  451 	mov	r7,a
                                    452 ;	main.c:19: while (ms > 0) {
      00008F                        453 00107$:
      00008F C3               [12]  454 	clr	c
      000090 E4               [12]  455 	clr	a
      000091 9C               [12]  456 	subb	a,r4
      000092 E4               [12]  457 	clr	a
      000093 9D               [12]  458 	subb	a,r5
      000094 E4               [12]  459 	clr	a
      000095 9E               [12]  460 	subb	a,r6
      000096 74 80            [12]  461 	mov	a,#(0x00 ^ 0x80)
      000098 8F F0            [24]  462 	mov	b,r7
      00009A 63 F0 80         [24]  463 	xrl	b,#0x80
      00009D 95 F0            [12]  464 	subb	a,b
      00009F 40 01            [24]  465 	jc	00137$
      0000A1 22               [24]  466 	ret
      0000A2                        467 00137$:
                                    468 ;	main.c:21: TMOD = TMOD & 0xF0;
      0000A2 53 89 F0         [24]  469 	anl	_TMOD,#0xf0
                                    470 ;	main.c:23: TMOD = TMOD | 0x01;
      0000A5 43 89 01         [24]  471 	orl	_TMOD,#0x01
                                    472 ;	main.c:24: ET0 = 0;  // Che ngắt Timer 0
                                    473 ;	assignBit
      0000A8 C2 A9            [12]  474 	clr	_ET0
                                    475 ;	main.c:26: if (ms >= 65536) {
      0000AA C3               [12]  476 	clr	c
      0000AB EE               [12]  477 	mov	a,r6
      0000AC 94 01            [12]  478 	subb	a,#0x01
      0000AE EF               [12]  479 	mov	a,r7
      0000AF 64 80            [12]  480 	xrl	a,#0x80
      0000B1 94 80            [12]  481 	subb	a,#0x80
      0000B3 40 0F            [24]  482 	jc	00102$
                                    483 ;	main.c:28: TH0 = 0;
                                    484 ;	main.c:29: TL0 = 0;
                                    485 ;	main.c:30: ms -= 65536;
      0000B5 E4               [12]  486 	clr	a
      0000B6 F5 8C            [12]  487 	mov	_TH0,a
      0000B8 F5 8A            [12]  488 	mov	_TL0,a
      0000BA EE               [12]  489 	mov	a,r6
      0000BB 24 FF            [12]  490 	add	a,#0xff
      0000BD FE               [12]  491 	mov	r6,a
      0000BE EF               [12]  492 	mov	a,r7
      0000BF 34 FF            [12]  493 	addc	a,#0xff
      0000C1 FF               [12]  494 	mov	r7,a
      0000C2 80 57            [24]  495 	sjmp	00103$
      0000C4                        496 00102$:
                                    497 ;	main.c:33: ms = 65536 - ms;
      0000C4 E4               [12]  498 	clr	a
      0000C5 C3               [12]  499 	clr	c
      0000C6 9C               [12]  500 	subb	a,r4
      0000C7 F5 23            [12]  501 	mov	_delay_ms_ms_65536_70,a
      0000C9 E4               [12]  502 	clr	a
      0000CA 9D               [12]  503 	subb	a,r5
      0000CB F5 24            [12]  504 	mov	(_delay_ms_ms_65536_70 + 1),a
      0000CD 74 01            [12]  505 	mov	a,#0x01
      0000CF 9E               [12]  506 	subb	a,r6
      0000D0 F5 25            [12]  507 	mov	(_delay_ms_ms_65536_70 + 2),a
      0000D2 E4               [12]  508 	clr	a
      0000D3 9F               [12]  509 	subb	a,r7
      0000D4 F5 26            [12]  510 	mov	(_delay_ms_ms_65536_70 + 3),a
                                    511 ;	main.c:34: TH0 = ms / 256;
      0000D6 E4               [12]  512 	clr	a
      0000D7 F5 77            [12]  513 	mov	__divslong_PARM_2,a
      0000D9 75 78 01         [24]  514 	mov	(__divslong_PARM_2 + 1),#0x01
      0000DC F5 79            [12]  515 	mov	(__divslong_PARM_2 + 2),a
      0000DE F5 7A            [12]  516 	mov	(__divslong_PARM_2 + 3),a
      0000E0 85 23 82         [24]  517 	mov	dpl,_delay_ms_ms_65536_70
      0000E3 85 24 83         [24]  518 	mov	dph,(_delay_ms_ms_65536_70 + 1)
      0000E6 85 25 F0         [24]  519 	mov	b,(_delay_ms_ms_65536_70 + 2)
      0000E9 E5 26            [12]  520 	mov	a,(_delay_ms_ms_65536_70 + 3)
      0000EB 12 0A AA         [24]  521 	lcall	__divslong
      0000EE A8 82            [24]  522 	mov	r0,dpl
      0000F0 88 8C            [24]  523 	mov	_TH0,r0
                                    524 ;	main.c:35: TL0 = ms % 256;
      0000F2 E4               [12]  525 	clr	a
      0000F3 F5 77            [12]  526 	mov	__modslong_PARM_2,a
      0000F5 75 78 01         [24]  527 	mov	(__modslong_PARM_2 + 1),#0x01
      0000F8 F5 79            [12]  528 	mov	(__modslong_PARM_2 + 2),a
      0000FA F5 7A            [12]  529 	mov	(__modslong_PARM_2 + 3),a
      0000FC 85 23 82         [24]  530 	mov	dpl,_delay_ms_ms_65536_70
      0000FF 85 24 83         [24]  531 	mov	dph,(_delay_ms_ms_65536_70 + 1)
      000102 85 25 F0         [24]  532 	mov	b,(_delay_ms_ms_65536_70 + 2)
      000105 E5 26            [12]  533 	mov	a,(_delay_ms_ms_65536_70 + 3)
      000107 12 0A 5B         [24]  534 	lcall	__modslong
      00010A A8 82            [24]  535 	mov	r0,dpl
      00010C A9 83            [24]  536 	mov	r1,dph
      00010E AA F0            [24]  537 	mov	r2,b
      000110 FB               [12]  538 	mov	r3,a
      000111 88 8A            [24]  539 	mov	_TL0,r0
                                    540 ;	main.c:36: ms = 0;
      000113 7C 00            [12]  541 	mov	r4,#0x00
      000115 7D 00            [12]  542 	mov	r5,#0x00
      000117 7E 00            [12]  543 	mov	r6,#0x00
      000119 7F 00            [12]  544 	mov	r7,#0x00
      00011B                        545 00103$:
                                    546 ;	main.c:38: TF0 = 0;  // Xóa cờ tràn Timer 0
                                    547 ;	assignBit
      00011B C2 8D            [12]  548 	clr	_TF0
                                    549 ;	main.c:39: TR0 = 1;  // Khởi động Timer 0
                                    550 ;	assignBit
      00011D D2 8C            [12]  551 	setb	_TR0
                                    552 ;	main.c:40: while (TF0 == 0)
      00011F                        553 00104$:
      00011F 30 8D FD         [24]  554 	jnb	_TF0,00104$
                                    555 ;	main.c:42: TR0 = 0;  // Dừng Timer 0
                                    556 ;	assignBit
      000122 C2 8C            [12]  557 	clr	_TR0
                                    558 ;	main.c:44: }
      000124 02 00 8F         [24]  559 	ljmp	00107$
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'initilize_int0'
                                    562 ;------------------------------------------------------------
                                    563 ;	main.c:49: void initilize_int0() {
                                    564 ;	-----------------------------------------
                                    565 ;	 function initilize_int0
                                    566 ;	-----------------------------------------
      000127                        567 _initilize_int0:
                                    568 ;	main.c:50: P3_2 = 1;  // P3_2 là input
                                    569 ;	assignBit
      000127 D2 B2            [12]  570 	setb	_P3_2
                                    571 ;	main.c:51: EX0 = 1;   // Cho phép ngắt ngoài 0
                                    572 ;	assignBit
      000129 D2 A8            [12]  573 	setb	_EX0
                                    574 ;	main.c:52: IT0 = 1;   // Ngắt theo sườn xuống
                                    575 ;	assignBit
      00012B D2 88            [12]  576 	setb	_IT0
                                    577 ;	main.c:53: EA = 1;    // Cho phép ngắt toàn cục
                                    578 ;	assignBit
      00012D D2 AF            [12]  579 	setb	_EA
                                    580 ;	main.c:54: }
      00012F 22               [24]  581 	ret
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'external0_interrupt'
                                    584 ;------------------------------------------------------------
                                    585 ;	main.c:57: void external0_interrupt() __interrupt(0) {
                                    586 ;	-----------------------------------------
                                    587 ;	 function external0_interrupt
                                    588 ;	-----------------------------------------
      000130                        589 _external0_interrupt:
      000130 C0 E0            [24]  590 	push	acc
      000132 C0 D0            [24]  591 	push	psw
                                    592 ;	main.c:58: EA = 0;  // Che toàn bộ các ngắt
                                    593 ;	assignBit
      000134 C2 AF            [12]  594 	clr	_EA
                                    595 ;	main.c:60: isFahrenheit = 1 - isFahrenheit;
      000136 74 01            [12]  596 	mov	a,#0x01
      000138 C3               [12]  597 	clr	c
      000139 95 21            [12]  598 	subb	a,_isFahrenheit
      00013B F5 21            [12]  599 	mov	_isFahrenheit,a
      00013D E4               [12]  600 	clr	a
      00013E 95 22            [12]  601 	subb	a,(_isFahrenheit + 1)
      000140 F5 22            [12]  602 	mov	(_isFahrenheit + 1),a
                                    603 ;	main.c:61: EA = 1;  // Cho phép ngắt toàn cục
                                    604 ;	assignBit
      000142 D2 AF            [12]  605 	setb	_EA
                                    606 ;	main.c:62: }
      000144 D0 D0            [24]  607 	pop	psw
      000146 D0 E0            [24]  608 	pop	acc
      000148 32               [24]  609 	reti
                                    610 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    611 ;	eliminated unneeded push/pop dpl
                                    612 ;	eliminated unneeded push/pop dph
                                    613 ;	eliminated unneeded push/pop b
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    616 ;------------------------------------------------------------
                                    617 ;	main.c:71: void Wait_For_LCD() { delay_ms(1); }
                                    618 ;	-----------------------------------------
                                    619 ;	 function Wait_For_LCD
                                    620 ;	-----------------------------------------
      000149                        621 _Wait_For_LCD:
      000149 90 00 01         [24]  622 	mov	dptr,#(0x01&0x00ff)
      00014C E4               [12]  623 	clr	a
      00014D F5 F0            [12]  624 	mov	b,a
      00014F 02 00 74         [24]  625 	ljmp	_delay_ms
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'lcd_cmd'
                                    628 ;------------------------------------------------------------
                                    629 ;command                   Allocated to registers 
                                    630 ;------------------------------------------------------------
                                    631 ;	main.c:74: void lcd_cmd(unsigned char command) {
                                    632 ;	-----------------------------------------
                                    633 ;	 function lcd_cmd
                                    634 ;	-----------------------------------------
      000152                        635 _lcd_cmd:
      000152 85 82 A0         [24]  636 	mov	_P2,dpl
                                    637 ;	main.c:76: rs = 0;  // Chế độ gửi lệnh
                                    638 ;	assignBit
      000155 C2 87            [12]  639 	clr	_rs
                                    640 ;	main.c:77: rw = 0;  // Chế độ ghi
                                    641 ;	assignBit
      000157 C2 86            [12]  642 	clr	_rw
                                    643 ;	main.c:79: en = 1;
                                    644 ;	assignBit
      000159 D2 85            [12]  645 	setb	_en
                                    646 ;	main.c:80: delay_ms(1);
      00015B 90 00 01         [24]  647 	mov	dptr,#(0x01&0x00ff)
      00015E E4               [12]  648 	clr	a
      00015F F5 F0            [12]  649 	mov	b,a
      000161 12 00 74         [24]  650 	lcall	_delay_ms
                                    651 ;	main.c:81: en = 0;
                                    652 ;	assignBit
      000164 C2 85            [12]  653 	clr	_en
                                    654 ;	main.c:83: Wait_For_LCD();
      000166 12 01 49         [24]  655 	lcall	_Wait_For_LCD
                                    656 ;	main.c:84: en = 1;
                                    657 ;	assignBit
      000169 D2 85            [12]  658 	setb	_en
                                    659 ;	main.c:85: }
      00016B 22               [24]  660 	ret
                                    661 ;------------------------------------------------------------
                                    662 ;Allocation info for local variables in function 'lcd_bytea'
                                    663 ;------------------------------------------------------------
                                    664 ;disp_bytea                Allocated to registers 
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:88: void lcd_bytea(unsigned char disp_bytea) {
                                    667 ;	-----------------------------------------
                                    668 ;	 function lcd_bytea
                                    669 ;	-----------------------------------------
      00016C                        670 _lcd_bytea:
      00016C 85 82 A0         [24]  671 	mov	_P2,dpl
                                    672 ;	main.c:90: rs = 1;  // Chế độ gửi dữ liệu
                                    673 ;	assignBit
      00016F D2 87            [12]  674 	setb	_rs
                                    675 ;	main.c:91: rw = 0;  // Che do ghi
                                    676 ;	assignBit
      000171 C2 86            [12]  677 	clr	_rw
                                    678 ;	main.c:93: en = 1;
                                    679 ;	assignBit
      000173 D2 85            [12]  680 	setb	_en
                                    681 ;	main.c:94: delay_ms(1);
      000175 90 00 01         [24]  682 	mov	dptr,#(0x01&0x00ff)
      000178 E4               [12]  683 	clr	a
      000179 F5 F0            [12]  684 	mov	b,a
      00017B 12 00 74         [24]  685 	lcall	_delay_ms
                                    686 ;	main.c:95: en = 0;
                                    687 ;	assignBit
      00017E C2 85            [12]  688 	clr	_en
                                    689 ;	main.c:97: Wait_For_LCD();
      000180 12 01 49         [24]  690 	lcall	_Wait_For_LCD
                                    691 ;	main.c:98: en = 1;
                                    692 ;	assignBit
      000183 D2 85            [12]  693 	setb	_en
                                    694 ;	main.c:99: }
      000185 22               [24]  695 	ret
                                    696 ;------------------------------------------------------------
                                    697 ;Allocation info for local variables in function 'lcd_init'
                                    698 ;------------------------------------------------------------
                                    699 ;	main.c:102: void lcd_init() {
                                    700 ;	-----------------------------------------
                                    701 ;	 function lcd_init
                                    702 ;	-----------------------------------------
      000186                        703 _lcd_init:
                                    704 ;	main.c:103: P0 = 0xFF;
      000186 75 80 FF         [24]  705 	mov	_P0,#0xff
                                    706 ;	main.c:104: lcd_cmd(0x38);  // Sử dụng 2 dòng và ma trận 5x7 cho mỗi ký tự trên LCD
      000189 75 82 38         [24]  707 	mov	dpl,#0x38
      00018C 12 01 52         [24]  708 	lcall	_lcd_cmd
                                    709 ;	main.c:105: lcd_cmd(0x0C);  // Tắt con trỏ
      00018F 75 82 0C         [24]  710 	mov	dpl,#0x0c
      000192 12 01 52         [24]  711 	lcall	_lcd_cmd
                                    712 ;	main.c:106: lcd_cmd(0x01);  // Xóa màn hình LCD
      000195 75 82 01         [24]  713 	mov	dpl,#0x01
      000198 12 01 52         [24]  714 	lcall	_lcd_cmd
                                    715 ;	main.c:107: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
      00019B 75 82 80         [24]  716 	mov	dpl,#0x80
                                    717 ;	main.c:108: }
      00019E 02 01 52         [24]  718 	ljmp	_lcd_cmd
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'display_str_lcd1602'
                                    721 ;------------------------------------------------------------
                                    722 ;line                      Allocated with name '_display_str_lcd1602_PARM_2'
                                    723 ;conti                     Allocated with name '_display_str_lcd1602_PARM_3'
                                    724 ;a                         Allocated with name '_display_str_lcd1602_a_65536_83'
                                    725 ;i                         Allocated to registers r1 r2 
                                    726 ;------------------------------------------------------------
                                    727 ;	main.c:115: void display_str_lcd1602(unsigned char a[], int line, int conti) {
                                    728 ;	-----------------------------------------
                                    729 ;	 function display_str_lcd1602
                                    730 ;	-----------------------------------------
      0001A1                        731 _display_str_lcd1602:
      0001A1 85 82 2B         [24]  732 	mov	_display_str_lcd1602_a_65536_83,dpl
      0001A4 85 83 2C         [24]  733 	mov	(_display_str_lcd1602_a_65536_83 + 1),dph
      0001A7 85 F0 2D         [24]  734 	mov	(_display_str_lcd1602_a_65536_83 + 2),b
                                    735 ;	main.c:118: while (a[i] != '\0') {
      0001AA 74 01            [12]  736 	mov	a,#0x01
      0001AC B5 27 08         [24]  737 	cjne	a,_display_str_lcd1602_PARM_2,00140$
      0001AF 14               [12]  738 	dec	a
      0001B0 B5 28 04         [24]  739 	cjne	a,(_display_str_lcd1602_PARM_2 + 1),00140$
      0001B3 74 01            [12]  740 	mov	a,#0x01
      0001B5 80 01            [24]  741 	sjmp	00141$
      0001B7                        742 00140$:
      0001B7 E4               [12]  743 	clr	a
      0001B8                        744 00141$:
      0001B8 FC               [12]  745 	mov	r4,a
      0001B9 74 02            [12]  746 	mov	a,#0x02
      0001BB B5 27 08         [24]  747 	cjne	a,_display_str_lcd1602_PARM_2,00142$
      0001BE E4               [12]  748 	clr	a
      0001BF B5 28 04         [24]  749 	cjne	a,(_display_str_lcd1602_PARM_2 + 1),00142$
      0001C2 74 01            [12]  750 	mov	a,#0x01
      0001C4 80 01            [24]  751 	sjmp	00143$
      0001C6                        752 00142$:
      0001C6 E4               [12]  753 	clr	a
      0001C7                        754 00143$:
      0001C7 FB               [12]  755 	mov	r3,a
      0001C8 79 00            [12]  756 	mov	r1,#0x00
      0001CA 7A 00            [12]  757 	mov	r2,#0x00
      0001CC                        758 00110$:
      0001CC E9               [12]  759 	mov	a,r1
      0001CD 25 2B            [12]  760 	add	a,_display_str_lcd1602_a_65536_83
      0001CF F8               [12]  761 	mov	r0,a
      0001D0 EA               [12]  762 	mov	a,r2
      0001D1 35 2C            [12]  763 	addc	a,(_display_str_lcd1602_a_65536_83 + 1)
      0001D3 FE               [12]  764 	mov	r6,a
      0001D4 AF 2D            [24]  765 	mov	r7,(_display_str_lcd1602_a_65536_83 + 2)
      0001D6 88 82            [24]  766 	mov	dpl,r0
      0001D8 8E 83            [24]  767 	mov	dph,r6
      0001DA 8F F0            [24]  768 	mov	b,r7
      0001DC 12 14 7F         [24]  769 	lcall	__gptrget
      0001DF 70 01            [24]  770 	jnz	00144$
      0001E1 22               [24]  771 	ret
      0001E2                        772 00144$:
                                    773 ;	main.c:120: if (i == 0 && conti == 0) {
      0001E2 E9               [12]  774 	mov	a,r1
      0001E3 4A               [12]  775 	orl	a,r2
      0001E4 70 58            [24]  776 	jnz	00108$
      0001E6 E5 29            [12]  777 	mov	a,_display_str_lcd1602_PARM_3
      0001E8 45 2A            [12]  778 	orl	a,(_display_str_lcd1602_PARM_3 + 1)
      0001EA 70 52            [24]  779 	jnz	00108$
                                    780 ;	main.c:121: if (line == 1)
      0001EC EC               [12]  781 	mov	a,r4
      0001ED 60 18            [24]  782 	jz	00105$
                                    783 ;	main.c:122: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
      0001EF 75 82 80         [24]  784 	mov	dpl,#0x80
      0001F2 C0 04            [24]  785 	push	ar4
      0001F4 C0 03            [24]  786 	push	ar3
      0001F6 C0 02            [24]  787 	push	ar2
      0001F8 C0 01            [24]  788 	push	ar1
      0001FA 12 01 52         [24]  789 	lcall	_lcd_cmd
      0001FD D0 01            [24]  790 	pop	ar1
      0001FF D0 02            [24]  791 	pop	ar2
      000201 D0 03            [24]  792 	pop	ar3
      000203 D0 04            [24]  793 	pop	ar4
      000205 80 37            [24]  794 	sjmp	00108$
      000207                        795 00105$:
                                    796 ;	main.c:123: else if (line == 2)
      000207 EB               [12]  797 	mov	a,r3
      000208 60 18            [24]  798 	jz	00102$
                                    799 ;	main.c:124: lcd_cmd(0xC0);  // Đặt con trỏ trở về đầu dòng 2
      00020A 75 82 C0         [24]  800 	mov	dpl,#0xc0
      00020D C0 04            [24]  801 	push	ar4
      00020F C0 03            [24]  802 	push	ar3
      000211 C0 02            [24]  803 	push	ar2
      000213 C0 01            [24]  804 	push	ar1
      000215 12 01 52         [24]  805 	lcall	_lcd_cmd
      000218 D0 01            [24]  806 	pop	ar1
      00021A D0 02            [24]  807 	pop	ar2
      00021C D0 03            [24]  808 	pop	ar3
      00021E D0 04            [24]  809 	pop	ar4
      000220 80 1C            [24]  810 	sjmp	00108$
      000222                        811 00102$:
                                    812 ;	main.c:126: lcd_cmd(0x01);  // Xóa màn hình LCD
      000222 75 82 01         [24]  813 	mov	dpl,#0x01
      000225 C0 04            [24]  814 	push	ar4
      000227 C0 03            [24]  815 	push	ar3
      000229 C0 02            [24]  816 	push	ar2
      00022B C0 01            [24]  817 	push	ar1
      00022D 12 01 52         [24]  818 	lcall	_lcd_cmd
                                    819 ;	main.c:127: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
      000230 75 82 80         [24]  820 	mov	dpl,#0x80
      000233 12 01 52         [24]  821 	lcall	_lcd_cmd
      000236 D0 01            [24]  822 	pop	ar1
      000238 D0 02            [24]  823 	pop	ar2
      00023A D0 03            [24]  824 	pop	ar3
      00023C D0 04            [24]  825 	pop	ar4
      00023E                        826 00108$:
                                    827 ;	main.c:130: lcd_bytea(a[i]);  // Gửi ký tự ra màn hình LCD
      00023E E9               [12]  828 	mov	a,r1
      00023F 25 2B            [12]  829 	add	a,_display_str_lcd1602_a_65536_83
      000241 FD               [12]  830 	mov	r5,a
      000242 EA               [12]  831 	mov	a,r2
      000243 35 2C            [12]  832 	addc	a,(_display_str_lcd1602_a_65536_83 + 1)
      000245 FE               [12]  833 	mov	r6,a
      000246 AF 2D            [24]  834 	mov	r7,(_display_str_lcd1602_a_65536_83 + 2)
      000248 8D 82            [24]  835 	mov	dpl,r5
      00024A 8E 83            [24]  836 	mov	dph,r6
      00024C 8F F0            [24]  837 	mov	b,r7
      00024E 12 14 7F         [24]  838 	lcall	__gptrget
      000251 F5 82            [12]  839 	mov	dpl,a
      000253 C0 04            [24]  840 	push	ar4
      000255 C0 03            [24]  841 	push	ar3
      000257 C0 02            [24]  842 	push	ar2
      000259 C0 01            [24]  843 	push	ar1
      00025B 12 01 6C         [24]  844 	lcall	_lcd_bytea
      00025E D0 01            [24]  845 	pop	ar1
      000260 D0 02            [24]  846 	pop	ar2
      000262 D0 03            [24]  847 	pop	ar3
      000264 D0 04            [24]  848 	pop	ar4
                                    849 ;	main.c:131: i++;
      000266 09               [12]  850 	inc	r1
      000267 B9 00 01         [24]  851 	cjne	r1,#0x00,00149$
      00026A 0A               [12]  852 	inc	r2
      00026B                        853 00149$:
                                    854 ;	main.c:133: }
      00026B 02 01 CC         [24]  855 	ljmp	00110$
                                    856 ;------------------------------------------------------------
                                    857 ;Allocation info for local variables in function 'display_char_lcd1602'
                                    858 ;------------------------------------------------------------
                                    859 ;line                      Allocated with name '_display_char_lcd1602_PARM_2'
                                    860 ;conti                     Allocated with name '_display_char_lcd1602_PARM_3'
                                    861 ;a                         Allocated to registers r7 
                                    862 ;------------------------------------------------------------
                                    863 ;	main.c:140: void display_char_lcd1602(unsigned char a, int line, int conti) {
                                    864 ;	-----------------------------------------
                                    865 ;	 function display_char_lcd1602
                                    866 ;	-----------------------------------------
      00026E                        867 _display_char_lcd1602:
      00026E AF 82            [24]  868 	mov	r7,dpl
                                    869 ;	main.c:142: if (conti == 0) {
      000270 E5 30            [12]  870 	mov	a,_display_char_lcd1602_PARM_3
      000272 45 31            [12]  871 	orl	a,(_display_char_lcd1602_PARM_3 + 1)
      000274 70 42            [24]  872 	jnz	00108$
                                    873 ;	main.c:143: if (line == 1)
      000276 74 01            [12]  874 	mov	a,#0x01
      000278 B5 2E 06         [24]  875 	cjne	a,_display_char_lcd1602_PARM_2,00124$
      00027B 14               [12]  876 	dec	a
      00027C B5 2F 02         [24]  877 	cjne	a,(_display_char_lcd1602_PARM_2 + 1),00124$
      00027F 80 02            [24]  878 	sjmp	00125$
      000281                        879 00124$:
      000281 80 0C            [24]  880 	sjmp	00105$
      000283                        881 00125$:
                                    882 ;	main.c:144: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
      000283 75 82 80         [24]  883 	mov	dpl,#0x80
      000286 C0 07            [24]  884 	push	ar7
      000288 12 01 52         [24]  885 	lcall	_lcd_cmd
      00028B D0 07            [24]  886 	pop	ar7
      00028D 80 29            [24]  887 	sjmp	00108$
      00028F                        888 00105$:
                                    889 ;	main.c:145: else if (line == 2)
      00028F 74 02            [12]  890 	mov	a,#0x02
      000291 B5 2E 06         [24]  891 	cjne	a,_display_char_lcd1602_PARM_2,00126$
      000294 E4               [12]  892 	clr	a
      000295 B5 2F 02         [24]  893 	cjne	a,(_display_char_lcd1602_PARM_2 + 1),00126$
      000298 80 02            [24]  894 	sjmp	00127$
      00029A                        895 00126$:
      00029A 80 0C            [24]  896 	sjmp	00102$
      00029C                        897 00127$:
                                    898 ;	main.c:146: lcd_cmd(0xC0);  // Đặt con trỏ trở về đầu dòng 2
      00029C 75 82 C0         [24]  899 	mov	dpl,#0xc0
      00029F C0 07            [24]  900 	push	ar7
      0002A1 12 01 52         [24]  901 	lcall	_lcd_cmd
      0002A4 D0 07            [24]  902 	pop	ar7
      0002A6 80 10            [24]  903 	sjmp	00108$
      0002A8                        904 00102$:
                                    905 ;	main.c:148: lcd_cmd(0x01);  // Xóa màn hình LCD
      0002A8 75 82 01         [24]  906 	mov	dpl,#0x01
      0002AB C0 07            [24]  907 	push	ar7
      0002AD 12 01 52         [24]  908 	lcall	_lcd_cmd
                                    909 ;	main.c:149: lcd_cmd(0x80);  // Đặt con trỏ trở về đầu dòng 1
      0002B0 75 82 80         [24]  910 	mov	dpl,#0x80
      0002B3 12 01 52         [24]  911 	lcall	_lcd_cmd
      0002B6 D0 07            [24]  912 	pop	ar7
      0002B8                        913 00108$:
                                    914 ;	main.c:152: lcd_bytea(a);
      0002B8 8F 82            [24]  915 	mov	dpl,r7
                                    916 ;	main.c:153: }
      0002BA 02 01 6C         [24]  917 	ljmp	_lcd_bytea
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'delay_us_DS18B20'
                                    920 ;------------------------------------------------------------
                                    921 ;time                      Allocated to registers 
                                    922 ;------------------------------------------------------------
                                    923 ;	main.c:158: void delay_us_DS18B20(unsigned int time) {
                                    924 ;	-----------------------------------------
                                    925 ;	 function delay_us_DS18B20
                                    926 ;	-----------------------------------------
      0002BD                        927 _delay_us_DS18B20:
      0002BD AE 82            [24]  928 	mov	r6,dpl
      0002BF AF 83            [24]  929 	mov	r7,dph
                                    930 ;	main.c:160: while (time--)
      0002C1                        931 00101$:
      0002C1 8E 04            [24]  932 	mov	ar4,r6
      0002C3 8F 05            [24]  933 	mov	ar5,r7
      0002C5 1E               [12]  934 	dec	r6
      0002C6 BE FF 01         [24]  935 	cjne	r6,#0xff,00111$
      0002C9 1F               [12]  936 	dec	r7
      0002CA                        937 00111$:
      0002CA EC               [12]  938 	mov	a,r4
      0002CB 4D               [12]  939 	orl	a,r5
      0002CC 70 F3            [24]  940 	jnz	00101$
                                    941 ;	main.c:162: }
      0002CE 22               [24]  942 	ret
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'Init_DS18B20'
                                    945 ;------------------------------------------------------------
                                    946 ;	main.c:165: void Init_DS18B20(void) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function Init_DS18B20
                                    949 ;	-----------------------------------------
      0002CF                        950 _Init_DS18B20:
                                    951 ;	main.c:166: DQ = 1;
                                    952 ;	assignBit
      0002CF D2 B7            [12]  953 	setb	_P3_7
                                    954 ;	main.c:167: delay_us_DS18B20(8);
      0002D1 90 00 08         [24]  955 	mov	dptr,#0x0008
      0002D4 12 02 BD         [24]  956 	lcall	_delay_us_DS18B20
                                    957 ;	main.c:169: DQ = 0;
                                    958 ;	assignBit
      0002D7 C2 B7            [12]  959 	clr	_P3_7
                                    960 ;	main.c:170: delay_us_DS18B20(65);
      0002D9 90 00 41         [24]  961 	mov	dptr,#0x0041
      0002DC 12 02 BD         [24]  962 	lcall	_delay_us_DS18B20
                                    963 ;	main.c:171: DQ = 1;                // Cạnh tăng
                                    964 ;	assignBit
      0002DF D2 B7            [12]  965 	setb	_P3_7
                                    966 ;	main.c:172: delay_us_DS18B20(20);  // Đợi DS18B20 phản hồi
      0002E1 90 00 14         [24]  967 	mov	dptr,#0x0014
                                    968 ;	main.c:173: }
      0002E4 02 02 BD         [24]  969 	ljmp	_delay_us_DS18B20
                                    970 ;------------------------------------------------------------
                                    971 ;Allocation info for local variables in function 'ReadByteFromScratchpad'
                                    972 ;------------------------------------------------------------
                                    973 ;i                         Allocated to registers r6 
                                    974 ;byte                      Allocated to registers r7 
                                    975 ;------------------------------------------------------------
                                    976 ;	main.c:176: unsigned char ReadByteFromScratchpad() {
                                    977 ;	-----------------------------------------
                                    978 ;	 function ReadByteFromScratchpad
                                    979 ;	-----------------------------------------
      0002E7                        980 _ReadByteFromScratchpad:
                                    981 ;	main.c:178: unsigned char byte = 0;
      0002E7 7F 00            [12]  982 	mov	r7,#0x00
                                    983 ;	main.c:179: for (i = 8; i > 0; i--) {
      0002E9 7E 08            [12]  984 	mov	r6,#0x08
      0002EB                        985 00104$:
                                    986 ;	main.c:180: DQ = 0;
                                    987 ;	assignBit
      0002EB C2 B7            [12]  988 	clr	_P3_7
                                    989 ;	main.c:181: byte >>= 1;
      0002ED EF               [12]  990 	mov	a,r7
      0002EE C3               [12]  991 	clr	c
      0002EF 13               [12]  992 	rrc	a
      0002F0 FF               [12]  993 	mov	r7,a
                                    994 ;	main.c:182: DQ = 1;                // The master bus releases the 1-Wire bus
                                    995 ;	assignBit
      0002F1 D2 B7            [12]  996 	setb	_P3_7
                                    997 ;	main.c:183: if (DQ) byte |= 0x80;  // Read 1? Otherwise, Read 0
      0002F3 30 B7 03         [24]  998 	jnb	_P3_7,00102$
      0002F6 43 07 80         [24]  999 	orl	ar7,#0x80
      0002F9                       1000 00102$:
                                   1001 ;	main.c:184: delay_us_DS18B20(4);
      0002F9 90 00 04         [24] 1002 	mov	dptr,#0x0004
      0002FC C0 07            [24] 1003 	push	ar7
      0002FE C0 06            [24] 1004 	push	ar6
      000300 12 02 BD         [24] 1005 	lcall	_delay_us_DS18B20
      000303 D0 06            [24] 1006 	pop	ar6
      000305 D0 07            [24] 1007 	pop	ar7
                                   1008 ;	main.c:179: for (i = 8; i > 0; i--) {
      000307 DE E2            [24] 1009 	djnz	r6,00104$
                                   1010 ;	main.c:186: return (byte);
      000309 8F 82            [24] 1011 	mov	dpl,r7
                                   1012 ;	main.c:187: }
      00030B 22               [24] 1013 	ret
                                   1014 ;------------------------------------------------------------
                                   1015 ;Allocation info for local variables in function 'WriteByteToScratchpad'
                                   1016 ;------------------------------------------------------------
                                   1017 ;byte                      Allocated to registers r7 
                                   1018 ;i                         Allocated to registers r6 
                                   1019 ;------------------------------------------------------------
                                   1020 ;	main.c:190: void WriteByteToScratchpad(unsigned char byte) {
                                   1021 ;	-----------------------------------------
                                   1022 ;	 function WriteByteToScratchpad
                                   1023 ;	-----------------------------------------
      00030C                       1024 _WriteByteToScratchpad:
      00030C AF 82            [24] 1025 	mov	r7,dpl
                                   1026 ;	main.c:192: for (i = 8; i > 0; i--) {
      00030E 7E 08            [12] 1027 	mov	r6,#0x08
      000310                       1028 00102$:
                                   1029 ;	main.c:193: DQ = 0;
                                   1030 ;	assignBit
      000310 C2 B7            [12] 1031 	clr	_P3_7
                                   1032 ;	main.c:194: DQ = byte & 0x01;
      000312 EF               [12] 1033 	mov	a,r7
      000313 54 01            [12] 1034 	anl	a,#0x01
                                   1035 ;	assignBit
      000315 24 FF            [12] 1036 	add	a,#0xff
      000317 92 B7            [24] 1037 	mov	_P3_7,c
                                   1038 ;	main.c:195: delay_us_DS18B20(5);
      000319 90 00 05         [24] 1039 	mov	dptr,#0x0005
      00031C C0 07            [24] 1040 	push	ar7
      00031E C0 06            [24] 1041 	push	ar6
      000320 12 02 BD         [24] 1042 	lcall	_delay_us_DS18B20
      000323 D0 06            [24] 1043 	pop	ar6
      000325 D0 07            [24] 1044 	pop	ar7
                                   1045 ;	main.c:196: DQ = 1;  // The master bus releases the 1-Wire bus
                                   1046 ;	assignBit
      000327 D2 B7            [12] 1047 	setb	_P3_7
                                   1048 ;	main.c:197: byte >>= 1;
      000329 EF               [12] 1049 	mov	a,r7
      00032A C3               [12] 1050 	clr	c
      00032B 13               [12] 1051 	rrc	a
      00032C FF               [12] 1052 	mov	r7,a
                                   1053 ;	main.c:192: for (i = 8; i > 0; i--) {
      00032D DE E1            [24] 1054 	djnz	r6,00102$
                                   1055 ;	main.c:199: }
      00032F 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'ReadTemperature'
                                   1059 ;------------------------------------------------------------
                                   1060 ;Byte0                     Allocated to registers r7 
                                   1061 ;Byte1                     Allocated to registers r6 
                                   1062 ;------------------------------------------------------------
                                   1063 ;	main.c:201: void ReadTemperature(void) {  // Hàm đọc nhiệt độ lưu vào biến temp
                                   1064 ;	-----------------------------------------
                                   1065 ;	 function ReadTemperature
                                   1066 ;	-----------------------------------------
      000330                       1067 _ReadTemperature:
                                   1068 ;	main.c:202: EA = 0;  // Nếu có ngắt thì cấm ngắt để tránh ảnh hưởng quá trình giao tiếp
                                   1069 ;	assignBit
      000330 C2 AF            [12] 1070 	clr	_EA
                                   1071 ;	main.c:205: Init_DS18B20();               // Khởi tạo cảm biến DS18B20
      000332 12 02 CF         [24] 1072 	lcall	_Init_DS18B20
                                   1073 ;	main.c:206: WriteByteToScratchpad(0xCC);  // The master issues Skip ROM [CCh] command
      000335 75 82 CC         [24] 1074 	mov	dpl,#0xcc
      000338 12 03 0C         [24] 1075 	lcall	_WriteByteToScratchpad
                                   1076 ;	main.c:207: WriteByteToScratchpad(0x44);  // Convert T [44h] command. To initiate a temp
      00033B 75 82 44         [24] 1077 	mov	dpl,#0x44
      00033E 12 03 0C         [24] 1078 	lcall	_WriteByteToScratchpad
                                   1079 ;	main.c:209: delay_us_DS18B20(10);
      000341 90 00 0A         [24] 1080 	mov	dptr,#0x000a
      000344 12 02 BD         [24] 1081 	lcall	_delay_us_DS18B20
                                   1082 ;	main.c:210: Init_DS18B20();
      000347 12 02 CF         [24] 1083 	lcall	_Init_DS18B20
                                   1084 ;	main.c:211: WriteByteToScratchpad(0xCC);  // The master issues Skip ROM [CCh] command
      00034A 75 82 CC         [24] 1085 	mov	dpl,#0xcc
      00034D 12 03 0C         [24] 1086 	lcall	_WriteByteToScratchpad
                                   1087 ;	main.c:212: WriteByteToScratchpad(0xBE);  // Read temp value.
      000350 75 82 BE         [24] 1088 	mov	dpl,#0xbe
      000353 12 03 0C         [24] 1089 	lcall	_WriteByteToScratchpad
                                   1090 ;	main.c:214: delay_us_DS18B20(10);
      000356 90 00 0A         [24] 1091 	mov	dptr,#0x000a
      000359 12 02 BD         [24] 1092 	lcall	_delay_us_DS18B20
                                   1093 ;	main.c:215: Byte0 = ReadByteFromScratchpad();  // Read Byte0 of the Scratchpad (low byte
      00035C 12 02 E7         [24] 1094 	lcall	_ReadByteFromScratchpad
      00035F AF 82            [24] 1095 	mov	r7,dpl
                                   1096 ;	main.c:217: Byte1 = ReadByteFromScratchpad();  // Read Byte1 of the Scratchpad (high
      000361 C0 07            [24] 1097 	push	ar7
      000363 12 02 E7         [24] 1098 	lcall	_ReadByteFromScratchpad
      000366 AE 82            [24] 1099 	mov	r6,dpl
      000368 D0 07            [24] 1100 	pop	ar7
                                   1101 ;	main.c:220: temp = ((Byte1 * 256 + Byte0) >> 4);
      00036A 8E 05            [24] 1102 	mov	ar5,r6
      00036C E4               [12] 1103 	clr	a
      00036D FE               [12] 1104 	mov	r6,a
      00036E FC               [12] 1105 	mov	r4,a
      00036F EF               [12] 1106 	mov	a,r7
      000370 2E               [12] 1107 	add	a,r6
      000371 FE               [12] 1108 	mov	r6,a
      000372 EC               [12] 1109 	mov	a,r4
      000373 3D               [12] 1110 	addc	a,r5
      000374 C4               [12] 1111 	swap	a
      000375 CE               [12] 1112 	xch	a,r6
      000376 C4               [12] 1113 	swap	a
      000377 54 0F            [12] 1114 	anl	a,#0x0f
      000379 6E               [12] 1115 	xrl	a,r6
      00037A CE               [12] 1116 	xch	a,r6
      00037B 54 0F            [12] 1117 	anl	a,#0x0f
      00037D CE               [12] 1118 	xch	a,r6
      00037E 6E               [12] 1119 	xrl	a,r6
      00037F CE               [12] 1120 	xch	a,r6
      000380 30 E3 02         [24] 1121 	jnb	acc.3,00103$
      000383 44 F0            [12] 1122 	orl	a,#0xfffffff0
      000385                       1123 00103$:
      000385 8E 20            [24] 1124 	mov	_temp,r6
                                   1125 ;	main.c:222: EA = 1;  // Đọc xong thì cho phép ngắt
                                   1126 ;	assignBit
      000387 D2 AF            [12] 1127 	setb	_EA
                                   1128 ;	main.c:223: }
      000389 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'celsius_to_fahrenheit'
                                   1132 ;------------------------------------------------------------
                                   1133 ;celsius                   Allocated to registers r4 r5 r6 r7 
                                   1134 ;fahrenheit                Allocated to registers r4 r5 r6 r7 
                                   1135 ;------------------------------------------------------------
                                   1136 ;	main.c:229: int celsius_to_fahrenheit(float celsius) {
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function celsius_to_fahrenheit
                                   1139 ;	-----------------------------------------
      00038A                       1140 _celsius_to_fahrenheit:
      00038A AC 82            [24] 1141 	mov	r4,dpl
      00038C AD 83            [24] 1142 	mov	r5,dph
      00038E AE F0            [24] 1143 	mov	r6,b
      000390 FF               [12] 1144 	mov	r7,a
                                   1145 ;	main.c:230: float fahrenheit = (celsius * 9 / 5) + 32;
      000391 C0 04            [24] 1146 	push	ar4
      000393 C0 05            [24] 1147 	push	ar5
      000395 C0 06            [24] 1148 	push	ar6
      000397 C0 07            [24] 1149 	push	ar7
      000399 90 00 00         [24] 1150 	mov	dptr,#0x0000
      00039C 75 F0 10         [24] 1151 	mov	b,#0x10
      00039F 74 41            [12] 1152 	mov	a,#0x41
      0003A1 12 08 43         [24] 1153 	lcall	___fsmul
      0003A4 AC 82            [24] 1154 	mov	r4,dpl
      0003A6 AD 83            [24] 1155 	mov	r5,dph
      0003A8 AE F0            [24] 1156 	mov	r6,b
      0003AA FF               [12] 1157 	mov	r7,a
      0003AB E5 81            [12] 1158 	mov	a,sp
      0003AD 24 FC            [12] 1159 	add	a,#0xfc
      0003AF F5 81            [12] 1160 	mov	sp,a
      0003B1 E4               [12] 1161 	clr	a
      0003B2 C0 E0            [24] 1162 	push	acc
      0003B4 C0 E0            [24] 1163 	push	acc
      0003B6 74 A0            [12] 1164 	mov	a,#0xa0
      0003B8 C0 E0            [24] 1165 	push	acc
      0003BA 74 40            [12] 1166 	mov	a,#0x40
      0003BC C0 E0            [24] 1167 	push	acc
      0003BE 8C 82            [24] 1168 	mov	dpl,r4
      0003C0 8D 83            [24] 1169 	mov	dph,r5
      0003C2 8E F0            [24] 1170 	mov	b,r6
      0003C4 EF               [12] 1171 	mov	a,r7
      0003C5 12 13 BC         [24] 1172 	lcall	___fsdiv
      0003C8 AC 82            [24] 1173 	mov	r4,dpl
      0003CA AD 83            [24] 1174 	mov	r5,dph
      0003CC AE F0            [24] 1175 	mov	r6,b
      0003CE FF               [12] 1176 	mov	r7,a
      0003CF E5 81            [12] 1177 	mov	a,sp
      0003D1 24 FC            [12] 1178 	add	a,#0xfc
      0003D3 F5 81            [12] 1179 	mov	sp,a
      0003D5 E4               [12] 1180 	clr	a
      0003D6 C0 E0            [24] 1181 	push	acc
      0003D8 C0 E0            [24] 1182 	push	acc
      0003DA C0 E0            [24] 1183 	push	acc
      0003DC 74 42            [12] 1184 	mov	a,#0x42
      0003DE C0 E0            [24] 1185 	push	acc
      0003E0 8C 82            [24] 1186 	mov	dpl,r4
      0003E2 8D 83            [24] 1187 	mov	dph,r5
      0003E4 8E F0            [24] 1188 	mov	b,r6
      0003E6 EF               [12] 1189 	mov	a,r7
      0003E7 12 0A 02         [24] 1190 	lcall	___fsadd
      0003EA AC 82            [24] 1191 	mov	r4,dpl
      0003EC AD 83            [24] 1192 	mov	r5,dph
      0003EE AE F0            [24] 1193 	mov	r6,b
      0003F0 FF               [12] 1194 	mov	r7,a
      0003F1 E5 81            [12] 1195 	mov	a,sp
      0003F3 24 FC            [12] 1196 	add	a,#0xfc
      0003F5 F5 81            [12] 1197 	mov	sp,a
                                   1198 ;	main.c:231: if (((int) (fahrenheit * 10) % 10) >= 5) fahrenheit += 1;
      0003F7 C0 07            [24] 1199 	push	ar7
      0003F9 C0 06            [24] 1200 	push	ar6
      0003FB C0 05            [24] 1201 	push	ar5
      0003FD C0 04            [24] 1202 	push	ar4
      0003FF C0 04            [24] 1203 	push	ar4
      000401 C0 05            [24] 1204 	push	ar5
      000403 C0 06            [24] 1205 	push	ar6
      000405 C0 07            [24] 1206 	push	ar7
      000407 90 00 00         [24] 1207 	mov	dptr,#0x0000
      00040A 75 F0 20         [24] 1208 	mov	b,#0x20
      00040D 74 41            [12] 1209 	mov	a,#0x41
      00040F 12 08 43         [24] 1210 	lcall	___fsmul
      000412 A8 82            [24] 1211 	mov	r0,dpl
      000414 A9 83            [24] 1212 	mov	r1,dph
      000416 AA F0            [24] 1213 	mov	r2,b
      000418 FB               [12] 1214 	mov	r3,a
      000419 E5 81            [12] 1215 	mov	a,sp
      00041B 24 FC            [12] 1216 	add	a,#0xfc
      00041D F5 81            [12] 1217 	mov	sp,a
      00041F 88 82            [24] 1218 	mov	dpl,r0
      000421 89 83            [24] 1219 	mov	dph,r1
      000423 8A F0            [24] 1220 	mov	b,r2
      000425 EB               [12] 1221 	mov	a,r3
      000426 12 0B F6         [24] 1222 	lcall	___fs2sint
      000429 75 77 0A         [24] 1223 	mov	__modsint_PARM_2,#0x0a
      00042C 75 78 00         [24] 1224 	mov	(__modsint_PARM_2 + 1),#0x00
      00042F 12 14 9B         [24] 1225 	lcall	__modsint
      000432 AA 82            [24] 1226 	mov	r2,dpl
      000434 AB 83            [24] 1227 	mov	r3,dph
      000436 D0 04            [24] 1228 	pop	ar4
      000438 D0 05            [24] 1229 	pop	ar5
      00043A D0 06            [24] 1230 	pop	ar6
      00043C D0 07            [24] 1231 	pop	ar7
      00043E C3               [12] 1232 	clr	c
      00043F EA               [12] 1233 	mov	a,r2
      000440 94 05            [12] 1234 	subb	a,#0x05
      000442 EB               [12] 1235 	mov	a,r3
      000443 64 80            [12] 1236 	xrl	a,#0x80
      000445 94 80            [12] 1237 	subb	a,#0x80
      000447 40 24            [24] 1238 	jc	00102$
      000449 E4               [12] 1239 	clr	a
      00044A C0 E0            [24] 1240 	push	acc
      00044C C0 E0            [24] 1241 	push	acc
      00044E 74 80            [12] 1242 	mov	a,#0x80
      000450 C0 E0            [24] 1243 	push	acc
      000452 74 3F            [12] 1244 	mov	a,#0x3f
      000454 C0 E0            [24] 1245 	push	acc
      000456 8C 82            [24] 1246 	mov	dpl,r4
      000458 8D 83            [24] 1247 	mov	dph,r5
      00045A 8E F0            [24] 1248 	mov	b,r6
      00045C EF               [12] 1249 	mov	a,r7
      00045D 12 0A 02         [24] 1250 	lcall	___fsadd
      000460 AC 82            [24] 1251 	mov	r4,dpl
      000462 AD 83            [24] 1252 	mov	r5,dph
      000464 AE F0            [24] 1253 	mov	r6,b
      000466 FF               [12] 1254 	mov	r7,a
      000467 E5 81            [12] 1255 	mov	a,sp
      000469 24 FC            [12] 1256 	add	a,#0xfc
      00046B F5 81            [12] 1257 	mov	sp,a
      00046D                       1258 00102$:
                                   1259 ;	main.c:232: return fahrenheit;
      00046D 8C 82            [24] 1260 	mov	dpl,r4
      00046F 8D 83            [24] 1261 	mov	dph,r5
      000471 8E F0            [24] 1262 	mov	b,r6
      000473 EF               [12] 1263 	mov	a,r7
                                   1264 ;	main.c:233: }
      000474 02 0B F6         [24] 1265 	ljmp	___fs2sint
                                   1266 ;------------------------------------------------------------
                                   1267 ;Allocation info for local variables in function 'convert'
                                   1268 ;------------------------------------------------------------
                                   1269 ;str                       Allocated with name '_convert_PARM_2'
                                   1270 ;n                         Allocated to registers r6 r7 
                                   1271 ;------------------------------------------------------------
                                   1272 ;	main.c:236: void convert(int n, char *str) {
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function convert
                                   1275 ;	-----------------------------------------
      000477                       1276 _convert:
      000477 AE 82            [24] 1277 	mov	r6,dpl
      000479 AF 83            [24] 1278 	mov	r7,dph
                                   1279 ;	main.c:237: if (isFahrenheit) n = celsius_to_fahrenheit(n);
      00047B E5 21            [12] 1280 	mov	a,_isFahrenheit
      00047D 45 22            [12] 1281 	orl	a,(_isFahrenheit + 1)
      00047F 60 0E            [24] 1282 	jz	00102$
      000481 8E 82            [24] 1283 	mov	dpl,r6
      000483 8F 83            [24] 1284 	mov	dph,r7
      000485 12 0C 2A         [24] 1285 	lcall	___sint2fs
      000488 12 03 8A         [24] 1286 	lcall	_celsius_to_fahrenheit
      00048B AE 82            [24] 1287 	mov	r6,dpl
      00048D AF 83            [24] 1288 	mov	r7,dph
      00048F                       1289 00102$:
                                   1290 ;	main.c:238: sprintf(str, "%d", n);
      00048F C0 06            [24] 1291 	push	ar6
      000491 C0 07            [24] 1292 	push	ar7
      000493 74 CD            [12] 1293 	mov	a,#___str_0
      000495 C0 E0            [24] 1294 	push	acc
      000497 74 15            [12] 1295 	mov	a,#(___str_0 >> 8)
      000499 C0 E0            [24] 1296 	push	acc
      00049B 74 80            [12] 1297 	mov	a,#0x80
      00049D C0 E0            [24] 1298 	push	acc
      00049F C0 32            [24] 1299 	push	_convert_PARM_2
      0004A1 C0 33            [24] 1300 	push	(_convert_PARM_2 + 1)
      0004A3 C0 34            [24] 1301 	push	(_convert_PARM_2 + 2)
      0004A5 12 0B A9         [24] 1302 	lcall	_sprintf
      0004A8 E5 81            [12] 1303 	mov	a,sp
      0004AA 24 F8            [12] 1304 	add	a,#0xf8
      0004AC F5 81            [12] 1305 	mov	sp,a
                                   1306 ;	main.c:239: }
      0004AE 22               [24] 1307 	ret
                                   1308 ;------------------------------------------------------------
                                   1309 ;Allocation info for local variables in function 'main'
                                   1310 ;------------------------------------------------------------
                                   1311 ;i                         Allocated to registers r6 r7 
                                   1312 ;str                       Allocated with name '_main_str_131073_114'
                                   1313 ;max                       Allocated to registers r6 r7 
                                   1314 ;min                       Allocated with name '_main_min_131073_114'
                                   1315 ;i                         Allocated to registers r2 r3 
                                   1316 ;------------------------------------------------------------
                                   1317 ;	main.c:242: void main() {
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function main
                                   1320 ;	-----------------------------------------
      0004AF                       1321 _main:
                                   1322 ;	main.c:243: lcd_init();        // Khởi tạo LCD
      0004AF 12 01 86         [24] 1323 	lcall	_lcd_init
                                   1324 ;	main.c:244: initilize_int0();  // Khởi tạo ngắt ngoài 0
      0004B2 12 01 27         [24] 1325 	lcall	_initilize_int0
                                   1326 ;	main.c:247: ReadTemperature();
      0004B5 12 03 30         [24] 1327 	lcall	_ReadTemperature
                                   1328 ;	main.c:248: delay_ms(1000);
      0004B8 90 03 E8         [24] 1329 	mov	dptr,#0x03e8
      0004BB E4               [12] 1330 	clr	a
      0004BC F5 F0            [12] 1331 	mov	b,a
      0004BE 12 00 74         [24] 1332 	lcall	_delay_ms
                                   1333 ;	main.c:251: ReadTemperature();  // Đọc nhiệt độ từ DS18B20
      0004C1 12 03 30         [24] 1334 	lcall	_ReadTemperature
                                   1335 ;	main.c:252: for (int i = 0; i < 10; i++) {
      0004C4 7E 00            [12] 1336 	mov	r6,#0x00
      0004C6 7F 00            [12] 1337 	mov	r7,#0x00
      0004C8                       1338 00120$:
      0004C8 C3               [12] 1339 	clr	c
      0004C9 EE               [12] 1340 	mov	a,r6
      0004CA 94 0A            [12] 1341 	subb	a,#0x0a
      0004CC EF               [12] 1342 	mov	a,r7
      0004CD 64 80            [12] 1343 	xrl	a,#0x80
      0004CF 94 80            [12] 1344 	subb	a,#0x80
      0004D1 50 5B            [24] 1345 	jnc	00117$
                                   1346 ;	main.c:253: currentTempIndex = (currentTempIndex + 1) % 11;
      0004D3 85 1E 82         [24] 1347 	mov	dpl,_currentTempIndex
      0004D6 85 1F 83         [24] 1348 	mov	dph,(_currentTempIndex + 1)
      0004D9 A3               [24] 1349 	inc	dptr
      0004DA 75 77 0B         [24] 1350 	mov	__modsint_PARM_2,#0x0b
      0004DD 75 78 00         [24] 1351 	mov	(__modsint_PARM_2 + 1),#0x00
      0004E0 C0 07            [24] 1352 	push	ar7
      0004E2 C0 06            [24] 1353 	push	ar6
      0004E4 12 14 9B         [24] 1354 	lcall	__modsint
      0004E7 85 82 1E         [24] 1355 	mov	_currentTempIndex,dpl
      0004EA 85 83 1F         [24] 1356 	mov	(_currentTempIndex + 1),dph
      0004ED D0 06            [24] 1357 	pop	ar6
      0004EF D0 07            [24] 1358 	pop	ar7
                                   1359 ;	main.c:255: if (temp <= 128)
      0004F1 E5 20            [12] 1360 	mov	a,_temp
      0004F3 24 7F            [12] 1361 	add	a,#0xff - 0x80
      0004F5 40 18            [24] 1362 	jc	00102$
                                   1363 ;	main.c:256: tempArr[currentTempIndex] = temp;
      0004F7 E5 1E            [12] 1364 	mov	a,_currentTempIndex
      0004F9 25 1E            [12] 1365 	add	a,_currentTempIndex
      0004FB FC               [12] 1366 	mov	r4,a
      0004FC E5 1F            [12] 1367 	mov	a,(_currentTempIndex + 1)
      0004FE 33               [12] 1368 	rlc	a
      0004FF EC               [12] 1369 	mov	a,r4
      000500 24 08            [12] 1370 	add	a,#_tempArr
      000502 F9               [12] 1371 	mov	r1,a
      000503 AC 20            [24] 1372 	mov	r4,_temp
      000505 7D 00            [12] 1373 	mov	r5,#0x00
      000507 A7 04            [24] 1374 	mov	@r1,ar4
      000509 09               [12] 1375 	inc	r1
      00050A A7 05            [24] 1376 	mov	@r1,ar5
      00050C 19               [12] 1377 	dec	r1
      00050D 80 18            [24] 1378 	sjmp	00121$
      00050F                       1379 00102$:
                                   1380 ;	main.c:258: tempArr[currentTempIndex] = temp - 256;
      00050F E5 1E            [12] 1381 	mov	a,_currentTempIndex
      000511 25 1E            [12] 1382 	add	a,_currentTempIndex
      000513 FC               [12] 1383 	mov	r4,a
      000514 E5 1F            [12] 1384 	mov	a,(_currentTempIndex + 1)
      000516 33               [12] 1385 	rlc	a
      000517 EC               [12] 1386 	mov	a,r4
      000518 24 08            [12] 1387 	add	a,#_tempArr
      00051A F9               [12] 1388 	mov	r1,a
      00051B AC 20            [24] 1389 	mov	r4,_temp
      00051D E4               [12] 1390 	clr	a
      00051E 24 FF            [12] 1391 	add	a,#0xff
      000520 FD               [12] 1392 	mov	r5,a
      000521 A7 04            [24] 1393 	mov	@r1,ar4
      000523 09               [12] 1394 	inc	r1
      000524 A7 05            [24] 1395 	mov	@r1,ar5
      000526 19               [12] 1396 	dec	r1
      000527                       1397 00121$:
                                   1398 ;	main.c:252: for (int i = 0; i < 10; i++) {
      000527 0E               [12] 1399 	inc	r6
                                   1400 ;	main.c:261: while (1) {
      000528 BE 00 9D         [24] 1401 	cjne	r6,#0x00,00120$
      00052B 0F               [12] 1402 	inc	r7
      00052C 80 9A            [24] 1403 	sjmp	00120$
      00052E                       1404 00117$:
                                   1405 ;	main.c:262: currentTempIndex = (currentTempIndex + 1) % 11;
      00052E 85 1E 82         [24] 1406 	mov	dpl,_currentTempIndex
      000531 85 1F 83         [24] 1407 	mov	dph,(_currentTempIndex + 1)
      000534 A3               [24] 1408 	inc	dptr
      000535 75 77 0B         [24] 1409 	mov	__modsint_PARM_2,#0x0b
      000538 75 78 00         [24] 1410 	mov	(__modsint_PARM_2 + 1),#0x00
      00053B 12 14 9B         [24] 1411 	lcall	__modsint
      00053E 85 82 1E         [24] 1412 	mov	_currentTempIndex,dpl
      000541 85 83 1F         [24] 1413 	mov	(_currentTempIndex + 1),dph
                                   1414 ;	main.c:263: ReadTemperature();  // Đọc nhiệt độ từ DS18B20
      000544 12 03 30         [24] 1415 	lcall	_ReadTemperature
                                   1416 ;	main.c:265: if (temp <= 128)
      000547 E5 20            [12] 1417 	mov	a,_temp
      000549 24 7F            [12] 1418 	add	a,#0xff - 0x80
      00054B 40 18            [24] 1419 	jc	00106$
                                   1420 ;	main.c:266: tempArr[currentTempIndex] = temp;
      00054D E5 1E            [12] 1421 	mov	a,_currentTempIndex
      00054F 25 1E            [12] 1422 	add	a,_currentTempIndex
      000551 FE               [12] 1423 	mov	r6,a
      000552 E5 1F            [12] 1424 	mov	a,(_currentTempIndex + 1)
      000554 33               [12] 1425 	rlc	a
      000555 EE               [12] 1426 	mov	a,r6
      000556 24 08            [12] 1427 	add	a,#_tempArr
      000558 F9               [12] 1428 	mov	r1,a
      000559 AE 20            [24] 1429 	mov	r6,_temp
      00055B 7F 00            [12] 1430 	mov	r7,#0x00
      00055D A7 06            [24] 1431 	mov	@r1,ar6
      00055F 09               [12] 1432 	inc	r1
      000560 A7 07            [24] 1433 	mov	@r1,ar7
      000562 19               [12] 1434 	dec	r1
      000563 80 18            [24] 1435 	sjmp	00107$
      000565                       1436 00106$:
                                   1437 ;	main.c:268: tempArr[currentTempIndex] = temp - 256;
      000565 E5 1E            [12] 1438 	mov	a,_currentTempIndex
      000567 25 1E            [12] 1439 	add	a,_currentTempIndex
      000569 FE               [12] 1440 	mov	r6,a
      00056A E5 1F            [12] 1441 	mov	a,(_currentTempIndex + 1)
      00056C 33               [12] 1442 	rlc	a
      00056D EE               [12] 1443 	mov	a,r6
      00056E 24 08            [12] 1444 	add	a,#_tempArr
      000570 F9               [12] 1445 	mov	r1,a
      000571 AE 20            [24] 1446 	mov	r6,_temp
      000573 E4               [12] 1447 	clr	a
      000574 24 FF            [12] 1448 	add	a,#0xff
      000576 FF               [12] 1449 	mov	r7,a
      000577 A7 06            [24] 1450 	mov	@r1,ar6
      000579 09               [12] 1451 	inc	r1
      00057A A7 07            [24] 1452 	mov	@r1,ar7
      00057C 19               [12] 1453 	dec	r1
      00057D                       1454 00107$:
                                   1455 ;	main.c:272: int max = -1000, min = 1000, i;
      00057D 7E 18            [12] 1456 	mov	r6,#0x18
      00057F 7F FC            [12] 1457 	mov	r7,#0xfc
      000581 75 3F E8         [24] 1458 	mov	_main_min_131073_114,#0xe8
      000584 75 40 03         [24] 1459 	mov	(_main_min_131073_114 + 1),#0x03
                                   1460 ;	main.c:273: for (i = 1; i <= 10; i++) {
      000587 7A 01            [12] 1461 	mov	r2,#0x01
      000589 7B 00            [12] 1462 	mov	r3,#0x00
      00058B                       1463 00122$:
                                   1464 ;	main.c:274: if (tempArr[i] < min) min = tempArr[i];
      00058B EA               [12] 1465 	mov	a,r2
      00058C 2A               [12] 1466 	add	a,r2
      00058D FC               [12] 1467 	mov	r4,a
      00058E EB               [12] 1468 	mov	a,r3
      00058F 33               [12] 1469 	rlc	a
      000590 EC               [12] 1470 	mov	a,r4
      000591 24 08            [12] 1471 	add	a,#_tempArr
      000593 F9               [12] 1472 	mov	r1,a
      000594 87 04            [24] 1473 	mov	ar4,@r1
      000596 09               [12] 1474 	inc	r1
      000597 87 05            [24] 1475 	mov	ar5,@r1
      000599 19               [12] 1476 	dec	r1
      00059A C3               [12] 1477 	clr	c
      00059B EC               [12] 1478 	mov	a,r4
      00059C 95 3F            [12] 1479 	subb	a,_main_min_131073_114
      00059E ED               [12] 1480 	mov	a,r5
      00059F 64 80            [12] 1481 	xrl	a,#0x80
      0005A1 85 40 F0         [24] 1482 	mov	b,(_main_min_131073_114 + 1)
      0005A4 63 F0 80         [24] 1483 	xrl	b,#0x80
      0005A7 95 F0            [12] 1484 	subb	a,b
      0005A9 50 04            [24] 1485 	jnc	00109$
      0005AB 8C 3F            [24] 1486 	mov	_main_min_131073_114,r4
      0005AD 8D 40            [24] 1487 	mov	(_main_min_131073_114 + 1),r5
      0005AF                       1488 00109$:
                                   1489 ;	main.c:275: if (tempArr[i] > max) max = tempArr[i];
      0005AF EA               [12] 1490 	mov	a,r2
      0005B0 2A               [12] 1491 	add	a,r2
      0005B1 FC               [12] 1492 	mov	r4,a
      0005B2 EB               [12] 1493 	mov	a,r3
      0005B3 33               [12] 1494 	rlc	a
      0005B4 EC               [12] 1495 	mov	a,r4
      0005B5 24 08            [12] 1496 	add	a,#_tempArr
      0005B7 F9               [12] 1497 	mov	r1,a
      0005B8 87 04            [24] 1498 	mov	ar4,@r1
      0005BA 09               [12] 1499 	inc	r1
      0005BB 87 05            [24] 1500 	mov	ar5,@r1
      0005BD 19               [12] 1501 	dec	r1
      0005BE C3               [12] 1502 	clr	c
      0005BF EE               [12] 1503 	mov	a,r6
      0005C0 9C               [12] 1504 	subb	a,r4
      0005C1 EF               [12] 1505 	mov	a,r7
      0005C2 64 80            [12] 1506 	xrl	a,#0x80
      0005C4 8D F0            [24] 1507 	mov	b,r5
      0005C6 63 F0 80         [24] 1508 	xrl	b,#0x80
      0005C9 95 F0            [12] 1509 	subb	a,b
      0005CB 50 04            [24] 1510 	jnc	00123$
      0005CD 8C 06            [24] 1511 	mov	ar6,r4
      0005CF 8D 07            [24] 1512 	mov	ar7,r5
      0005D1                       1513 00123$:
                                   1514 ;	main.c:273: for (i = 1; i <= 10; i++) {
      0005D1 0A               [12] 1515 	inc	r2
      0005D2 BA 00 01         [24] 1516 	cjne	r2,#0x00,00174$
      0005D5 0B               [12] 1517 	inc	r3
      0005D6                       1518 00174$:
      0005D6 C3               [12] 1519 	clr	c
      0005D7 74 0A            [12] 1520 	mov	a,#0x0a
      0005D9 9A               [12] 1521 	subb	a,r2
      0005DA 74 80            [12] 1522 	mov	a,#(0x00 ^ 0x80)
      0005DC 8B F0            [24] 1523 	mov	b,r3
      0005DE 63 F0 80         [24] 1524 	xrl	b,#0x80
      0005E1 95 F0            [12] 1525 	subb	a,b
      0005E3 50 A6            [24] 1526 	jnc	00122$
                                   1527 ;	main.c:279: display_str_lcd1602("Cur Temp: ", 1, 0);
      0005E5 75 27 01         [24] 1528 	mov	_display_str_lcd1602_PARM_2,#0x01
      0005E8 E4               [12] 1529 	clr	a
      0005E9 F5 28            [12] 1530 	mov	(_display_str_lcd1602_PARM_2 + 1),a
      0005EB F5 29            [12] 1531 	mov	_display_str_lcd1602_PARM_3,a
      0005ED F5 2A            [12] 1532 	mov	(_display_str_lcd1602_PARM_3 + 1),a
      0005EF 90 15 D0         [24] 1533 	mov	dptr,#___str_1
      0005F2 75 F0 80         [24] 1534 	mov	b,#0x80
      0005F5 C0 07            [24] 1535 	push	ar7
      0005F7 C0 06            [24] 1536 	push	ar6
      0005F9 12 01 A1         [24] 1537 	lcall	_display_str_lcd1602
                                   1538 ;	main.c:281: convert(tempArr[currentTempIndex], str);
      0005FC E5 1E            [12] 1539 	mov	a,_currentTempIndex
      0005FE 25 1E            [12] 1540 	add	a,_currentTempIndex
      000600 FC               [12] 1541 	mov	r4,a
      000601 E5 1F            [12] 1542 	mov	a,(_currentTempIndex + 1)
      000603 33               [12] 1543 	rlc	a
      000604 EC               [12] 1544 	mov	a,r4
      000605 24 08            [12] 1545 	add	a,#_tempArr
      000607 F9               [12] 1546 	mov	r1,a
      000608 87 82            [24] 1547 	mov	dpl,@r1
      00060A 09               [12] 1548 	inc	r1
      00060B 87 83            [24] 1549 	mov	dph,@r1
      00060D 19               [12] 1550 	dec	r1
      00060E 75 32 35         [24] 1551 	mov	_convert_PARM_2,#_main_str_131073_114
      000611 75 33 00         [24] 1552 	mov	(_convert_PARM_2 + 1),#0x00
      000614 75 34 40         [24] 1553 	mov	(_convert_PARM_2 + 2),#0x40
      000617 12 04 77         [24] 1554 	lcall	_convert
      00061A D0 06            [24] 1555 	pop	ar6
      00061C D0 07            [24] 1556 	pop	ar7
                                   1557 ;	main.c:282: display_str_lcd1602(str, 2, 1);
      00061E 75 27 02         [24] 1558 	mov	_display_str_lcd1602_PARM_2,#0x02
      000621 75 28 00         [24] 1559 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      000624 75 29 01         [24] 1560 	mov	_display_str_lcd1602_PARM_3,#0x01
      000627 75 2A 00         [24] 1561 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      00062A 90 00 35         [24] 1562 	mov	dptr,#_main_str_131073_114
      00062D 75 F0 40         [24] 1563 	mov	b,#0x40
      000630 C0 07            [24] 1564 	push	ar7
      000632 C0 06            [24] 1565 	push	ar6
      000634 12 01 A1         [24] 1566 	lcall	_display_str_lcd1602
      000637 D0 06            [24] 1567 	pop	ar6
      000639 D0 07            [24] 1568 	pop	ar7
                                   1569 ;	main.c:284: display_char_lcd1602(0xDF, 1, 1);  // Hiển thị ký tự độ
      00063B 75 2E 01         [24] 1570 	mov	_display_char_lcd1602_PARM_2,#0x01
      00063E 75 2F 00         [24] 1571 	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
      000641 75 30 01         [24] 1572 	mov	_display_char_lcd1602_PARM_3,#0x01
      000644 75 31 00         [24] 1573 	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
      000647 75 82 DF         [24] 1574 	mov	dpl,#0xdf
      00064A C0 07            [24] 1575 	push	ar7
      00064C C0 06            [24] 1576 	push	ar6
      00064E 12 02 6E         [24] 1577 	lcall	_display_char_lcd1602
      000651 D0 06            [24] 1578 	pop	ar6
      000653 D0 07            [24] 1579 	pop	ar7
                                   1580 ;	main.c:285: if (isFahrenheit)
      000655 E5 21            [12] 1581 	mov	a,_isFahrenheit
      000657 45 22            [12] 1582 	orl	a,(_isFahrenheit + 1)
      000659 60 1C            [24] 1583 	jz	00114$
                                   1584 ;	main.c:286: display_char_lcd1602('F', 1, 1);
      00065B 75 2E 01         [24] 1585 	mov	_display_char_lcd1602_PARM_2,#0x01
      00065E 75 2F 00         [24] 1586 	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
      000661 75 30 01         [24] 1587 	mov	_display_char_lcd1602_PARM_3,#0x01
      000664 75 31 00         [24] 1588 	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
      000667 75 82 46         [24] 1589 	mov	dpl,#0x46
      00066A C0 07            [24] 1590 	push	ar7
      00066C C0 06            [24] 1591 	push	ar6
      00066E 12 02 6E         [24] 1592 	lcall	_display_char_lcd1602
      000671 D0 06            [24] 1593 	pop	ar6
      000673 D0 07            [24] 1594 	pop	ar7
      000675 80 1A            [24] 1595 	sjmp	00115$
      000677                       1596 00114$:
                                   1597 ;	main.c:288: display_char_lcd1602('C', 1, 1);
      000677 75 2E 01         [24] 1598 	mov	_display_char_lcd1602_PARM_2,#0x01
      00067A 75 2F 00         [24] 1599 	mov	(_display_char_lcd1602_PARM_2 + 1),#0x00
      00067D 75 30 01         [24] 1600 	mov	_display_char_lcd1602_PARM_3,#0x01
      000680 75 31 00         [24] 1601 	mov	(_display_char_lcd1602_PARM_3 + 1),#0x00
      000683 75 82 43         [24] 1602 	mov	dpl,#0x43
      000686 C0 07            [24] 1603 	push	ar7
      000688 C0 06            [24] 1604 	push	ar6
      00068A 12 02 6E         [24] 1605 	lcall	_display_char_lcd1602
      00068D D0 06            [24] 1606 	pop	ar6
      00068F D0 07            [24] 1607 	pop	ar7
      000691                       1608 00115$:
                                   1609 ;	main.c:289: display_str_lcd1602("      ", 1, 1);  // Xóa các ký tự thừa ở cuối dòng
      000691 75 27 01         [24] 1610 	mov	_display_str_lcd1602_PARM_2,#0x01
      000694 75 28 00         [24] 1611 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      000697 75 29 01         [24] 1612 	mov	_display_str_lcd1602_PARM_3,#0x01
      00069A 75 2A 00         [24] 1613 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      00069D 90 15 DB         [24] 1614 	mov	dptr,#___str_2
      0006A0 75 F0 80         [24] 1615 	mov	b,#0x80
      0006A3 C0 07            [24] 1616 	push	ar7
      0006A5 C0 06            [24] 1617 	push	ar6
      0006A7 12 01 A1         [24] 1618 	lcall	_display_str_lcd1602
      0006AA D0 06            [24] 1619 	pop	ar6
      0006AC D0 07            [24] 1620 	pop	ar7
                                   1621 ;	main.c:292: display_str_lcd1602("L: ", 2, 0);
      0006AE 75 27 02         [24] 1622 	mov	_display_str_lcd1602_PARM_2,#0x02
      0006B1 E4               [12] 1623 	clr	a
      0006B2 F5 28            [12] 1624 	mov	(_display_str_lcd1602_PARM_2 + 1),a
      0006B4 F5 29            [12] 1625 	mov	_display_str_lcd1602_PARM_3,a
      0006B6 F5 2A            [12] 1626 	mov	(_display_str_lcd1602_PARM_3 + 1),a
      0006B8 90 15 E2         [24] 1627 	mov	dptr,#___str_3
      0006BB 75 F0 80         [24] 1628 	mov	b,#0x80
      0006BE C0 07            [24] 1629 	push	ar7
      0006C0 C0 06            [24] 1630 	push	ar6
      0006C2 12 01 A1         [24] 1631 	lcall	_display_str_lcd1602
                                   1632 ;	main.c:295: convert(min, str);
      0006C5 75 32 35         [24] 1633 	mov	_convert_PARM_2,#_main_str_131073_114
      0006C8 75 33 00         [24] 1634 	mov	(_convert_PARM_2 + 1),#0x00
      0006CB 75 34 40         [24] 1635 	mov	(_convert_PARM_2 + 2),#0x40
      0006CE 85 3F 82         [24] 1636 	mov	dpl,_main_min_131073_114
      0006D1 85 40 83         [24] 1637 	mov	dph,(_main_min_131073_114 + 1)
      0006D4 12 04 77         [24] 1638 	lcall	_convert
      0006D7 D0 06            [24] 1639 	pop	ar6
      0006D9 D0 07            [24] 1640 	pop	ar7
                                   1641 ;	main.c:296: display_str_lcd1602(str, 2, 1);
      0006DB 75 27 02         [24] 1642 	mov	_display_str_lcd1602_PARM_2,#0x02
      0006DE 75 28 00         [24] 1643 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      0006E1 75 29 01         [24] 1644 	mov	_display_str_lcd1602_PARM_3,#0x01
      0006E4 75 2A 00         [24] 1645 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      0006E7 90 00 35         [24] 1646 	mov	dptr,#_main_str_131073_114
      0006EA 75 F0 40         [24] 1647 	mov	b,#0x40
      0006ED C0 07            [24] 1648 	push	ar7
      0006EF C0 06            [24] 1649 	push	ar6
      0006F1 12 01 A1         [24] 1650 	lcall	_display_str_lcd1602
      0006F4 D0 06            [24] 1651 	pop	ar6
      0006F6 D0 07            [24] 1652 	pop	ar7
                                   1653 ;	main.c:297: display_str_lcd1602(" H: ", 2, 1);
      0006F8 75 27 02         [24] 1654 	mov	_display_str_lcd1602_PARM_2,#0x02
      0006FB 75 28 00         [24] 1655 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      0006FE 75 29 01         [24] 1656 	mov	_display_str_lcd1602_PARM_3,#0x01
      000701 75 2A 00         [24] 1657 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      000704 90 15 E6         [24] 1658 	mov	dptr,#___str_4
      000707 75 F0 80         [24] 1659 	mov	b,#0x80
      00070A C0 07            [24] 1660 	push	ar7
      00070C C0 06            [24] 1661 	push	ar6
      00070E 12 01 A1         [24] 1662 	lcall	_display_str_lcd1602
      000711 D0 06            [24] 1663 	pop	ar6
      000713 D0 07            [24] 1664 	pop	ar7
                                   1665 ;	main.c:300: convert(max, str);
      000715 75 32 35         [24] 1666 	mov	_convert_PARM_2,#_main_str_131073_114
      000718 75 33 00         [24] 1667 	mov	(_convert_PARM_2 + 1),#0x00
      00071B 75 34 40         [24] 1668 	mov	(_convert_PARM_2 + 2),#0x40
      00071E 8E 82            [24] 1669 	mov	dpl,r6
      000720 8F 83            [24] 1670 	mov	dph,r7
      000722 12 04 77         [24] 1671 	lcall	_convert
                                   1672 ;	main.c:301: display_str_lcd1602(str, 2, 1);
      000725 75 27 02         [24] 1673 	mov	_display_str_lcd1602_PARM_2,#0x02
      000728 75 28 00         [24] 1674 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      00072B 75 29 01         [24] 1675 	mov	_display_str_lcd1602_PARM_3,#0x01
      00072E 75 2A 00         [24] 1676 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      000731 90 00 35         [24] 1677 	mov	dptr,#_main_str_131073_114
      000734 75 F0 40         [24] 1678 	mov	b,#0x40
      000737 12 01 A1         [24] 1679 	lcall	_display_str_lcd1602
                                   1680 ;	main.c:302: display_str_lcd1602("       ", 2, 1);  // Xóa các ký tự thừa ở cuối dòng
      00073A 75 27 02         [24] 1681 	mov	_display_str_lcd1602_PARM_2,#0x02
      00073D 75 28 00         [24] 1682 	mov	(_display_str_lcd1602_PARM_2 + 1),#0x00
      000740 75 29 01         [24] 1683 	mov	_display_str_lcd1602_PARM_3,#0x01
      000743 75 2A 00         [24] 1684 	mov	(_display_str_lcd1602_PARM_3 + 1),#0x00
      000746 90 15 EB         [24] 1685 	mov	dptr,#___str_5
      000749 75 F0 80         [24] 1686 	mov	b,#0x80
      00074C 12 01 A1         [24] 1687 	lcall	_display_str_lcd1602
                                   1688 ;	main.c:303: delay_ms(1000);                        // for every 6s.
      00074F 90 03 E8         [24] 1689 	mov	dptr,#0x03e8
      000752 E4               [12] 1690 	clr	a
      000753 F5 F0            [12] 1691 	mov	b,a
      000755 12 00 74         [24] 1692 	lcall	_delay_ms
                                   1693 ;	main.c:305: }
      000758 02 05 2E         [24] 1694 	ljmp	00117$
                                   1695 	.area CSEG    (CODE)
                                   1696 	.area CONST   (CODE)
                                   1697 	.area CONST   (CODE)
      0015CD                       1698 ___str_0:
      0015CD 25 64                 1699 	.ascii "%d"
      0015CF 00                    1700 	.db 0x00
                                   1701 	.area CSEG    (CODE)
                                   1702 	.area CONST   (CODE)
      0015D0                       1703 ___str_1:
      0015D0 43 75 72 20 54 65 6D  1704 	.ascii "Cur Temp: "
             70 3A 20
      0015DA 00                    1705 	.db 0x00
                                   1706 	.area CSEG    (CODE)
                                   1707 	.area CONST   (CODE)
      0015DB                       1708 ___str_2:
      0015DB 20 20 20 20 20 20     1709 	.ascii "      "
      0015E1 00                    1710 	.db 0x00
                                   1711 	.area CSEG    (CODE)
                                   1712 	.area CONST   (CODE)
      0015E2                       1713 ___str_3:
      0015E2 4C 3A 20              1714 	.ascii "L: "
      0015E5 00                    1715 	.db 0x00
                                   1716 	.area CSEG    (CODE)
                                   1717 	.area CONST   (CODE)
      0015E6                       1718 ___str_4:
      0015E6 20 48 3A 20           1719 	.ascii " H: "
      0015EA 00                    1720 	.db 0x00
                                   1721 	.area CSEG    (CODE)
                                   1722 	.area CONST   (CODE)
      0015EB                       1723 ___str_5:
      0015EB 20 20 20 20 20 20 20  1724 	.ascii "       "
      0015F2 00                    1725 	.db 0x00
                                   1726 	.area CSEG    (CODE)
                                   1727 	.area XINIT   (CODE)
                                   1728 	.area CABS    (ABS,CODE)
