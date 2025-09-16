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
                                     11 	.globl _output_7seg_PARM_2
                                     12 	.globl _x50ms
                                     13 	.globl _main
                                     14 	.globl _display_number
                                     15 	.globl _output_7seg
                                     16 	.globl _external1_interrupt
                                     17 	.globl _initilize_int1
                                     18 	.globl _external0_interrupt
                                     19 	.globl _initilize_int0
                                     20 	.globl _timer1_interrupt
                                     21 	.globl _stop_timer1
                                     22 	.globl _initilize_timer1
                                     23 	.globl _turnOnBuzzer_1s
                                     24 	.globl _delay_ms
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _ET2
                                     43 	.globl _CY
                                     44 	.globl _AC
                                     45 	.globl _F0
                                     46 	.globl _RS1
                                     47 	.globl _RS0
                                     48 	.globl _OV
                                     49 	.globl _F1
                                     50 	.globl _P
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _P1_7
                                     95 	.globl _P1_6
                                     96 	.globl _P1_5
                                     97 	.globl _P1_4
                                     98 	.globl _P1_3
                                     99 	.globl _P1_2
                                    100 	.globl _P1_1
                                    101 	.globl _P1_0
                                    102 	.globl _TF1
                                    103 	.globl _TR1
                                    104 	.globl _TF0
                                    105 	.globl _TR0
                                    106 	.globl _IE1
                                    107 	.globl _IT1
                                    108 	.globl _IE0
                                    109 	.globl _IT0
                                    110 	.globl _P0_7
                                    111 	.globl _P0_6
                                    112 	.globl _P0_5
                                    113 	.globl _P0_4
                                    114 	.globl _P0_3
                                    115 	.globl _P0_2
                                    116 	.globl _P0_1
                                    117 	.globl _P0_0
                                    118 	.globl _TH2
                                    119 	.globl _TL2
                                    120 	.globl _RCAP2H
                                    121 	.globl _RCAP2L
                                    122 	.globl _T2CON
                                    123 	.globl _B
                                    124 	.globl _ACC
                                    125 	.globl _PSW
                                    126 	.globl _IP
                                    127 	.globl _P3
                                    128 	.globl _IE
                                    129 	.globl _P2
                                    130 	.globl _SBUF
                                    131 	.globl _SCON
                                    132 	.globl _P1
                                    133 	.globl _TH1
                                    134 	.globl _TH0
                                    135 	.globl _TL1
                                    136 	.globl _TL0
                                    137 	.globl _TMOD
                                    138 	.globl _TCON
                                    139 	.globl _PCON
                                    140 	.globl _DPH
                                    141 	.globl _DPL
                                    142 	.globl _SP
                                    143 	.globl _P0
                                    144 	.globl _display_number_PARM_2
                                    145 	.globl _countDownLoop
                                    146 	.globl _seconds
                                    147 	.globl _minutes
                                    148 	.globl _startCountDown
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                           0000C8   175 _T2CON	=	0x00c8
                           0000CA   176 _RCAP2L	=	0x00ca
                           0000CB   177 _RCAP2H	=	0x00cb
                           0000CC   178 _TL2	=	0x00cc
                           0000CD   179 _TH2	=	0x00cd
                                    180 ;--------------------------------------------------------
                                    181 ; special function bits
                                    182 ;--------------------------------------------------------
                                    183 	.area RSEG    (ABS,DATA)
      000000                        184 	.org 0x0000
                           000080   185 _P0_0	=	0x0080
                           000081   186 _P0_1	=	0x0081
                           000082   187 _P0_2	=	0x0082
                           000083   188 _P0_3	=	0x0083
                           000084   189 _P0_4	=	0x0084
                           000085   190 _P0_5	=	0x0085
                           000086   191 _P0_6	=	0x0086
                           000087   192 _P0_7	=	0x0087
                           000088   193 _IT0	=	0x0088
                           000089   194 _IE0	=	0x0089
                           00008A   195 _IT1	=	0x008a
                           00008B   196 _IE1	=	0x008b
                           00008C   197 _TR0	=	0x008c
                           00008D   198 _TF0	=	0x008d
                           00008E   199 _TR1	=	0x008e
                           00008F   200 _TF1	=	0x008f
                           000090   201 _P1_0	=	0x0090
                           000091   202 _P1_1	=	0x0091
                           000092   203 _P1_2	=	0x0092
                           000093   204 _P1_3	=	0x0093
                           000094   205 _P1_4	=	0x0094
                           000095   206 _P1_5	=	0x0095
                           000096   207 _P1_6	=	0x0096
                           000097   208 _P1_7	=	0x0097
                           000098   209 _RI	=	0x0098
                           000099   210 _TI	=	0x0099
                           00009A   211 _RB8	=	0x009a
                           00009B   212 _TB8	=	0x009b
                           00009C   213 _REN	=	0x009c
                           00009D   214 _SM2	=	0x009d
                           00009E   215 _SM1	=	0x009e
                           00009F   216 _SM0	=	0x009f
                           0000A0   217 _P2_0	=	0x00a0
                           0000A1   218 _P2_1	=	0x00a1
                           0000A2   219 _P2_2	=	0x00a2
                           0000A3   220 _P2_3	=	0x00a3
                           0000A4   221 _P2_4	=	0x00a4
                           0000A5   222 _P2_5	=	0x00a5
                           0000A6   223 _P2_6	=	0x00a6
                           0000A7   224 _P2_7	=	0x00a7
                           0000A8   225 _EX0	=	0x00a8
                           0000A9   226 _ET0	=	0x00a9
                           0000AA   227 _EX1	=	0x00aa
                           0000AB   228 _ET1	=	0x00ab
                           0000AC   229 _ES	=	0x00ac
                           0000AF   230 _EA	=	0x00af
                           0000B0   231 _P3_0	=	0x00b0
                           0000B1   232 _P3_1	=	0x00b1
                           0000B2   233 _P3_2	=	0x00b2
                           0000B3   234 _P3_3	=	0x00b3
                           0000B4   235 _P3_4	=	0x00b4
                           0000B5   236 _P3_5	=	0x00b5
                           0000B6   237 _P3_6	=	0x00b6
                           0000B7   238 _P3_7	=	0x00b7
                           0000B0   239 _RXD	=	0x00b0
                           0000B1   240 _TXD	=	0x00b1
                           0000B2   241 _INT0	=	0x00b2
                           0000B3   242 _INT1	=	0x00b3
                           0000B4   243 _T0	=	0x00b4
                           0000B5   244 _T1	=	0x00b5
                           0000B6   245 _WR	=	0x00b6
                           0000B7   246 _RD	=	0x00b7
                           0000B8   247 _PX0	=	0x00b8
                           0000B9   248 _PT0	=	0x00b9
                           0000BA   249 _PX1	=	0x00ba
                           0000BB   250 _PT1	=	0x00bb
                           0000BC   251 _PS	=	0x00bc
                           0000D0   252 _P	=	0x00d0
                           0000D1   253 _F1	=	0x00d1
                           0000D2   254 _OV	=	0x00d2
                           0000D3   255 _RS0	=	0x00d3
                           0000D4   256 _RS1	=	0x00d4
                           0000D5   257 _F0	=	0x00d5
                           0000D6   258 _AC	=	0x00d6
                           0000D7   259 _CY	=	0x00d7
                           0000AD   260 _ET2	=	0x00ad
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable register banks
                                    280 ;--------------------------------------------------------
                                    281 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        282 	.ds 8
                                    283 ;--------------------------------------------------------
                                    284 ; overlayable bit register bank
                                    285 ;--------------------------------------------------------
                                    286 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        287 bits:
      000020                        288 	.ds 1
                           008000   289 	b0 = bits[0]
                           008100   290 	b1 = bits[1]
                           008200   291 	b2 = bits[2]
                           008300   292 	b3 = bits[3]
                           008400   293 	b4 = bits[4]
                           008500   294 	b5 = bits[5]
                           008600   295 	b6 = bits[6]
                           008700   296 	b7 = bits[7]
                                    297 ;--------------------------------------------------------
                                    298 ; internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area DSEG    (DATA)
      000008                        301 _startCountDown::
      000008                        302 	.ds 2
      00000A                        303 _minutes::
      00000A                        304 	.ds 2
      00000C                        305 _seconds::
      00000C                        306 	.ds 2
      00000E                        307 _delay_ms_ms_65536_1:
      00000E                        308 	.ds 4
      000012                        309 _countDownLoop::
      000012                        310 	.ds 2
      000014                        311 _display_number_PARM_2:
      000014                        312 	.ds 2
      000016                        313 _display_number_iNum_65536_23:
      000016                        314 	.ds 2
      000018                        315 _display_number_pos_131072_25:
      000018                        316 	.ds 1
                                    317 ;--------------------------------------------------------
                                    318 ; overlayable items in internal ram
                                    319 ;--------------------------------------------------------
                                    320 	.area	OSEG    (OVR,DATA)
      000021                        321 _output_7seg_PARM_2:
      000021                        322 	.ds 1
      000022                        323 _output_7seg_mask_65536_21:
      000022                        324 	.ds 10
                                    325 ;--------------------------------------------------------
                                    326 ; Stack segment in internal ram
                                    327 ;--------------------------------------------------------
                                    328 	.area SSEG
      00002C                        329 __start__stack:
      00002C                        330 	.ds	1
                                    331 
                                    332 ;--------------------------------------------------------
                                    333 ; indirectly addressable internal ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area ISEG    (DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; absolute internal ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area IABS    (ABS,DATA)
                                    340 	.area IABS    (ABS,DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; bit data
                                    343 ;--------------------------------------------------------
                                    344 	.area BSEG    (BIT)
                                    345 ;--------------------------------------------------------
                                    346 ; paged external ram data
                                    347 ;--------------------------------------------------------
                                    348 	.area PSEG    (PAG,XDATA)
                                    349 ;--------------------------------------------------------
                                    350 ; uninitialized external ram data
                                    351 ;--------------------------------------------------------
                                    352 	.area XSEG    (XDATA)
                                    353 ;--------------------------------------------------------
                                    354 ; absolute external ram data
                                    355 ;--------------------------------------------------------
                                    356 	.area XABS    (ABS,XDATA)
                                    357 ;--------------------------------------------------------
                                    358 ; initialized external ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area XISEG   (XDATA)
                                    361 	.area HOME    (CODE)
                                    362 	.area GSINIT0 (CODE)
                                    363 	.area GSINIT1 (CODE)
                                    364 	.area GSINIT2 (CODE)
                                    365 	.area GSINIT3 (CODE)
                                    366 	.area GSINIT4 (CODE)
                                    367 	.area GSINIT5 (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.area GSFINAL (CODE)
                                    370 	.area CSEG    (CODE)
                                    371 ;--------------------------------------------------------
                                    372 ; interrupt vector
                                    373 ;--------------------------------------------------------
                                    374 	.area HOME    (CODE)
      000000                        375 __interrupt_vect:
      000000 02 00 21         [24]  376 	ljmp	__sdcc_gsinit_startup
      000003 02 02 38         [24]  377 	ljmp	_external0_interrupt
      000006                        378 	.ds	5
      00000B 32               [24]  379 	reti
      00000C                        380 	.ds	7
      000013 02 02 6A         [24]  381 	ljmp	_external1_interrupt
      000016                        382 	.ds	5
      00001B 02 01 6F         [24]  383 	ljmp	_timer1_interrupt
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
                                    397 ;	main.c:5: int startCountDown = 0;  // 0: Chưa đếm ngược - 1: Bắt đầu đếm ngược
      00007A E4               [12]  398 	clr	a
      00007B F5 08            [12]  399 	mov	_startCountDown,a
      00007D F5 09            [12]  400 	mov	(_startCountDown + 1),a
                                    401 ;	main.c:6: int minutes = 0, seconds = 0;
      00007F F5 0A            [12]  402 	mov	_minutes,a
      000081 F5 0B            [12]  403 	mov	(_minutes + 1),a
                                    404 ;	main.c:6: 
      000083 F5 0C            [12]  405 	mov	_seconds,a
      000085 F5 0D            [12]  406 	mov	(_seconds + 1),a
                                    407 	.area GSFINAL (CODE)
      000087 02 00 1E         [24]  408 	ljmp	__sdcc_program_startup
                                    409 ;--------------------------------------------------------
                                    410 ; Home
                                    411 ;--------------------------------------------------------
                                    412 	.area HOME    (CODE)
                                    413 	.area HOME    (CODE)
      00001E                        414 __sdcc_program_startup:
      00001E 02 03 C1         [24]  415 	ljmp	_main
                                    416 ;	return from main will return to caller
                                    417 ;--------------------------------------------------------
                                    418 ; code
                                    419 ;--------------------------------------------------------
                                    420 	.area CSEG    (CODE)
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'delay_ms'
                                    423 ;------------------------------------------------------------
                                    424 ;ms                        Allocated with name '_delay_ms_ms_65536_1'
                                    425 ;------------------------------------------------------------
                                    426 ;	main.c:9: void delay_ms(long ms) {
                                    427 ;	-----------------------------------------
                                    428 ;	 function delay_ms
                                    429 ;	-----------------------------------------
      00008A                        430 _delay_ms:
                           000007   431 	ar7 = 0x07
                           000006   432 	ar6 = 0x06
                           000005   433 	ar5 = 0x05
                           000004   434 	ar4 = 0x04
                           000003   435 	ar3 = 0x03
                           000002   436 	ar2 = 0x02
                           000001   437 	ar1 = 0x01
                           000000   438 	ar0 = 0x00
      00008A 85 82 21         [24]  439 	mov	__mullong_PARM_2,dpl
      00008D 85 83 22         [24]  440 	mov	(__mullong_PARM_2 + 1),dph
      000090 85 F0 23         [24]  441 	mov	(__mullong_PARM_2 + 2),b
      000093 F5 24            [12]  442 	mov	(__mullong_PARM_2 + 3),a
                                    443 ;	main.c:10: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
      000095 90 03 E8         [24]  444 	mov	dptr,#0x03e8
      000098 E4               [12]  445 	clr	a
      000099 F5 F0            [12]  446 	mov	b,a
      00009B 12 05 0F         [24]  447 	lcall	__mullong
      00009E AC 82            [24]  448 	mov	r4,dpl
      0000A0 AD 83            [24]  449 	mov	r5,dph
      0000A2 AE F0            [24]  450 	mov	r6,b
      0000A4 FF               [12]  451 	mov	r7,a
                                    452 ;	main.c:11: while (ms > 0) {
      0000A5                        453 00107$:
      0000A5 C3               [12]  454 	clr	c
      0000A6 E4               [12]  455 	clr	a
      0000A7 9C               [12]  456 	subb	a,r4
      0000A8 E4               [12]  457 	clr	a
      0000A9 9D               [12]  458 	subb	a,r5
      0000AA E4               [12]  459 	clr	a
      0000AB 9E               [12]  460 	subb	a,r6
      0000AC 74 80            [12]  461 	mov	a,#(0x00 ^ 0x80)
      0000AE 8F F0            [24]  462 	mov	b,r7
      0000B0 63 F0 80         [24]  463 	xrl	b,#0x80
      0000B3 95 F0            [12]  464 	subb	a,b
      0000B5 40 01            [24]  465 	jc	00137$
      0000B7 22               [24]  466 	ret
      0000B8                        467 00137$:
                                    468 ;	main.c:13: TMOD = TMOD & 0xF0;
      0000B8 53 89 F0         [24]  469 	anl	_TMOD,#0xf0
                                    470 ;	main.c:15: TMOD = TMOD | 0x01;
      0000BB 43 89 01         [24]  471 	orl	_TMOD,#0x01
                                    472 ;	main.c:16: ET0 = 0;  // Che ngắt Timer 0
                                    473 ;	assignBit
      0000BE C2 A9            [12]  474 	clr	_ET0
                                    475 ;	main.c:18: if (ms >= 65536) {
      0000C0 C3               [12]  476 	clr	c
      0000C1 EE               [12]  477 	mov	a,r6
      0000C2 94 01            [12]  478 	subb	a,#0x01
      0000C4 EF               [12]  479 	mov	a,r7
      0000C5 64 80            [12]  480 	xrl	a,#0x80
      0000C7 94 80            [12]  481 	subb	a,#0x80
      0000C9 40 0F            [24]  482 	jc	00102$
                                    483 ;	main.c:20: TH0 = 0;
                                    484 ;	main.c:21: TL0 = 0;
                                    485 ;	main.c:22: ms -= 65536;
      0000CB E4               [12]  486 	clr	a
      0000CC F5 8C            [12]  487 	mov	_TH0,a
      0000CE F5 8A            [12]  488 	mov	_TL0,a
      0000D0 EE               [12]  489 	mov	a,r6
      0000D1 24 FF            [12]  490 	add	a,#0xff
      0000D3 FE               [12]  491 	mov	r6,a
      0000D4 EF               [12]  492 	mov	a,r7
      0000D5 34 FF            [12]  493 	addc	a,#0xff
      0000D7 FF               [12]  494 	mov	r7,a
      0000D8 80 57            [24]  495 	sjmp	00103$
      0000DA                        496 00102$:
                                    497 ;	main.c:25: ms = 65536 - ms;
      0000DA E4               [12]  498 	clr	a
      0000DB C3               [12]  499 	clr	c
      0000DC 9C               [12]  500 	subb	a,r4
      0000DD F5 0E            [12]  501 	mov	_delay_ms_ms_65536_1,a
      0000DF E4               [12]  502 	clr	a
      0000E0 9D               [12]  503 	subb	a,r5
      0000E1 F5 0F            [12]  504 	mov	(_delay_ms_ms_65536_1 + 1),a
      0000E3 74 01            [12]  505 	mov	a,#0x01
      0000E5 9E               [12]  506 	subb	a,r6
      0000E6 F5 10            [12]  507 	mov	(_delay_ms_ms_65536_1 + 2),a
      0000E8 E4               [12]  508 	clr	a
      0000E9 9F               [12]  509 	subb	a,r7
      0000EA F5 11            [12]  510 	mov	(_delay_ms_ms_65536_1 + 3),a
                                    511 ;	main.c:26: TH0 = ms / 256;
      0000EC E4               [12]  512 	clr	a
      0000ED F5 21            [12]  513 	mov	__divslong_PARM_2,a
      0000EF 75 22 01         [24]  514 	mov	(__divslong_PARM_2 + 1),#0x01
      0000F2 F5 23            [12]  515 	mov	(__divslong_PARM_2 + 2),a
      0000F4 F5 24            [12]  516 	mov	(__divslong_PARM_2 + 3),a
      0000F6 85 0E 82         [24]  517 	mov	dpl,_delay_ms_ms_65536_1
      0000F9 85 0F 83         [24]  518 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000FC 85 10 F0         [24]  519 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000FF E5 11            [12]  520 	mov	a,(_delay_ms_ms_65536_1 + 3)
      000101 12 06 42         [24]  521 	lcall	__divslong
      000104 A8 82            [24]  522 	mov	r0,dpl
      000106 88 8C            [24]  523 	mov	_TH0,r0
                                    524 ;	main.c:27: TL0 = ms % 256;
      000108 E4               [12]  525 	clr	a
      000109 F5 21            [12]  526 	mov	__modslong_PARM_2,a
      00010B 75 22 01         [24]  527 	mov	(__modslong_PARM_2 + 1),#0x01
      00010E F5 23            [12]  528 	mov	(__modslong_PARM_2 + 2),a
      000110 F5 24            [12]  529 	mov	(__modslong_PARM_2 + 3),a
      000112 85 0E 82         [24]  530 	mov	dpl,_delay_ms_ms_65536_1
      000115 85 0F 83         [24]  531 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      000118 85 10 F0         [24]  532 	mov	b,(_delay_ms_ms_65536_1 + 2)
      00011B E5 11            [12]  533 	mov	a,(_delay_ms_ms_65536_1 + 3)
      00011D 12 05 F3         [24]  534 	lcall	__modslong
      000120 A8 82            [24]  535 	mov	r0,dpl
      000122 A9 83            [24]  536 	mov	r1,dph
      000124 AA F0            [24]  537 	mov	r2,b
      000126 FB               [12]  538 	mov	r3,a
      000127 88 8A            [24]  539 	mov	_TL0,r0
                                    540 ;	main.c:28: ms = 0;
      000129 7C 00            [12]  541 	mov	r4,#0x00
      00012B 7D 00            [12]  542 	mov	r5,#0x00
      00012D 7E 00            [12]  543 	mov	r6,#0x00
      00012F 7F 00            [12]  544 	mov	r7,#0x00
      000131                        545 00103$:
                                    546 ;	main.c:30: TF0 = 0;  // Xóa cờ tràn Timer 0
                                    547 ;	assignBit
      000131 C2 8D            [12]  548 	clr	_TF0
                                    549 ;	main.c:31: TR0 = 1;  // Khởi động Timer 0
                                    550 ;	assignBit
      000133 D2 8C            [12]  551 	setb	_TR0
                                    552 ;	main.c:32: while (TF0 == 0)
      000135                        553 00104$:
      000135 30 8D FD         [24]  554 	jnb	_TF0,00104$
                                    555 ;	main.c:34: TR0 = 0;  // Dừng Timer 0
                                    556 ;	assignBit
      000138 C2 8C            [12]  557 	clr	_TR0
                                    558 ;	main.c:36: }
      00013A 02 00 A5         [24]  559 	ljmp	00107$
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'turnOnBuzzer_1s'
                                    562 ;------------------------------------------------------------
                                    563 ;	main.c:39: void turnOnBuzzer_1s() {
                                    564 ;	-----------------------------------------
                                    565 ;	 function turnOnBuzzer_1s
                                    566 ;	-----------------------------------------
      00013D                        567 _turnOnBuzzer_1s:
                                    568 ;	main.c:40: P3_6 = 1;
                                    569 ;	assignBit
      00013D D2 B6            [12]  570 	setb	_P3_6
                                    571 ;	main.c:41: delay_ms(1000);
      00013F 90 03 E8         [24]  572 	mov	dptr,#0x03e8
      000142 E4               [12]  573 	clr	a
      000143 F5 F0            [12]  574 	mov	b,a
      000145 12 00 8A         [24]  575 	lcall	_delay_ms
                                    576 ;	main.c:42: P3_6 = 0;
                                    577 ;	assignBit
      000148 C2 B6            [12]  578 	clr	_P3_6
                                    579 ;	main.c:43: }
      00014A 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'initilize_timer1'
                                    583 ;------------------------------------------------------------
                                    584 ;	main.c:47: void initilize_timer1() {
                                    585 ;	-----------------------------------------
                                    586 ;	 function initilize_timer1
                                    587 ;	-----------------------------------------
      00014B                        588 _initilize_timer1:
                                    589 ;	main.c:48: countDownLoop = x50ms;  // Khởi tạo số vòng lặp là 20
      00014B 90 07 06         [24]  590 	mov	dptr,#_x50ms
      00014E E4               [12]  591 	clr	a
      00014F 93               [24]  592 	movc	a,@a+dptr
      000150 F5 12            [12]  593 	mov	_countDownLoop,a
      000152 74 01            [12]  594 	mov	a,#0x01
      000154 93               [24]  595 	movc	a,@a+dptr
      000155 F5 13            [12]  596 	mov	(_countDownLoop + 1),a
                                    597 ;	main.c:49: TMOD = TMOD & 0x0F;     // Xóa các thiết lập cũ của Timer 1
      000157 53 89 0F         [24]  598 	anl	_TMOD,#0x0f
                                    599 ;	main.c:50: TMOD = TMOD | 0x10;     // Thiết lập Mode 1, 16-bit Timer/Counter
      00015A 43 89 10         [24]  600 	orl	_TMOD,#0x10
                                    601 ;	main.c:51: TH1 = 0x3C;             // Khởi tạo T1
      00015D 75 8D 3C         [24]  602 	mov	_TH1,#0x3c
                                    603 ;	main.c:52: TL1 = 0xB0;             // tương đương 15536
      000160 75 8B B0         [24]  604 	mov	_TL1,#0xb0
                                    605 ;	main.c:53: TF1 = 0;                // Xóa cờ tràn Timer 1
                                    606 ;	assignBit
      000163 C2 8F            [12]  607 	clr	_TF1
                                    608 ;	main.c:54: TR1 = 1;                // Khoi dong timer 1
                                    609 ;	assignBit
      000165 D2 8E            [12]  610 	setb	_TR1
                                    611 ;	main.c:55: ET1 = 1;                // Cho phép Timer 1 ngắt
                                    612 ;	assignBit
      000167 D2 AB            [12]  613 	setb	_ET1
                                    614 ;	main.c:56: EA = 1;                 // Cho phép ngắt tổng thể
                                    615 ;	assignBit
      000169 D2 AF            [12]  616 	setb	_EA
                                    617 ;	main.c:57: }
      00016B 22               [24]  618 	ret
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'stop_timer1'
                                    621 ;------------------------------------------------------------
                                    622 ;	main.c:60: void stop_timer1() { TR1 = 0; }
                                    623 ;	-----------------------------------------
                                    624 ;	 function stop_timer1
                                    625 ;	-----------------------------------------
      00016C                        626 _stop_timer1:
                                    627 ;	assignBit
      00016C C2 8E            [12]  628 	clr	_TR1
      00016E 22               [24]  629 	ret
                                    630 ;------------------------------------------------------------
                                    631 ;Allocation info for local variables in function 'timer1_interrupt'
                                    632 ;------------------------------------------------------------
                                    633 ;	main.c:63: void timer1_interrupt() __interrupt(3) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function timer1_interrupt
                                    636 ;	-----------------------------------------
      00016F                        637 _timer1_interrupt:
      00016F C0 20            [24]  638 	push	bits
      000171 C0 E0            [24]  639 	push	acc
      000173 C0 F0            [24]  640 	push	b
      000175 C0 82            [24]  641 	push	dpl
      000177 C0 83            [24]  642 	push	dph
      000179 C0 07            [24]  643 	push	(0+7)
      00017B C0 06            [24]  644 	push	(0+6)
      00017D C0 05            [24]  645 	push	(0+5)
      00017F C0 04            [24]  646 	push	(0+4)
      000181 C0 03            [24]  647 	push	(0+3)
      000183 C0 02            [24]  648 	push	(0+2)
      000185 C0 01            [24]  649 	push	(0+1)
      000187 C0 00            [24]  650 	push	(0+0)
      000189 C0 D0            [24]  651 	push	psw
      00018B 75 D0 00         [24]  652 	mov	psw,#0x00
                                    653 ;	main.c:64: TF1 = 0;     // Xóa cờ tràn
                                    654 ;	assignBit
      00018E C2 8F            [12]  655 	clr	_TF1
                                    656 ;	main.c:65: TR1 = 0;     // Dừng Timer 1
                                    657 ;	assignBit
      000190 C2 8E            [12]  658 	clr	_TR1
                                    659 ;	main.c:66: TH1 = 0x3C;  // Khởi tạo T1
      000192 75 8D 3C         [24]  660 	mov	_TH1,#0x3c
                                    661 ;	main.c:67: TL1 = 0xB0;  // tương đương 15536
      000195 75 8B B0         [24]  662 	mov	_TL1,#0xb0
                                    663 ;	main.c:71: if (countDownLoop == 0) {
      000198 E5 12            [12]  664 	mov	a,_countDownLoop
      00019A 45 13            [12]  665 	orl	a,(_countDownLoop + 1)
      00019C 70 69            [24]  666 	jnz	00110$
                                    667 ;	main.c:73: EA = 0;
                                    668 ;	assignBit
      00019E C2 AF            [12]  669 	clr	_EA
                                    670 ;	main.c:74: if (seconds == 0) {
      0001A0 E5 0C            [12]  671 	mov	a,_seconds
      0001A2 45 0D            [12]  672 	orl	a,(_seconds + 1)
      0001A4 70 48            [24]  673 	jnz	00107$
                                    674 ;	main.c:75: if (minutes == 0) {
      0001A6 E5 0A            [12]  675 	mov	a,_minutes
      0001A8 45 0B            [12]  676 	orl	a,(_minutes + 1)
      0001AA 70 31            [24]  677 	jnz	00104$
                                    678 ;	main.c:77: if (startCountDown) startCountDown = 0;
      0001AC E5 08            [12]  679 	mov	a,_startCountDown
      0001AE 45 09            [12]  680 	orl	a,(_startCountDown + 1)
      0001B0 60 05            [24]  681 	jz	00102$
      0001B2 E4               [12]  682 	clr	a
      0001B3 F5 08            [12]  683 	mov	_startCountDown,a
      0001B5 F5 09            [12]  684 	mov	(_startCountDown + 1),a
      0001B7                        685 00102$:
                                    686 ;	main.c:79: turnOnBuzzer_1s();
      0001B7 12 01 3D         [24]  687 	lcall	_turnOnBuzzer_1s
                                    688 ;	main.c:80: delay_ms(300);
      0001BA 90 01 2C         [24]  689 	mov	dptr,#0x012c
      0001BD E4               [12]  690 	clr	a
      0001BE F5 F0            [12]  691 	mov	b,a
      0001C0 12 00 8A         [24]  692 	lcall	_delay_ms
                                    693 ;	main.c:81: turnOnBuzzer_1s();
      0001C3 12 01 3D         [24]  694 	lcall	_turnOnBuzzer_1s
                                    695 ;	main.c:82: delay_ms(300);
      0001C6 90 01 2C         [24]  696 	mov	dptr,#0x012c
      0001C9 E4               [12]  697 	clr	a
      0001CA F5 F0            [12]  698 	mov	b,a
      0001CC 12 00 8A         [24]  699 	lcall	_delay_ms
                                    700 ;	main.c:83: turnOnBuzzer_1s();
      0001CF 12 01 3D         [24]  701 	lcall	_turnOnBuzzer_1s
                                    702 ;	main.c:84: delay_ms(300);
      0001D2 90 01 2C         [24]  703 	mov	dptr,#0x012c
      0001D5 E4               [12]  704 	clr	a
      0001D6 F5 F0            [12]  705 	mov	b,a
      0001D8 12 00 8A         [24]  706 	lcall	_delay_ms
      0001DB 80 1A            [24]  707 	sjmp	00108$
      0001DD                        708 00104$:
                                    709 ;	main.c:87: seconds = 59;
      0001DD 75 0C 3B         [24]  710 	mov	_seconds,#0x3b
      0001E0 75 0D 00         [24]  711 	mov	(_seconds + 1),#0x00
                                    712 ;	main.c:88: minutes--;
      0001E3 15 0A            [12]  713 	dec	_minutes
      0001E5 74 FF            [12]  714 	mov	a,#0xff
      0001E7 B5 0A 02         [24]  715 	cjne	a,_minutes,00134$
      0001EA 15 0B            [12]  716 	dec	(_minutes + 1)
      0001EC                        717 00134$:
      0001EC 80 09            [24]  718 	sjmp	00108$
      0001EE                        719 00107$:
                                    720 ;	main.c:92: seconds--;
      0001EE 15 0C            [12]  721 	dec	_seconds
      0001F0 74 FF            [12]  722 	mov	a,#0xff
      0001F2 B5 0C 02         [24]  723 	cjne	a,_seconds,00135$
      0001F5 15 0D            [12]  724 	dec	(_seconds + 1)
      0001F7                        725 00135$:
      0001F7                        726 00108$:
                                    727 ;	main.c:95: countDownLoop = x50ms;
      0001F7 90 07 06         [24]  728 	mov	dptr,#_x50ms
      0001FA E4               [12]  729 	clr	a
      0001FB 93               [24]  730 	movc	a,@a+dptr
      0001FC F5 12            [12]  731 	mov	_countDownLoop,a
      0001FE 74 01            [12]  732 	mov	a,#0x01
      000200 93               [24]  733 	movc	a,@a+dptr
      000201 F5 13            [12]  734 	mov	(_countDownLoop + 1),a
                                    735 ;	main.c:96: EA = 1;
                                    736 ;	assignBit
      000203 D2 AF            [12]  737 	setb	_EA
      000205 80 09            [24]  738 	sjmp	00111$
      000207                        739 00110$:
                                    740 ;	main.c:99: countDownLoop--;
      000207 15 12            [12]  741 	dec	_countDownLoop
      000209 74 FF            [12]  742 	mov	a,#0xff
      00020B B5 12 02         [24]  743 	cjne	a,_countDownLoop,00136$
      00020E 15 13            [12]  744 	dec	(_countDownLoop + 1)
      000210                        745 00136$:
      000210                        746 00111$:
                                    747 ;	main.c:101: TR1 = 1;  // Khời động lại Timer 1
                                    748 ;	assignBit
      000210 D2 8E            [12]  749 	setb	_TR1
                                    750 ;	main.c:102: }
      000212 D0 D0            [24]  751 	pop	psw
      000214 D0 00            [24]  752 	pop	(0+0)
      000216 D0 01            [24]  753 	pop	(0+1)
      000218 D0 02            [24]  754 	pop	(0+2)
      00021A D0 03            [24]  755 	pop	(0+3)
      00021C D0 04            [24]  756 	pop	(0+4)
      00021E D0 05            [24]  757 	pop	(0+5)
      000220 D0 06            [24]  758 	pop	(0+6)
      000222 D0 07            [24]  759 	pop	(0+7)
      000224 D0 83            [24]  760 	pop	dph
      000226 D0 82            [24]  761 	pop	dpl
      000228 D0 F0            [24]  762 	pop	b
      00022A D0 E0            [24]  763 	pop	acc
      00022C D0 20            [24]  764 	pop	bits
      00022E 32               [24]  765 	reti
                                    766 ;------------------------------------------------------------
                                    767 ;Allocation info for local variables in function 'initilize_int0'
                                    768 ;------------------------------------------------------------
                                    769 ;	main.c:105: void initilize_int0() {
                                    770 ;	-----------------------------------------
                                    771 ;	 function initilize_int0
                                    772 ;	-----------------------------------------
      00022F                        773 _initilize_int0:
                                    774 ;	main.c:106: P3_2 = 1;  // P3_2 là input
                                    775 ;	assignBit
      00022F D2 B2            [12]  776 	setb	_P3_2
                                    777 ;	main.c:107: EX0 = 1;   // Cho phép ngắt ngoài 0
                                    778 ;	assignBit
      000231 D2 A8            [12]  779 	setb	_EX0
                                    780 ;	main.c:108: IT0 = 1;   // Ngắt theo sườn xuống
                                    781 ;	assignBit
      000233 D2 88            [12]  782 	setb	_IT0
                                    783 ;	main.c:109: EA = 1;    // Cho phép ngắt toàn cục
                                    784 ;	assignBit
      000235 D2 AF            [12]  785 	setb	_EA
                                    786 ;	main.c:110: }
      000237 22               [24]  787 	ret
                                    788 ;------------------------------------------------------------
                                    789 ;Allocation info for local variables in function 'external0_interrupt'
                                    790 ;------------------------------------------------------------
                                    791 ;	main.c:113: void external0_interrupt() __interrupt(0) {
                                    792 ;	-----------------------------------------
                                    793 ;	 function external0_interrupt
                                    794 ;	-----------------------------------------
      000238                        795 _external0_interrupt:
      000238 C0 E0            [24]  796 	push	acc
      00023A C0 D0            [24]  797 	push	psw
                                    798 ;	main.c:114: EA = 0;  // Che toàn bộ các ngắt
                                    799 ;	assignBit
      00023C C2 AF            [12]  800 	clr	_EA
                                    801 ;	main.c:116: if (minutes < 60)
      00023E C3               [12]  802 	clr	c
      00023F E5 0A            [12]  803 	mov	a,_minutes
      000241 94 3C            [12]  804 	subb	a,#0x3c
      000243 E5 0B            [12]  805 	mov	a,(_minutes + 1)
      000245 64 80            [12]  806 	xrl	a,#0x80
      000247 94 80            [12]  807 	subb	a,#0x80
      000249 50 0A            [24]  808 	jnc	00102$
                                    809 ;	main.c:117: minutes++;
      00024B 05 0A            [12]  810 	inc	_minutes
      00024D E4               [12]  811 	clr	a
      00024E B5 0A 09         [24]  812 	cjne	a,_minutes,00103$
      000251 05 0B            [12]  813 	inc	(_minutes + 1)
      000253 80 05            [24]  814 	sjmp	00103$
      000255                        815 00102$:
                                    816 ;	main.c:119: minutes = 0;
      000255 E4               [12]  817 	clr	a
      000256 F5 0A            [12]  818 	mov	_minutes,a
      000258 F5 0B            [12]  819 	mov	(_minutes + 1),a
      00025A                        820 00103$:
                                    821 ;	main.c:120: EA = 1;  // Cho phép ngắt toàn cục
                                    822 ;	assignBit
      00025A D2 AF            [12]  823 	setb	_EA
                                    824 ;	main.c:121: }
      00025C D0 D0            [24]  825 	pop	psw
      00025E D0 E0            [24]  826 	pop	acc
      000260 32               [24]  827 	reti
                                    828 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    829 ;	eliminated unneeded push/pop dpl
                                    830 ;	eliminated unneeded push/pop dph
                                    831 ;	eliminated unneeded push/pop b
                                    832 ;------------------------------------------------------------
                                    833 ;Allocation info for local variables in function 'initilize_int1'
                                    834 ;------------------------------------------------------------
                                    835 ;	main.c:124: void initilize_int1() {
                                    836 ;	-----------------------------------------
                                    837 ;	 function initilize_int1
                                    838 ;	-----------------------------------------
      000261                        839 _initilize_int1:
                                    840 ;	main.c:125: P3_3 = 1;  // P3_3 là input
                                    841 ;	assignBit
      000261 D2 B3            [12]  842 	setb	_P3_3
                                    843 ;	main.c:126: EX1 = 1;   // Cho phép ngắt ngoài 1
                                    844 ;	assignBit
      000263 D2 AA            [12]  845 	setb	_EX1
                                    846 ;	main.c:127: IT1 = 1;   // Ngắt theo sườn xuống
                                    847 ;	assignBit
      000265 D2 8A            [12]  848 	setb	_IT1
                                    849 ;	main.c:128: EA = 1;    // Cho phép ngắt toàn cục
                                    850 ;	assignBit
      000267 D2 AF            [12]  851 	setb	_EA
                                    852 ;	main.c:129: }
      000269 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'external1_interrupt'
                                    856 ;------------------------------------------------------------
                                    857 ;	main.c:132: void external1_interrupt() __interrupt(2) {
                                    858 ;	-----------------------------------------
                                    859 ;	 function external1_interrupt
                                    860 ;	-----------------------------------------
      00026A                        861 _external1_interrupt:
      00026A C0 E0            [24]  862 	push	acc
      00026C C0 D0            [24]  863 	push	psw
                                    864 ;	main.c:133: EA = 0;  // Che toàn bộ các ngắt
                                    865 ;	assignBit
      00026E C2 AF            [12]  866 	clr	_EA
                                    867 ;	main.c:135: startCountDown = 1 - startCountDown;
      000270 74 01            [12]  868 	mov	a,#0x01
      000272 C3               [12]  869 	clr	c
      000273 95 08            [12]  870 	subb	a,_startCountDown
      000275 F5 08            [12]  871 	mov	_startCountDown,a
      000277 E4               [12]  872 	clr	a
      000278 95 09            [12]  873 	subb	a,(_startCountDown + 1)
      00027A F5 09            [12]  874 	mov	(_startCountDown + 1),a
                                    875 ;	main.c:136: EA = 1;  // Cho phép ngắt tổng thể
                                    876 ;	assignBit
      00027C D2 AF            [12]  877 	setb	_EA
                                    878 ;	main.c:137: }
      00027E D0 D0            [24]  879 	pop	psw
      000280 D0 E0            [24]  880 	pop	acc
      000282 32               [24]  881 	reti
                                    882 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    883 ;	eliminated unneeded push/pop dpl
                                    884 ;	eliminated unneeded push/pop dph
                                    885 ;	eliminated unneeded push/pop b
                                    886 ;------------------------------------------------------------
                                    887 ;Allocation info for local variables in function 'output_7seg'
                                    888 ;------------------------------------------------------------
                                    889 ;dpDisplay                 Allocated with name '_output_7seg_PARM_2'
                                    890 ;value                     Allocated to registers r7 
                                    891 ;mask                      Allocated with name '_output_7seg_mask_65536_21'
                                    892 ;------------------------------------------------------------
                                    893 ;	main.c:142: void output_7seg(unsigned char value, unsigned char dpDisplay) {
                                    894 ;	-----------------------------------------
                                    895 ;	 function output_7seg
                                    896 ;	-----------------------------------------
      000283                        897 _output_7seg:
      000283 AF 82            [24]  898 	mov	r7,dpl
                                    899 ;	main.c:144: unsigned char const mask[10] = {0xC0, 0xF9, 0xA4, 0xB0, 0x99,
      000285 75 22 C0         [24]  900 	mov	_output_7seg_mask_65536_21,#0xc0
      000288 75 23 F9         [24]  901 	mov	(_output_7seg_mask_65536_21 + 0x0001),#0xf9
      00028B 75 24 A4         [24]  902 	mov	(_output_7seg_mask_65536_21 + 0x0002),#0xa4
      00028E 75 25 B0         [24]  903 	mov	(_output_7seg_mask_65536_21 + 0x0003),#0xb0
      000291 75 26 99         [24]  904 	mov	(_output_7seg_mask_65536_21 + 0x0004),#0x99
      000294 75 27 92         [24]  905 	mov	(_output_7seg_mask_65536_21 + 0x0005),#0x92
      000297 75 28 82         [24]  906 	mov	(_output_7seg_mask_65536_21 + 0x0006),#0x82
      00029A 75 29 F8         [24]  907 	mov	(_output_7seg_mask_65536_21 + 0x0007),#0xf8
      00029D 75 2A 80         [24]  908 	mov	(_output_7seg_mask_65536_21 + 0x0008),#0x80
      0002A0 75 2B 90         [24]  909 	mov	(_output_7seg_mask_65536_21 + 0x0009),#0x90
                                    910 ;	main.c:146: if (value < 10) {
      0002A3 BF 0A 00         [24]  911 	cjne	r7,#0x0a,00116$
      0002A6                        912 00116$:
      0002A6 50 16            [24]  913 	jnc	00106$
                                    914 ;	main.c:147: if (dpDisplay > 0)
      0002A8 E5 21            [12]  915 	mov	a,_output_7seg_PARM_2
      0002AA 60 0C            [24]  916 	jz	00102$
                                    917 ;	main.c:148: P1 = (mask[value] & 0x7F);
      0002AC EF               [12]  918 	mov	a,r7
      0002AD 24 22            [12]  919 	add	a,#_output_7seg_mask_65536_21
      0002AF F9               [12]  920 	mov	r1,a
      0002B0 87 06            [24]  921 	mov	ar6,@r1
      0002B2 74 7F            [12]  922 	mov	a,#0x7f
      0002B4 5E               [12]  923 	anl	a,r6
      0002B5 F5 90            [12]  924 	mov	_P1,a
      0002B7 22               [24]  925 	ret
      0002B8                        926 00102$:
                                    927 ;	main.c:150: P1 = mask[value];
      0002B8 EF               [12]  928 	mov	a,r7
      0002B9 24 22            [12]  929 	add	a,#_output_7seg_mask_65536_21
      0002BB F9               [12]  930 	mov	r1,a
      0002BC 87 90            [24]  931 	mov	_P1,@r1
      0002BE                        932 00106$:
                                    933 ;	main.c:152: }
      0002BE 22               [24]  934 	ret
                                    935 ;------------------------------------------------------------
                                    936 ;Allocation info for local variables in function 'display_number'
                                    937 ;------------------------------------------------------------
                                    938 ;loop                      Allocated with name '_display_number_PARM_2'
                                    939 ;iNum                      Allocated with name '_display_number_iNum_65536_23'
                                    940 ;num                       Allocated to registers r2 r3 
                                    941 ;i                         Allocated to registers r0 r7 
                                    942 ;temp                      Allocated to registers r1 r6 
                                    943 ;pos                       Allocated with name '_display_number_pos_131072_25'
                                    944 ;------------------------------------------------------------
                                    945 ;	main.c:157: void display_number(int iNum, int loop) {
                                    946 ;	-----------------------------------------
                                    947 ;	 function display_number
                                    948 ;	-----------------------------------------
      0002BF                        949 _display_number:
      0002BF 85 82 16         [24]  950 	mov	_display_number_iNum_65536_23,dpl
      0002C2 85 83 17         [24]  951 	mov	(_display_number_iNum_65536_23 + 1),dph
                                    952 ;	main.c:158: while (loop > 0) {
      0002C5 AC 14            [24]  953 	mov	r4,_display_number_PARM_2
      0002C7 AD 15            [24]  954 	mov	r5,(_display_number_PARM_2 + 1)
      0002C9                        955 00105$:
      0002C9 C3               [12]  956 	clr	c
      0002CA E4               [12]  957 	clr	a
      0002CB 9C               [12]  958 	subb	a,r4
      0002CC 74 80            [12]  959 	mov	a,#(0x00 ^ 0x80)
      0002CE 8D F0            [24]  960 	mov	b,r5
      0002D0 63 F0 80         [24]  961 	xrl	b,#0x80
      0002D3 95 F0            [12]  962 	subb	a,b
      0002D5 40 01            [24]  963 	jc	00134$
      0002D7 22               [24]  964 	ret
      0002D8                        965 00134$:
                                    966 ;	main.c:159: int num = iNum;
      0002D8 AA 16            [24]  967 	mov	r2,_display_number_iNum_65536_23
      0002DA AB 17            [24]  968 	mov	r3,(_display_number_iNum_65536_23 + 1)
                                    969 ;	main.c:161: unsigned char pos = 0x08;  // Cho digit 4 sáng (hàng đơn vị)
      0002DC 75 18 08         [24]  970 	mov	_display_number_pos_131072_25,#0x08
                                    971 ;	main.c:163: for (i = 0; i < 4; i++) {
      0002DF 78 00            [12]  972 	mov	r0,#0x00
      0002E1 7F 00            [12]  973 	mov	r7,#0x00
      0002E3                        974 00108$:
                                    975 ;	main.c:164: temp = num % 10;
      0002E3 75 21 0A         [24]  976 	mov	__modsint_PARM_2,#0x0a
      0002E6 75 22 00         [24]  977 	mov	(__modsint_PARM_2 + 1),#0x00
      0002E9 8A 82            [24]  978 	mov	dpl,r2
      0002EB 8B 83            [24]  979 	mov	dph,r3
      0002ED C0 07            [24]  980 	push	ar7
      0002EF C0 05            [24]  981 	push	ar5
      0002F1 C0 04            [24]  982 	push	ar4
      0002F3 C0 03            [24]  983 	push	ar3
      0002F5 C0 02            [24]  984 	push	ar2
      0002F7 C0 00            [24]  985 	push	ar0
      0002F9 12 06 94         [24]  986 	lcall	__modsint
      0002FC A9 82            [24]  987 	mov	r1,dpl
      0002FE AE 83            [24]  988 	mov	r6,dph
      000300 D0 00            [24]  989 	pop	ar0
      000302 D0 02            [24]  990 	pop	ar2
      000304 D0 03            [24]  991 	pop	ar3
      000306 D0 04            [24]  992 	pop	ar4
      000308 D0 05            [24]  993 	pop	ar5
                                    994 ;	main.c:165: num = num / 10;
      00030A 75 21 0A         [24]  995 	mov	__divsint_PARM_2,#0x0a
      00030D 75 22 00         [24]  996 	mov	(__divsint_PARM_2 + 1),#0x00
      000310 8A 82            [24]  997 	mov	dpl,r2
      000312 8B 83            [24]  998 	mov	dph,r3
      000314 C0 06            [24]  999 	push	ar6
      000316 C0 05            [24] 1000 	push	ar5
      000318 C0 04            [24] 1001 	push	ar4
      00031A C0 01            [24] 1002 	push	ar1
      00031C C0 00            [24] 1003 	push	ar0
      00031E 12 06 CA         [24] 1004 	lcall	__divsint
      000321 AA 82            [24] 1005 	mov	r2,dpl
      000323 AB 83            [24] 1006 	mov	r3,dph
      000325 D0 00            [24] 1007 	pop	ar0
      000327 D0 01            [24] 1008 	pop	ar1
      000329 D0 04            [24] 1009 	pop	ar4
      00032B D0 05            [24] 1010 	pop	ar5
      00032D D0 06            [24] 1011 	pop	ar6
      00032F D0 07            [24] 1012 	pop	ar7
                                   1013 ;	main.c:166: P2 = pos ^ 0xFF;
      000331 74 FF            [12] 1014 	mov	a,#0xff
      000333 65 18            [12] 1015 	xrl	a,_display_number_pos_131072_25
      000335 F5 A0            [12] 1016 	mov	_P2,a
                                   1017 ;	main.c:167: if (i == 2)
      000337 B8 02 25         [24] 1018 	cjne	r0,#0x02,00102$
      00033A BF 00 22         [24] 1019 	cjne	r7,#0x00,00102$
                                   1020 ;	main.c:169: output_7seg(temp, 1);
      00033D 89 82            [24] 1021 	mov	dpl,r1
      00033F 75 21 01         [24] 1022 	mov	_output_7seg_PARM_2,#0x01
      000342 C0 07            [24] 1023 	push	ar7
      000344 C0 05            [24] 1024 	push	ar5
      000346 C0 04            [24] 1025 	push	ar4
      000348 C0 03            [24] 1026 	push	ar3
      00034A C0 02            [24] 1027 	push	ar2
      00034C C0 00            [24] 1028 	push	ar0
      00034E 12 02 83         [24] 1029 	lcall	_output_7seg
      000351 D0 00            [24] 1030 	pop	ar0
      000353 D0 02            [24] 1031 	pop	ar2
      000355 D0 03            [24] 1032 	pop	ar3
      000357 D0 04            [24] 1033 	pop	ar4
      000359 D0 05            [24] 1034 	pop	ar5
      00035B D0 07            [24] 1035 	pop	ar7
      00035D 80 20            [24] 1036 	sjmp	00103$
      00035F                       1037 00102$:
                                   1038 ;	main.c:171: output_7seg(temp, 0);
      00035F 89 82            [24] 1039 	mov	dpl,r1
      000361 75 21 00         [24] 1040 	mov	_output_7seg_PARM_2,#0x00
      000364 C0 07            [24] 1041 	push	ar7
      000366 C0 05            [24] 1042 	push	ar5
      000368 C0 04            [24] 1043 	push	ar4
      00036A C0 03            [24] 1044 	push	ar3
      00036C C0 02            [24] 1045 	push	ar2
      00036E C0 00            [24] 1046 	push	ar0
      000370 12 02 83         [24] 1047 	lcall	_output_7seg
      000373 D0 00            [24] 1048 	pop	ar0
      000375 D0 02            [24] 1049 	pop	ar2
      000377 D0 03            [24] 1050 	pop	ar3
      000379 D0 04            [24] 1051 	pop	ar4
      00037B D0 05            [24] 1052 	pop	ar5
      00037D D0 07            [24] 1053 	pop	ar7
      00037F                       1054 00103$:
                                   1055 ;	main.c:172: delay_ms(10);
      00037F 90 00 0A         [24] 1056 	mov	dptr,#(0x0a&0x00ff)
      000382 E4               [12] 1057 	clr	a
      000383 F5 F0            [12] 1058 	mov	b,a
      000385 C0 07            [24] 1059 	push	ar7
      000387 C0 05            [24] 1060 	push	ar5
      000389 C0 04            [24] 1061 	push	ar4
      00038B C0 03            [24] 1062 	push	ar3
      00038D C0 02            [24] 1063 	push	ar2
      00038F C0 00            [24] 1064 	push	ar0
      000391 12 00 8A         [24] 1065 	lcall	_delay_ms
      000394 D0 00            [24] 1066 	pop	ar0
      000396 D0 02            [24] 1067 	pop	ar2
      000398 D0 03            [24] 1068 	pop	ar3
      00039A D0 04            [24] 1069 	pop	ar4
      00039C D0 05            [24] 1070 	pop	ar5
      00039E D0 07            [24] 1071 	pop	ar7
                                   1072 ;	main.c:173: pos = pos >> 1;  // Dịch bit để chuyển chữ số hiển thị
      0003A0 E5 18            [12] 1073 	mov	a,_display_number_pos_131072_25
      0003A2 C3               [12] 1074 	clr	c
      0003A3 13               [12] 1075 	rrc	a
      0003A4 F5 18            [12] 1076 	mov	_display_number_pos_131072_25,a
                                   1077 ;	main.c:163: for (i = 0; i < 4; i++) {
      0003A6 08               [12] 1078 	inc	r0
      0003A7 B8 00 01         [24] 1079 	cjne	r0,#0x00,00137$
      0003AA 0F               [12] 1080 	inc	r7
      0003AB                       1081 00137$:
      0003AB C3               [12] 1082 	clr	c
      0003AC E8               [12] 1083 	mov	a,r0
      0003AD 94 04            [12] 1084 	subb	a,#0x04
      0003AF EF               [12] 1085 	mov	a,r7
      0003B0 64 80            [12] 1086 	xrl	a,#0x80
      0003B2 94 80            [12] 1087 	subb	a,#0x80
      0003B4 50 03            [24] 1088 	jnc	00138$
      0003B6 02 02 E3         [24] 1089 	ljmp	00108$
      0003B9                       1090 00138$:
                                   1091 ;	main.c:175: loop--;
      0003B9 1C               [12] 1092 	dec	r4
      0003BA BC FF 01         [24] 1093 	cjne	r4,#0xff,00139$
      0003BD 1D               [12] 1094 	dec	r5
      0003BE                       1095 00139$:
                                   1096 ;	main.c:177: }
      0003BE 02 02 C9         [24] 1097 	ljmp	00105$
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'main'
                                   1100 ;------------------------------------------------------------
                                   1101 ;	main.c:179: int main() {
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function main
                                   1104 ;	-----------------------------------------
      0003C1                       1105 _main:
                                   1106 ;	main.c:180: P3_6 = 0;  // Tắt còi
                                   1107 ;	assignBit
      0003C1 C2 B6            [12] 1108 	clr	_P3_6
                                   1109 ;	main.c:182: initilize_int0();
      0003C3 12 02 2F         [24] 1110 	lcall	_initilize_int0
                                   1111 ;	main.c:183: initilize_int1();
      0003C6 12 02 61         [24] 1112 	lcall	_initilize_int1
                                   1113 ;	main.c:184: while (1) {
      0003C9                       1114 00109$:
                                   1115 ;	main.c:185: if (startCountDown == 1) {
      0003C9 74 01            [12] 1116 	mov	a,#0x01
      0003CB B5 08 06         [24] 1117 	cjne	a,_startCountDown,00129$
      0003CE 14               [12] 1118 	dec	a
      0003CF B5 09 02         [24] 1119 	cjne	a,(_startCountDown + 1),00129$
      0003D2 80 02            [24] 1120 	sjmp	00130$
      0003D4                       1121 00129$:
      0003D4 80 08            [24] 1122 	sjmp	00106$
      0003D6                       1123 00130$:
                                   1124 ;	main.c:188: if (TR1 == 0) initilize_timer1();
      0003D6 20 8E 0B         [24] 1125 	jb	_TR1,00107$
      0003D9 12 01 4B         [24] 1126 	lcall	_initilize_timer1
      0003DC 80 06            [24] 1127 	sjmp	00107$
      0003DE                       1128 00106$:
                                   1129 ;	main.c:191: if (TR1 == 1) stop_timer1();
      0003DE 30 8E 03         [24] 1130 	jnb	_TR1,00107$
      0003E1 12 01 6C         [24] 1131 	lcall	_stop_timer1
      0003E4                       1132 00107$:
                                   1133 ;	main.c:194: display_number(minutes * 100 + seconds, 1);
      0003E4 85 0A 21         [24] 1134 	mov	__mulint_PARM_2,_minutes
      0003E7 85 0B 22         [24] 1135 	mov	(__mulint_PARM_2 + 1),(_minutes + 1)
      0003EA 90 00 64         [24] 1136 	mov	dptr,#0x0064
      0003ED 12 04 F2         [24] 1137 	lcall	__mulint
      0003F0 E5 82            [12] 1138 	mov	a,dpl
      0003F2 85 83 F0         [24] 1139 	mov	b,dph
      0003F5 25 0C            [12] 1140 	add	a,_seconds
      0003F7 F5 82            [12] 1141 	mov	dpl,a
      0003F9 E5 0D            [12] 1142 	mov	a,(_seconds + 1)
      0003FB 35 F0            [12] 1143 	addc	a,b
      0003FD F5 83            [12] 1144 	mov	dph,a
      0003FF 75 14 01         [24] 1145 	mov	_display_number_PARM_2,#0x01
      000402 75 15 00         [24] 1146 	mov	(_display_number_PARM_2 + 1),#0x00
      000405 12 02 BF         [24] 1147 	lcall	_display_number
                                   1148 ;	main.c:196: }
      000408 80 BF            [24] 1149 	sjmp	00109$
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area CONST   (CODE)
      000706                       1152 _x50ms:
      000706 05 00                 1153 	.byte #0x05, #0x00	;  5
                                   1154 	.area XINIT   (CODE)
                                   1155 	.area CABS    (ABS,CODE)
