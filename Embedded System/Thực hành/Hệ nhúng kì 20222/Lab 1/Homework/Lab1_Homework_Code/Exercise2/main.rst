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
                                     12 	.globl _ISR1
                                     13 	.globl _ISR0
                                     14 	.globl _initExtInterrupt
                                     15 	.globl _hieu_ung_3
                                     16 	.globl _hieu_ung_2
                                     17 	.globl _hieu_ung_1
                                     18 	.globl _delay_ms
                                     19 	.globl _TF2
                                     20 	.globl _EXF2
                                     21 	.globl _RCLK
                                     22 	.globl _TCLK
                                     23 	.globl _EXEN2
                                     24 	.globl _TR2
                                     25 	.globl _C_T2
                                     26 	.globl _CP_RL2
                                     27 	.globl _T2CON_7
                                     28 	.globl _T2CON_6
                                     29 	.globl _T2CON_5
                                     30 	.globl _T2CON_4
                                     31 	.globl _T2CON_3
                                     32 	.globl _T2CON_2
                                     33 	.globl _T2CON_1
                                     34 	.globl _T2CON_0
                                     35 	.globl _PT2
                                     36 	.globl _ET2
                                     37 	.globl _CY
                                     38 	.globl _AC
                                     39 	.globl _F0
                                     40 	.globl _RS1
                                     41 	.globl _RS0
                                     42 	.globl _OV
                                     43 	.globl _F1
                                     44 	.globl _P
                                     45 	.globl _PS
                                     46 	.globl _PT1
                                     47 	.globl _PX1
                                     48 	.globl _PT0
                                     49 	.globl _PX0
                                     50 	.globl _RD
                                     51 	.globl _WR
                                     52 	.globl _T1
                                     53 	.globl _T0
                                     54 	.globl _INT1
                                     55 	.globl _INT0
                                     56 	.globl _TXD
                                     57 	.globl _RXD
                                     58 	.globl _P3_7
                                     59 	.globl _P3_6
                                     60 	.globl _P3_5
                                     61 	.globl _P3_4
                                     62 	.globl _P3_3
                                     63 	.globl _P3_2
                                     64 	.globl _P3_1
                                     65 	.globl _P3_0
                                     66 	.globl _EA
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _TH2
                                    113 	.globl _TL2
                                    114 	.globl _RCAP2H
                                    115 	.globl _RCAP2L
                                    116 	.globl _T2CON
                                    117 	.globl _B
                                    118 	.globl _ACC
                                    119 	.globl _PSW
                                    120 	.globl _IP
                                    121 	.globl _P3
                                    122 	.globl _IE
                                    123 	.globl _P2
                                    124 	.globl _SBUF
                                    125 	.globl _SCON
                                    126 	.globl _P1
                                    127 	.globl _TH1
                                    128 	.globl _TH0
                                    129 	.globl _TL1
                                    130 	.globl _TL0
                                    131 	.globl _TMOD
                                    132 	.globl _TCON
                                    133 	.globl _PCON
                                    134 	.globl _DPH
                                    135 	.globl _DPL
                                    136 	.globl _SP
                                    137 	.globl _P0
                                    138 	.globl _delayms
                                    139 	.globl _hieu_ung_hien_tai
                                    140 	.globl _k
                                    141 	.globl _j
                                    142 	.globl _i
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                           0000C8   169 _T2CON	=	0x00c8
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AF   224 _EA	=	0x00af
                           0000B0   225 _P3_0	=	0x00b0
                           0000B1   226 _P3_1	=	0x00b1
                           0000B2   227 _P3_2	=	0x00b2
                           0000B3   228 _P3_3	=	0x00b3
                           0000B4   229 _P3_4	=	0x00b4
                           0000B5   230 _P3_5	=	0x00b5
                           0000B6   231 _P3_6	=	0x00b6
                           0000B7   232 _P3_7	=	0x00b7
                           0000B0   233 _RXD	=	0x00b0
                           0000B1   234 _TXD	=	0x00b1
                           0000B2   235 _INT0	=	0x00b2
                           0000B3   236 _INT1	=	0x00b3
                           0000B4   237 _T0	=	0x00b4
                           0000B5   238 _T1	=	0x00b5
                           0000B6   239 _WR	=	0x00b6
                           0000B7   240 _RD	=	0x00b7
                           0000B8   241 _PX0	=	0x00b8
                           0000B9   242 _PT0	=	0x00b9
                           0000BA   243 _PX1	=	0x00ba
                           0000BB   244 _PT1	=	0x00bb
                           0000BC   245 _PS	=	0x00bc
                           0000D0   246 _P	=	0x00d0
                           0000D1   247 _F1	=	0x00d1
                           0000D2   248 _OV	=	0x00d2
                           0000D3   249 _RS0	=	0x00d3
                           0000D4   250 _RS1	=	0x00d4
                           0000D5   251 _F0	=	0x00d5
                           0000D6   252 _AC	=	0x00d6
                           0000D7   253 _CY	=	0x00d7
                           0000AD   254 _ET2	=	0x00ad
                           0000BD   255 _PT2	=	0x00bd
                           0000C8   256 _T2CON_0	=	0x00c8
                           0000C9   257 _T2CON_1	=	0x00c9
                           0000CA   258 _T2CON_2	=	0x00ca
                           0000CB   259 _T2CON_3	=	0x00cb
                           0000CC   260 _T2CON_4	=	0x00cc
                           0000CD   261 _T2CON_5	=	0x00cd
                           0000CE   262 _T2CON_6	=	0x00ce
                           0000CF   263 _T2CON_7	=	0x00cf
                           0000C8   264 _CP_RL2	=	0x00c8
                           0000C9   265 _C_T2	=	0x00c9
                           0000CA   266 _TR2	=	0x00ca
                           0000CB   267 _EXEN2	=	0x00cb
                           0000CC   268 _TCLK	=	0x00cc
                           0000CD   269 _RCLK	=	0x00cd
                           0000CE   270 _EXF2	=	0x00ce
                           0000CF   271 _TF2	=	0x00cf
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
      000008                        281 _i::
      000008                        282 	.ds 2
      00000A                        283 _j::
      00000A                        284 	.ds 2
      00000C                        285 _k::
      00000C                        286 	.ds 2
      00000E                        287 _hieu_ung_hien_tai::
      00000E                        288 	.ds 2
      000010                        289 _delayms::
      000010                        290 	.ds 2
      000012                        291 _delay_ms_ms_65536_1:
      000012                        292 	.ds 4
      000016                        293 _hieu_ung_2_countled_65537_13:
      000016                        294 	.ds 2
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable items in internal ram
                                    297 ;--------------------------------------------------------
                                    298 ;--------------------------------------------------------
                                    299 ; Stack segment in internal ram
                                    300 ;--------------------------------------------------------
                                    301 	.area SSEG
      00001C                        302 __start__stack:
      00001C                        303 	.ds	1
                                    304 
                                    305 ;--------------------------------------------------------
                                    306 ; indirectly addressable internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area ISEG    (DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; absolute internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area IABS    (ABS,DATA)
                                    313 	.area IABS    (ABS,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; bit data
                                    316 ;--------------------------------------------------------
                                    317 	.area BSEG    (BIT)
                                    318 ;--------------------------------------------------------
                                    319 ; paged external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area PSEG    (PAG,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; uninitialized external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XSEG    (XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; absolute external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XABS    (ABS,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; initialized external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XISEG   (XDATA)
                                    334 	.area HOME    (CODE)
                                    335 	.area GSINIT0 (CODE)
                                    336 	.area GSINIT1 (CODE)
                                    337 	.area GSINIT2 (CODE)
                                    338 	.area GSINIT3 (CODE)
                                    339 	.area GSINIT4 (CODE)
                                    340 	.area GSINIT5 (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area CSEG    (CODE)
                                    344 ;--------------------------------------------------------
                                    345 ; interrupt vector
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
      000000                        348 __interrupt_vect:
      000000 02 00 19         [24]  349 	ljmp	__sdcc_gsinit_startup
      000003 02 03 4A         [24]  350 	ljmp	_ISR0
      000006                        351 	.ds	5
      00000B 32               [24]  352 	reti
      00000C                        353 	.ds	7
      000013 02 03 75         [24]  354 	ljmp	_ISR1
                                    355 ;--------------------------------------------------------
                                    356 ; global & static initialisations
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT  (CODE)
                                    360 	.area GSFINAL (CODE)
                                    361 	.area GSINIT  (CODE)
                                    362 	.globl __sdcc_gsinit_startup
                                    363 	.globl __sdcc_program_startup
                                    364 	.globl __start__stack
                                    365 	.globl __mcs51_genXINIT
                                    366 	.globl __mcs51_genXRAMCLEAR
                                    367 	.globl __mcs51_genRAMCLEAR
                                    368 ;	main.c:5: int hieu_ung_hien_tai = 1;  // 3 hiệu ứng tương ứng với 1, 2 và 3
      000072 75 0E 01         [24]  369 	mov	_hieu_ung_hien_tai,#0x01
      000075 75 0F 00         [24]  370 	mov	(_hieu_ung_hien_tai + 1),#0x00
                                    371 ;	main.c:6: int delayms = 100;          // Thời gian trễ giữa các lần sáng led
      000078 75 10 64         [24]  372 	mov	_delayms,#0x64
      00007B 75 11 00         [24]  373 	mov	(_delayms + 1),#0x00
                                    374 	.area GSFINAL (CODE)
      00007E 02 00 16         [24]  375 	ljmp	__sdcc_program_startup
                                    376 ;--------------------------------------------------------
                                    377 ; Home
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area HOME    (CODE)
      000016                        381 __sdcc_program_startup:
      000016 02 03 9F         [24]  382 	ljmp	_main
                                    383 ;	return from main will return to caller
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'delay_ms'
                                    390 ;------------------------------------------------------------
                                    391 ;ms                        Allocated with name '_delay_ms_ms_65536_1'
                                    392 ;------------------------------------------------------------
                                    393 ;	main.c:9: void delay_ms(long ms) {
                                    394 ;	-----------------------------------------
                                    395 ;	 function delay_ms
                                    396 ;	-----------------------------------------
      000081                        397 _delay_ms:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      000081 85 82 18         [24]  406 	mov	__mullong_PARM_2,dpl
      000084 85 83 19         [24]  407 	mov	(__mullong_PARM_2 + 1),dph
      000087 85 F0 1A         [24]  408 	mov	(__mullong_PARM_2 + 2),b
      00008A F5 1B            [12]  409 	mov	(__mullong_PARM_2 + 3),a
                                    410 ;	main.c:10: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
      00008C 90 03 E8         [24]  411 	mov	dptr,#0x03e8
      00008F E4               [12]  412 	clr	a
      000090 F5 F0            [12]  413 	mov	b,a
      000092 12 04 C0         [24]  414 	lcall	__mullong
      000095 AC 82            [24]  415 	mov	r4,dpl
      000097 AD 83            [24]  416 	mov	r5,dph
      000099 AE F0            [24]  417 	mov	r6,b
      00009B FF               [12]  418 	mov	r7,a
                                    419 ;	main.c:11: while (ms > 0) {
      00009C                        420 00107$:
      00009C C3               [12]  421 	clr	c
      00009D E4               [12]  422 	clr	a
      00009E 9C               [12]  423 	subb	a,r4
      00009F E4               [12]  424 	clr	a
      0000A0 9D               [12]  425 	subb	a,r5
      0000A1 E4               [12]  426 	clr	a
      0000A2 9E               [12]  427 	subb	a,r6
      0000A3 74 80            [12]  428 	mov	a,#(0x00 ^ 0x80)
      0000A5 8F F0            [24]  429 	mov	b,r7
      0000A7 63 F0 80         [24]  430 	xrl	b,#0x80
      0000AA 95 F0            [12]  431 	subb	a,b
      0000AC 40 01            [24]  432 	jc	00137$
      0000AE 22               [24]  433 	ret
      0000AF                        434 00137$:
                                    435 ;	main.c:13: TMOD = TMOD & 0xF0;
      0000AF 53 89 F0         [24]  436 	anl	_TMOD,#0xf0
                                    437 ;	main.c:15: TMOD = TMOD | 0x01;
      0000B2 43 89 01         [24]  438 	orl	_TMOD,#0x01
                                    439 ;	main.c:16: ET0 = 0;  // Che ngắt Timer 0
                                    440 ;	assignBit
      0000B5 C2 A9            [12]  441 	clr	_ET0
                                    442 ;	main.c:18: if (ms >= 65536) {
      0000B7 C3               [12]  443 	clr	c
      0000B8 EE               [12]  444 	mov	a,r6
      0000B9 94 01            [12]  445 	subb	a,#0x01
      0000BB EF               [12]  446 	mov	a,r7
      0000BC 64 80            [12]  447 	xrl	a,#0x80
      0000BE 94 80            [12]  448 	subb	a,#0x80
      0000C0 40 0F            [24]  449 	jc	00102$
                                    450 ;	main.c:20: TH0 = 0;
                                    451 ;	main.c:21: TL0 = 0;
                                    452 ;	main.c:22: ms -= 65536;
      0000C2 E4               [12]  453 	clr	a
      0000C3 F5 8C            [12]  454 	mov	_TH0,a
      0000C5 F5 8A            [12]  455 	mov	_TL0,a
      0000C7 EE               [12]  456 	mov	a,r6
      0000C8 24 FF            [12]  457 	add	a,#0xff
      0000CA FE               [12]  458 	mov	r6,a
      0000CB EF               [12]  459 	mov	a,r7
      0000CC 34 FF            [12]  460 	addc	a,#0xff
      0000CE FF               [12]  461 	mov	r7,a
      0000CF 80 57            [24]  462 	sjmp	00103$
      0000D1                        463 00102$:
                                    464 ;	main.c:25: ms = 65536 - ms;
      0000D1 E4               [12]  465 	clr	a
      0000D2 C3               [12]  466 	clr	c
      0000D3 9C               [12]  467 	subb	a,r4
      0000D4 F5 12            [12]  468 	mov	_delay_ms_ms_65536_1,a
      0000D6 E4               [12]  469 	clr	a
      0000D7 9D               [12]  470 	subb	a,r5
      0000D8 F5 13            [12]  471 	mov	(_delay_ms_ms_65536_1 + 1),a
      0000DA 74 01            [12]  472 	mov	a,#0x01
      0000DC 9E               [12]  473 	subb	a,r6
      0000DD F5 14            [12]  474 	mov	(_delay_ms_ms_65536_1 + 2),a
      0000DF E4               [12]  475 	clr	a
      0000E0 9F               [12]  476 	subb	a,r7
      0000E1 F5 15            [12]  477 	mov	(_delay_ms_ms_65536_1 + 3),a
                                    478 ;	main.c:26: TH0 = ms / 256;
      0000E3 E4               [12]  479 	clr	a
      0000E4 F5 18            [12]  480 	mov	__divslong_PARM_2,a
      0000E6 75 19 01         [24]  481 	mov	(__divslong_PARM_2 + 1),#0x01
      0000E9 F5 1A            [12]  482 	mov	(__divslong_PARM_2 + 2),a
      0000EB F5 1B            [12]  483 	mov	(__divslong_PARM_2 + 3),a
      0000ED 85 12 82         [24]  484 	mov	dpl,_delay_ms_ms_65536_1
      0000F0 85 13 83         [24]  485 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000F3 85 14 F0         [24]  486 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000F6 E5 15            [12]  487 	mov	a,(_delay_ms_ms_65536_1 + 3)
      0000F8 12 05 7D         [24]  488 	lcall	__divslong
      0000FB A8 82            [24]  489 	mov	r0,dpl
      0000FD 88 8C            [24]  490 	mov	_TH0,r0
                                    491 ;	main.c:27: TL0 = ms % 256;
      0000FF E4               [12]  492 	clr	a
      000100 F5 18            [12]  493 	mov	__modslong_PARM_2,a
      000102 75 19 01         [24]  494 	mov	(__modslong_PARM_2 + 1),#0x01
      000105 F5 1A            [12]  495 	mov	(__modslong_PARM_2 + 2),a
      000107 F5 1B            [12]  496 	mov	(__modslong_PARM_2 + 3),a
      000109 85 12 82         [24]  497 	mov	dpl,_delay_ms_ms_65536_1
      00010C 85 13 83         [24]  498 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      00010F 85 14 F0         [24]  499 	mov	b,(_delay_ms_ms_65536_1 + 2)
      000112 E5 15            [12]  500 	mov	a,(_delay_ms_ms_65536_1 + 3)
      000114 12 05 2E         [24]  501 	lcall	__modslong
      000117 A8 82            [24]  502 	mov	r0,dpl
      000119 A9 83            [24]  503 	mov	r1,dph
      00011B AA F0            [24]  504 	mov	r2,b
      00011D FB               [12]  505 	mov	r3,a
      00011E 88 8A            [24]  506 	mov	_TL0,r0
                                    507 ;	main.c:28: ms = 0;
      000120 7C 00            [12]  508 	mov	r4,#0x00
      000122 7D 00            [12]  509 	mov	r5,#0x00
      000124 7E 00            [12]  510 	mov	r6,#0x00
      000126 7F 00            [12]  511 	mov	r7,#0x00
      000128                        512 00103$:
                                    513 ;	main.c:30: TF0 = 0;  // Xóa cờ tràn Timer 0
                                    514 ;	assignBit
      000128 C2 8D            [12]  515 	clr	_TF0
                                    516 ;	main.c:31: TR0 = 1;  // Khởi động Timer 0
                                    517 ;	assignBit
      00012A D2 8C            [12]  518 	setb	_TR0
                                    519 ;	main.c:32: while (TF0 == 0)
      00012C                        520 00104$:
      00012C 30 8D FD         [24]  521 	jnb	_TF0,00104$
                                    522 ;	main.c:34: TR0 = 0;  // Dừng Timer 0
                                    523 ;	assignBit
      00012F C2 8C            [12]  524 	clr	_TR0
                                    525 ;	main.c:36: }
      000131 02 00 9C         [24]  526 	ljmp	00107$
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'hieu_ung_1'
                                    529 ;------------------------------------------------------------
                                    530 ;hieu_ung_1                Allocated to registers r7 
                                    531 ;------------------------------------------------------------
                                    532 ;	main.c:39: void hieu_ung_1() {
                                    533 ;	-----------------------------------------
                                    534 ;	 function hieu_ung_1
                                    535 ;	-----------------------------------------
      000134                        536 _hieu_ung_1:
                                    537 ;	main.c:40: led = 0xFF;  // Tắt tất cả led
      000134 75 90 FF         [24]  538 	mov	_P1,#0xff
                                    539 ;	main.c:41: delay_ms(delayms);
      000137 AC 10            [24]  540 	mov	r4,_delayms
      000139 E5 11            [12]  541 	mov	a,(_delayms + 1)
      00013B FD               [12]  542 	mov	r5,a
      00013C 33               [12]  543 	rlc	a
      00013D 95 E0            [12]  544 	subb	a,acc
      00013F FE               [12]  545 	mov	r6,a
      000140 8C 82            [24]  546 	mov	dpl,r4
      000142 8D 83            [24]  547 	mov	dph,r5
      000144 8E F0            [24]  548 	mov	b,r6
      000146 12 00 81         [24]  549 	lcall	_delay_ms
                                    550 ;	main.c:43: unsigned char hieu_ung_1 = 0x03;  // Cho 2 led đầu sáng
      000149 7F 03            [12]  551 	mov	r7,#0x03
                                    552 ;	main.c:45: for (j = 0; j < 7; j++) {
      00014B E4               [12]  553 	clr	a
      00014C F5 0A            [12]  554 	mov	_j,a
      00014E F5 0B            [12]  555 	mov	(_j + 1),a
      000150                        556 00107$:
                                    557 ;	main.c:47: if (hieu_ung_hien_tai != 1) return;
      000150 74 01            [12]  558 	mov	a,#0x01
      000152 B5 0E 06         [24]  559 	cjne	a,_hieu_ung_hien_tai,00133$
      000155 14               [12]  560 	dec	a
      000156 B5 0F 02         [24]  561 	cjne	a,(_hieu_ung_hien_tai + 1),00133$
      000159 80 01            [24]  562 	sjmp	00102$
      00015B                        563 00133$:
      00015B 22               [24]  564 	ret
      00015C                        565 00102$:
                                    566 ;	main.c:49: led = ~hieu_ung_1;
      00015C EF               [12]  567 	mov	a,r7
      00015D F4               [12]  568 	cpl	a
      00015E F5 90            [12]  569 	mov	_P1,a
                                    570 ;	main.c:50: delay_ms(delayms);
      000160 AB 10            [24]  571 	mov	r3,_delayms
      000162 E5 11            [12]  572 	mov	a,(_delayms + 1)
      000164 FC               [12]  573 	mov	r4,a
      000165 33               [12]  574 	rlc	a
      000166 95 E0            [12]  575 	subb	a,acc
      000168 FD               [12]  576 	mov	r5,a
      000169 8B 82            [24]  577 	mov	dpl,r3
      00016B 8C 83            [24]  578 	mov	dph,r4
      00016D 8D F0            [24]  579 	mov	b,r5
      00016F C0 07            [24]  580 	push	ar7
      000171 12 00 81         [24]  581 	lcall	_delay_ms
      000174 D0 07            [24]  582 	pop	ar7
                                    583 ;	main.c:51: hieu_ung_1 = hieu_ung_1 << 1;
      000176 8F 06            [24]  584 	mov	ar6,r7
      000178 EE               [12]  585 	mov	a,r6
      000179 2E               [12]  586 	add	a,r6
      00017A FF               [12]  587 	mov	r7,a
                                    588 ;	main.c:45: for (j = 0; j < 7; j++) {
      00017B 05 0A            [12]  589 	inc	_j
      00017D E4               [12]  590 	clr	a
      00017E B5 0A 02         [24]  591 	cjne	a,_j,00134$
      000181 05 0B            [12]  592 	inc	(_j + 1)
      000183                        593 00134$:
      000183 C3               [12]  594 	clr	c
      000184 E5 0A            [12]  595 	mov	a,_j
      000186 94 07            [12]  596 	subb	a,#0x07
      000188 E5 0B            [12]  597 	mov	a,(_j + 1)
      00018A 64 80            [12]  598 	xrl	a,#0x80
      00018C 94 80            [12]  599 	subb	a,#0x80
      00018E 40 C0            [24]  600 	jc	00107$
                                    601 ;	main.c:55: hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
      000190 7F C0            [12]  602 	mov	r7,#0xc0
                                    603 ;	main.c:56: for (j = 0; j < 7; j++) {
      000192 E4               [12]  604 	clr	a
      000193 F5 0A            [12]  605 	mov	_j,a
      000195 F5 0B            [12]  606 	mov	(_j + 1),a
      000197                        607 00109$:
                                    608 ;	main.c:58: if (hieu_ung_hien_tai != 1) return;
      000197 74 01            [12]  609 	mov	a,#0x01
      000199 B5 0E 06         [24]  610 	cjne	a,_hieu_ung_hien_tai,00136$
      00019C 14               [12]  611 	dec	a
      00019D B5 0F 02         [24]  612 	cjne	a,(_hieu_ung_hien_tai + 1),00136$
      0001A0 80 01            [24]  613 	sjmp	00105$
      0001A2                        614 00136$:
      0001A2 22               [24]  615 	ret
      0001A3                        616 00105$:
                                    617 ;	main.c:60: led = ~hieu_ung_1;
      0001A3 EF               [12]  618 	mov	a,r7
      0001A4 F4               [12]  619 	cpl	a
      0001A5 F5 90            [12]  620 	mov	_P1,a
                                    621 ;	main.c:61: delay_ms(delayms);
      0001A7 AB 10            [24]  622 	mov	r3,_delayms
      0001A9 E5 11            [12]  623 	mov	a,(_delayms + 1)
      0001AB FC               [12]  624 	mov	r4,a
      0001AC 33               [12]  625 	rlc	a
      0001AD 95 E0            [12]  626 	subb	a,acc
      0001AF FD               [12]  627 	mov	r5,a
      0001B0 8B 82            [24]  628 	mov	dpl,r3
      0001B2 8C 83            [24]  629 	mov	dph,r4
      0001B4 8D F0            [24]  630 	mov	b,r5
      0001B6 C0 07            [24]  631 	push	ar7
      0001B8 12 00 81         [24]  632 	lcall	_delay_ms
      0001BB D0 07            [24]  633 	pop	ar7
                                    634 ;	main.c:62: hieu_ung_1 = hieu_ung_1 >> 1;
      0001BD EF               [12]  635 	mov	a,r7
      0001BE C3               [12]  636 	clr	c
      0001BF 13               [12]  637 	rrc	a
      0001C0 FF               [12]  638 	mov	r7,a
                                    639 ;	main.c:56: for (j = 0; j < 7; j++) {
      0001C1 05 0A            [12]  640 	inc	_j
      0001C3 E4               [12]  641 	clr	a
      0001C4 B5 0A 02         [24]  642 	cjne	a,_j,00137$
      0001C7 05 0B            [12]  643 	inc	(_j + 1)
      0001C9                        644 00137$:
      0001C9 C3               [12]  645 	clr	c
      0001CA E5 0A            [12]  646 	mov	a,_j
      0001CC 94 07            [12]  647 	subb	a,#0x07
      0001CE E5 0B            [12]  648 	mov	a,(_j + 1)
      0001D0 64 80            [12]  649 	xrl	a,#0x80
      0001D2 94 80            [12]  650 	subb	a,#0x80
      0001D4 40 C1            [24]  651 	jc	00109$
                                    652 ;	main.c:64: }
      0001D6 22               [24]  653 	ret
                                    654 ;------------------------------------------------------------
                                    655 ;Allocation info for local variables in function 'hieu_ung_2'
                                    656 ;------------------------------------------------------------
                                    657 ;giu_hieu_ung              Allocated to registers r7 
                                    658 ;countled                  Allocated with name '_hieu_ung_2_countled_65537_13'
                                    659 ;hieu_ung_2                Allocated to registers r4 
                                    660 ;------------------------------------------------------------
                                    661 ;	main.c:67: void hieu_ung_2() {
                                    662 ;	-----------------------------------------
                                    663 ;	 function hieu_ung_2
                                    664 ;	-----------------------------------------
      0001D7                        665 _hieu_ung_2:
                                    666 ;	main.c:68: led = 0xFF;  // Tắt tất cả led
      0001D7 75 90 FF         [24]  667 	mov	_P1,#0xff
                                    668 ;	main.c:69: delay_ms(delayms);
      0001DA AC 10            [24]  669 	mov	r4,_delayms
      0001DC E5 11            [12]  670 	mov	a,(_delayms + 1)
      0001DE FD               [12]  671 	mov	r5,a
      0001DF 33               [12]  672 	rlc	a
      0001E0 95 E0            [12]  673 	subb	a,acc
      0001E2 FE               [12]  674 	mov	r6,a
      0001E3 8C 82            [24]  675 	mov	dpl,r4
      0001E5 8D 83            [24]  676 	mov	dph,r5
      0001E7 8E F0            [24]  677 	mov	b,r6
      0001E9 12 00 81         [24]  678 	lcall	_delay_ms
                                    679 ;	main.c:72: unsigned char giu_hieu_ung = 0x00;
                                    680 ;	main.c:77: for (j = 0; j < 8; j++) {
      0001EC E4               [12]  681 	clr	a
      0001ED FF               [12]  682 	mov	r7,a
      0001EE F5 0A            [12]  683 	mov	_j,a
      0001F0 F5 0B            [12]  684 	mov	(_j + 1),a
      0001F2 75 16 08         [24]  685 	mov	_hieu_ung_2_countled_65537_13,#0x08
      0001F5 F5 17            [12]  686 	mov	(_hieu_ung_2_countled_65537_13 + 1),a
      0001F7                        687 00113$:
                                    688 ;	main.c:78: unsigned char hieu_ung_2 = 0x01;  // bật sáng led đầu tiên
      0001F7 7C 01            [12]  689 	mov	r4,#0x01
                                    690 ;	main.c:80: for (k = 0; k < countled; k++) {
      0001F9 E4               [12]  691 	clr	a
      0001FA F5 0C            [12]  692 	mov	_k,a
      0001FC F5 0D            [12]  693 	mov	(_k + 1),a
      0001FE E5 16            [12]  694 	mov	a,_hieu_ung_2_countled_65537_13
      000200 24 FF            [12]  695 	add	a,#0xff
      000202 FA               [12]  696 	mov	r2,a
      000203 E5 17            [12]  697 	mov	a,(_hieu_ung_2_countled_65537_13 + 1)
      000205 34 FF            [12]  698 	addc	a,#0xff
      000207 FB               [12]  699 	mov	r3,a
      000208                        700 00111$:
      000208 C3               [12]  701 	clr	c
      000209 E5 0C            [12]  702 	mov	a,_k
      00020B 95 16            [12]  703 	subb	a,_hieu_ung_2_countled_65537_13
      00020D E5 0D            [12]  704 	mov	a,(_k + 1)
      00020F 64 80            [12]  705 	xrl	a,#0x80
      000211 85 17 F0         [24]  706 	mov	b,(_hieu_ung_2_countled_65537_13 + 1)
      000214 63 F0 80         [24]  707 	xrl	b,#0x80
      000217 95 F0            [12]  708 	subb	a,b
      000219 50 4C            [24]  709 	jnc	00105$
                                    710 ;	main.c:82: if (hieu_ung_hien_tai != 2) return;
      00021B 74 02            [12]  711 	mov	a,#0x02
      00021D B5 0E 06         [24]  712 	cjne	a,_hieu_ung_hien_tai,00152$
      000220 E4               [12]  713 	clr	a
      000221 B5 0F 02         [24]  714 	cjne	a,(_hieu_ung_hien_tai + 1),00152$
      000224 80 01            [24]  715 	sjmp	00102$
      000226                        716 00152$:
      000226 22               [24]  717 	ret
      000227                        718 00102$:
                                    719 ;	main.c:85: led = ~(hieu_ung_2 | giu_hieu_ung);
      000227 EF               [12]  720 	mov	a,r7
      000228 4C               [12]  721 	orl	a,r4
      000229 F4               [12]  722 	cpl	a
      00022A F5 90            [12]  723 	mov	_P1,a
                                    724 ;	main.c:86: delay_ms(delayms);
      00022C A8 10            [24]  725 	mov	r0,_delayms
      00022E E5 11            [12]  726 	mov	a,(_delayms + 1)
      000230 F9               [12]  727 	mov	r1,a
      000231 33               [12]  728 	rlc	a
      000232 95 E0            [12]  729 	subb	a,acc
      000234 FD               [12]  730 	mov	r5,a
      000235 88 82            [24]  731 	mov	dpl,r0
      000237 89 83            [24]  732 	mov	dph,r1
      000239 8D F0            [24]  733 	mov	b,r5
      00023B C0 07            [24]  734 	push	ar7
      00023D C0 04            [24]  735 	push	ar4
      00023F C0 03            [24]  736 	push	ar3
      000241 C0 02            [24]  737 	push	ar2
      000243 12 00 81         [24]  738 	lcall	_delay_ms
      000246 D0 02            [24]  739 	pop	ar2
      000248 D0 03            [24]  740 	pop	ar3
      00024A D0 04            [24]  741 	pop	ar4
      00024C D0 07            [24]  742 	pop	ar7
                                    743 ;	main.c:89: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
      00024E EA               [12]  744 	mov	a,r2
      00024F B5 0C 06         [24]  745 	cjne	a,_k,00153$
      000252 EB               [12]  746 	mov	a,r3
      000253 B5 0D 02         [24]  747 	cjne	a,(_k + 1),00153$
      000256 80 05            [24]  748 	sjmp	00112$
      000258                        749 00153$:
      000258 8C 06            [24]  750 	mov	ar6,r4
      00025A EE               [12]  751 	mov	a,r6
      00025B 2E               [12]  752 	add	a,r6
      00025C FC               [12]  753 	mov	r4,a
      00025D                        754 00112$:
                                    755 ;	main.c:80: for (k = 0; k < countled; k++) {
      00025D 05 0C            [12]  756 	inc	_k
      00025F E4               [12]  757 	clr	a
      000260 B5 0C A5         [24]  758 	cjne	a,_k,00111$
      000263 05 0D            [12]  759 	inc	(_k + 1)
      000265 80 A1            [24]  760 	sjmp	00111$
      000267                        761 00105$:
                                    762 ;	main.c:92: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
      000267 EC               [12]  763 	mov	a,r4
      000268 42 07            [12]  764 	orl	ar7,a
                                    765 ;	main.c:93: countled--;  // Giảm vòng lặp dịch led
      00026A 15 16            [12]  766 	dec	_hieu_ung_2_countled_65537_13
      00026C 74 FF            [12]  767 	mov	a,#0xff
      00026E B5 16 02         [24]  768 	cjne	a,_hieu_ung_2_countled_65537_13,00155$
      000271 15 17            [12]  769 	dec	(_hieu_ung_2_countled_65537_13 + 1)
      000273                        770 00155$:
                                    771 ;	main.c:77: for (j = 0; j < 8; j++) {
      000273 05 0A            [12]  772 	inc	_j
      000275 E4               [12]  773 	clr	a
      000276 B5 0A 02         [24]  774 	cjne	a,_j,00156$
      000279 05 0B            [12]  775 	inc	(_j + 1)
      00027B                        776 00156$:
      00027B C3               [12]  777 	clr	c
      00027C E5 0A            [12]  778 	mov	a,_j
      00027E 94 08            [12]  779 	subb	a,#0x08
      000280 E5 0B            [12]  780 	mov	a,(_j + 1)
      000282 64 80            [12]  781 	xrl	a,#0x80
      000284 94 80            [12]  782 	subb	a,#0x80
      000286 50 03            [24]  783 	jnc	00157$
      000288 02 01 F7         [24]  784 	ljmp	00113$
      00028B                        785 00157$:
                                    786 ;	main.c:97: for (j = 0; j < 8; j++) {
      00028B E4               [12]  787 	clr	a
      00028C F5 0A            [12]  788 	mov	_j,a
      00028E F5 0B            [12]  789 	mov	(_j + 1),a
      000290                        790 00115$:
                                    791 ;	main.c:99: if (hieu_ung_hien_tai != 2) return;
      000290 74 02            [12]  792 	mov	a,#0x02
      000292 B5 0E 06         [24]  793 	cjne	a,_hieu_ung_hien_tai,00158$
      000295 E4               [12]  794 	clr	a
      000296 B5 0F 02         [24]  795 	cjne	a,(_hieu_ung_hien_tai + 1),00158$
      000299 80 01            [24]  796 	sjmp	00108$
      00029B                        797 00158$:
      00029B 22               [24]  798 	ret
      00029C                        799 00108$:
                                    800 ;	main.c:101: led = ~giu_hieu_ung;
      00029C EF               [12]  801 	mov	a,r7
      00029D F4               [12]  802 	cpl	a
      00029E F5 90            [12]  803 	mov	_P1,a
                                    804 ;	main.c:102: delay_ms(delayms);
      0002A0 AB 10            [24]  805 	mov	r3,_delayms
      0002A2 E5 11            [12]  806 	mov	a,(_delayms + 1)
      0002A4 FC               [12]  807 	mov	r4,a
      0002A5 33               [12]  808 	rlc	a
      0002A6 95 E0            [12]  809 	subb	a,acc
      0002A8 FD               [12]  810 	mov	r5,a
      0002A9 8B 82            [24]  811 	mov	dpl,r3
      0002AB 8C 83            [24]  812 	mov	dph,r4
      0002AD 8D F0            [24]  813 	mov	b,r5
      0002AF C0 07            [24]  814 	push	ar7
      0002B1 12 00 81         [24]  815 	lcall	_delay_ms
      0002B4 D0 07            [24]  816 	pop	ar7
                                    817 ;	main.c:104: giu_hieu_ung = giu_hieu_ung >> 1;
      0002B6 EF               [12]  818 	mov	a,r7
      0002B7 C3               [12]  819 	clr	c
      0002B8 13               [12]  820 	rrc	a
      0002B9 FF               [12]  821 	mov	r7,a
                                    822 ;	main.c:97: for (j = 0; j < 8; j++) {
      0002BA 05 0A            [12]  823 	inc	_j
      0002BC E4               [12]  824 	clr	a
      0002BD B5 0A 02         [24]  825 	cjne	a,_j,00159$
      0002C0 05 0B            [12]  826 	inc	(_j + 1)
      0002C2                        827 00159$:
      0002C2 C3               [12]  828 	clr	c
      0002C3 E5 0A            [12]  829 	mov	a,_j
      0002C5 94 08            [12]  830 	subb	a,#0x08
      0002C7 E5 0B            [12]  831 	mov	a,(_j + 1)
      0002C9 64 80            [12]  832 	xrl	a,#0x80
      0002CB 94 80            [12]  833 	subb	a,#0x80
      0002CD 40 C1            [24]  834 	jc	00115$
                                    835 ;	main.c:106: }
      0002CF 22               [24]  836 	ret
                                    837 ;------------------------------------------------------------
                                    838 ;Allocation info for local variables in function 'hieu_ung_3'
                                    839 ;------------------------------------------------------------
                                    840 ;hieu_ung_3_1              Allocated to registers r7 
                                    841 ;hieu_ung_3_2              Allocated to registers r6 
                                    842 ;------------------------------------------------------------
                                    843 ;	main.c:109: void hieu_ung_3() {
                                    844 ;	-----------------------------------------
                                    845 ;	 function hieu_ung_3
                                    846 ;	-----------------------------------------
      0002D0                        847 _hieu_ung_3:
                                    848 ;	main.c:110: led = 0xFF;  // Tắt tất cả các led
      0002D0 75 90 FF         [24]  849 	mov	_P1,#0xff
                                    850 ;	main.c:111: delay_ms(delayms);
      0002D3 AC 10            [24]  851 	mov	r4,_delayms
      0002D5 E5 11            [12]  852 	mov	a,(_delayms + 1)
      0002D7 FD               [12]  853 	mov	r5,a
      0002D8 33               [12]  854 	rlc	a
      0002D9 95 E0            [12]  855 	subb	a,acc
      0002DB FE               [12]  856 	mov	r6,a
      0002DC 8C 82            [24]  857 	mov	dpl,r4
      0002DE 8D 83            [24]  858 	mov	dph,r5
      0002E0 8E F0            [24]  859 	mov	b,r6
      0002E2 12 00 81         [24]  860 	lcall	_delay_ms
                                    861 ;	main.c:113: unsigned char hieu_ung_3_1 = 0x01;  // Bật led đầu tiên
      0002E5 7F 01            [12]  862 	mov	r7,#0x01
                                    863 ;	main.c:114: unsigned char hieu_ung_3_2 = 0x80;  // Bật led cuối cùng
      0002E7 7E 80            [12]  864 	mov	r6,#0x80
                                    865 ;	main.c:115: for (j = 0; j < 8; j++) {
      0002E9 E4               [12]  866 	clr	a
      0002EA F5 0A            [12]  867 	mov	_j,a
      0002EC F5 0B            [12]  868 	mov	(_j + 1),a
      0002EE                        869 00106$:
                                    870 ;	main.c:117: if (hieu_ung_hien_tai != 3) return;
      0002EE 74 03            [12]  871 	mov	a,#0x03
      0002F0 B5 0E 06         [24]  872 	cjne	a,_hieu_ung_hien_tai,00122$
      0002F3 E4               [12]  873 	clr	a
      0002F4 B5 0F 02         [24]  874 	cjne	a,(_hieu_ung_hien_tai + 1),00122$
      0002F7 80 01            [24]  875 	sjmp	00102$
      0002F9                        876 00122$:
      0002F9 22               [24]  877 	ret
      0002FA                        878 00102$:
                                    879 ;	main.c:118: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
      0002FA EE               [12]  880 	mov	a,r6
      0002FB 4F               [12]  881 	orl	a,r7
      0002FC FD               [12]  882 	mov	r5,a
      0002FD F4               [12]  883 	cpl	a
      0002FE F5 90            [12]  884 	mov	_P1,a
                                    885 ;	main.c:121: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
      000300 BF 08 02         [24]  886 	cjne	r7,#0x08,00123$
      000303 80 1A            [24]  887 	sjmp	00104$
      000305                        888 00123$:
      000305 AA 10            [24]  889 	mov	r2,_delayms
      000307 E5 11            [12]  890 	mov	a,(_delayms + 1)
      000309 FB               [12]  891 	mov	r3,a
      00030A 33               [12]  892 	rlc	a
      00030B 95 E0            [12]  893 	subb	a,acc
      00030D FC               [12]  894 	mov	r4,a
      00030E 8A 82            [24]  895 	mov	dpl,r2
      000310 8B 83            [24]  896 	mov	dph,r3
      000312 8C F0            [24]  897 	mov	b,r4
      000314 C0 07            [24]  898 	push	ar7
      000316 C0 06            [24]  899 	push	ar6
      000318 12 00 81         [24]  900 	lcall	_delay_ms
      00031B D0 06            [24]  901 	pop	ar6
      00031D D0 07            [24]  902 	pop	ar7
      00031F                        903 00104$:
                                    904 ;	main.c:123: hieu_ung_3_1 = hieu_ung_3_1 << 1;
      00031F 8F 05            [24]  905 	mov	ar5,r7
      000321 ED               [12]  906 	mov	a,r5
      000322 2D               [12]  907 	add	a,r5
      000323 FF               [12]  908 	mov	r7,a
                                    909 ;	main.c:124: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
      000324 EE               [12]  910 	mov	a,r6
      000325 C3               [12]  911 	clr	c
      000326 13               [12]  912 	rrc	a
      000327 FE               [12]  913 	mov	r6,a
                                    914 ;	main.c:115: for (j = 0; j < 8; j++) {
      000328 05 0A            [12]  915 	inc	_j
      00032A E4               [12]  916 	clr	a
      00032B B5 0A 02         [24]  917 	cjne	a,_j,00124$
      00032E 05 0B            [12]  918 	inc	(_j + 1)
      000330                        919 00124$:
      000330 C3               [12]  920 	clr	c
      000331 E5 0A            [12]  921 	mov	a,_j
      000333 94 08            [12]  922 	subb	a,#0x08
      000335 E5 0B            [12]  923 	mov	a,(_j + 1)
      000337 64 80            [12]  924 	xrl	a,#0x80
      000339 94 80            [12]  925 	subb	a,#0x80
      00033B 40 B1            [24]  926 	jc	00106$
                                    927 ;	main.c:126: }
      00033D 22               [24]  928 	ret
                                    929 ;------------------------------------------------------------
                                    930 ;Allocation info for local variables in function 'initExtInterrupt'
                                    931 ;------------------------------------------------------------
                                    932 ;	main.c:129: void initExtInterrupt() {
                                    933 ;	-----------------------------------------
                                    934 ;	 function initExtInterrupt
                                    935 ;	-----------------------------------------
      00033E                        936 _initExtInterrupt:
                                    937 ;	main.c:130: P3_2 = 1;
                                    938 ;	assignBit
      00033E D2 B2            [12]  939 	setb	_P3_2
                                    940 ;	main.c:131: P3_3 = 1;
                                    941 ;	assignBit
      000340 D2 B3            [12]  942 	setb	_P3_3
                                    943 ;	main.c:132: IT0 = 1;
                                    944 ;	assignBit
      000342 D2 88            [12]  945 	setb	_IT0
                                    946 ;	main.c:133: IT1 = 1;
                                    947 ;	assignBit
      000344 D2 8A            [12]  948 	setb	_IT1
                                    949 ;	main.c:134: IE = 0x85;
      000346 75 A8 85         [24]  950 	mov	_IE,#0x85
                                    951 ;	main.c:135: }
      000349 22               [24]  952 	ret
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'ISR0'
                                    955 ;------------------------------------------------------------
                                    956 ;	main.c:138: void ISR0() __interrupt(0) {
                                    957 ;	-----------------------------------------
                                    958 ;	 function ISR0
                                    959 ;	-----------------------------------------
      00034A                        960 _ISR0:
      00034A C0 E0            [24]  961 	push	acc
      00034C C0 D0            [24]  962 	push	psw
                                    963 ;	main.c:139: EA = 0;  // Che toàn bộ các ngắt
                                    964 ;	assignBit
      00034E C2 AF            [12]  965 	clr	_EA
                                    966 ;	main.c:141: if (hieu_ung_hien_tai == 1)
      000350 74 01            [12]  967 	mov	a,#0x01
      000352 B5 0E 06         [24]  968 	cjne	a,_hieu_ung_hien_tai,00110$
      000355 14               [12]  969 	dec	a
      000356 B5 0F 02         [24]  970 	cjne	a,(_hieu_ung_hien_tai + 1),00110$
      000359 80 02            [24]  971 	sjmp	00111$
      00035B                        972 00110$:
      00035B 80 08            [24]  973 	sjmp	00102$
      00035D                        974 00111$:
                                    975 ;	main.c:142: hieu_ung_hien_tai = 3;
      00035D 75 0E 03         [24]  976 	mov	_hieu_ung_hien_tai,#0x03
      000360 75 0F 00         [24]  977 	mov	(_hieu_ung_hien_tai + 1),#0x00
      000363 80 09            [24]  978 	sjmp	00103$
      000365                        979 00102$:
                                    980 ;	main.c:144: hieu_ung_hien_tai--;
      000365 15 0E            [12]  981 	dec	_hieu_ung_hien_tai
      000367 74 FF            [12]  982 	mov	a,#0xff
      000369 B5 0E 02         [24]  983 	cjne	a,_hieu_ung_hien_tai,00112$
      00036C 15 0F            [12]  984 	dec	(_hieu_ung_hien_tai + 1)
      00036E                        985 00112$:
      00036E                        986 00103$:
                                    987 ;	main.c:145: EA = 1;  // Cho phép ngắt
                                    988 ;	assignBit
      00036E D2 AF            [12]  989 	setb	_EA
                                    990 ;	main.c:146: }
      000370 D0 D0            [24]  991 	pop	psw
      000372 D0 E0            [24]  992 	pop	acc
      000374 32               [24]  993 	reti
                                    994 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    995 ;	eliminated unneeded push/pop dpl
                                    996 ;	eliminated unneeded push/pop dph
                                    997 ;	eliminated unneeded push/pop b
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'ISR1'
                                   1000 ;------------------------------------------------------------
                                   1001 ;	main.c:149: void ISR1() __interrupt(2) {
                                   1002 ;	-----------------------------------------
                                   1003 ;	 function ISR1
                                   1004 ;	-----------------------------------------
      000375                       1005 _ISR1:
      000375 C0 E0            [24] 1006 	push	acc
      000377 C0 D0            [24] 1007 	push	psw
                                   1008 ;	main.c:150: EA = 0;  // Che toàn bộ các ngắt
                                   1009 ;	assignBit
      000379 C2 AF            [12] 1010 	clr	_EA
                                   1011 ;	main.c:152: if (hieu_ung_hien_tai == 3)
      00037B 74 03            [12] 1012 	mov	a,#0x03
      00037D B5 0E 06         [24] 1013 	cjne	a,_hieu_ung_hien_tai,00110$
      000380 E4               [12] 1014 	clr	a
      000381 B5 0F 02         [24] 1015 	cjne	a,(_hieu_ung_hien_tai + 1),00110$
      000384 80 02            [24] 1016 	sjmp	00111$
      000386                       1017 00110$:
      000386 80 08            [24] 1018 	sjmp	00102$
      000388                       1019 00111$:
                                   1020 ;	main.c:153: hieu_ung_hien_tai = 1;
      000388 75 0E 01         [24] 1021 	mov	_hieu_ung_hien_tai,#0x01
      00038B 75 0F 00         [24] 1022 	mov	(_hieu_ung_hien_tai + 1),#0x00
      00038E 80 08            [24] 1023 	sjmp	00103$
      000390                       1024 00102$:
                                   1025 ;	main.c:155: hieu_ung_hien_tai++;
      000390 05 0E            [12] 1026 	inc	_hieu_ung_hien_tai
      000392 E4               [12] 1027 	clr	a
      000393 B5 0E 02         [24] 1028 	cjne	a,_hieu_ung_hien_tai,00112$
      000396 05 0F            [12] 1029 	inc	(_hieu_ung_hien_tai + 1)
      000398                       1030 00112$:
      000398                       1031 00103$:
                                   1032 ;	main.c:156: EA = 1;  // Cho phép ngắt
                                   1033 ;	assignBit
      000398 D2 AF            [12] 1034 	setb	_EA
                                   1035 ;	main.c:157: }
      00039A D0 D0            [24] 1036 	pop	psw
      00039C D0 E0            [24] 1037 	pop	acc
      00039E 32               [24] 1038 	reti
                                   1039 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1040 ;	eliminated unneeded push/pop dpl
                                   1041 ;	eliminated unneeded push/pop dph
                                   1042 ;	eliminated unneeded push/pop b
                                   1043 ;------------------------------------------------------------
                                   1044 ;Allocation info for local variables in function 'main'
                                   1045 ;------------------------------------------------------------
                                   1046 ;	main.c:159: int main() {
                                   1047 ;	-----------------------------------------
                                   1048 ;	 function main
                                   1049 ;	-----------------------------------------
      00039F                       1050 _main:
                                   1051 ;	main.c:161: initExtInterrupt();
      00039F 12 03 3E         [24] 1052 	lcall	_initExtInterrupt
                                   1053 ;	main.c:162: while (1) {
      0003A2                       1054 00110$:
                                   1055 ;	main.c:163: if (hieu_ung_hien_tai == 1) {
      0003A2 74 01            [12] 1056 	mov	a,#0x01
      0003A4 B5 0E 06         [24] 1057 	cjne	a,_hieu_ung_hien_tai,00130$
      0003A7 14               [12] 1058 	dec	a
      0003A8 B5 0F 02         [24] 1059 	cjne	a,(_hieu_ung_hien_tai + 1),00130$
      0003AB 80 02            [24] 1060 	sjmp	00131$
      0003AD                       1061 00130$:
      0003AD 80 05            [24] 1062 	sjmp	00107$
      0003AF                       1063 00131$:
                                   1064 ;	main.c:164: hieu_ung_1();
      0003AF 12 01 34         [24] 1065 	lcall	_hieu_ung_1
      0003B2 80 EE            [24] 1066 	sjmp	00110$
      0003B4                       1067 00107$:
                                   1068 ;	main.c:165: } else if (hieu_ung_hien_tai == 2) {
      0003B4 74 02            [12] 1069 	mov	a,#0x02
      0003B6 B5 0E 06         [24] 1070 	cjne	a,_hieu_ung_hien_tai,00132$
      0003B9 E4               [12] 1071 	clr	a
      0003BA B5 0F 02         [24] 1072 	cjne	a,(_hieu_ung_hien_tai + 1),00132$
      0003BD 80 02            [24] 1073 	sjmp	00133$
      0003BF                       1074 00132$:
      0003BF 80 05            [24] 1075 	sjmp	00104$
      0003C1                       1076 00133$:
                                   1077 ;	main.c:166: hieu_ung_2();
      0003C1 12 01 D7         [24] 1078 	lcall	_hieu_ung_2
      0003C4 80 DC            [24] 1079 	sjmp	00110$
      0003C6                       1080 00104$:
                                   1081 ;	main.c:167: } else if (hieu_ung_hien_tai == 3) {
      0003C6 74 03            [12] 1082 	mov	a,#0x03
      0003C8 B5 0E 06         [24] 1083 	cjne	a,_hieu_ung_hien_tai,00134$
      0003CB E4               [12] 1084 	clr	a
      0003CC B5 0F 02         [24] 1085 	cjne	a,(_hieu_ung_hien_tai + 1),00134$
      0003CF 80 02            [24] 1086 	sjmp	00135$
      0003D1                       1087 00134$:
      0003D1 80 CF            [24] 1088 	sjmp	00110$
      0003D3                       1089 00135$:
                                   1090 ;	main.c:168: hieu_ung_3();
      0003D3 12 02 D0         [24] 1091 	lcall	_hieu_ung_3
                                   1092 ;	main.c:171: }
      0003D6 80 CA            [24] 1093 	sjmp	00110$
                                   1094 	.area CSEG    (CODE)
                                   1095 	.area CONST   (CODE)
                                   1096 	.area XINIT   (CODE)
                                   1097 	.area CABS    (ABS,CODE)
