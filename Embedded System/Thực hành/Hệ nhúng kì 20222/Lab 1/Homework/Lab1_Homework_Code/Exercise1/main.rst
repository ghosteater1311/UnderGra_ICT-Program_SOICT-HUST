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
                                     12 	.globl _hieu_ung_3
                                     13 	.globl _hieu_ung_2
                                     14 	.globl _hieu_ung_1
                                     15 	.globl _delay_ms
                                     16 	.globl _TF2
                                     17 	.globl _EXF2
                                     18 	.globl _RCLK
                                     19 	.globl _TCLK
                                     20 	.globl _EXEN2
                                     21 	.globl _TR2
                                     22 	.globl _C_T2
                                     23 	.globl _CP_RL2
                                     24 	.globl _T2CON_7
                                     25 	.globl _T2CON_6
                                     26 	.globl _T2CON_5
                                     27 	.globl _T2CON_4
                                     28 	.globl _T2CON_3
                                     29 	.globl _T2CON_2
                                     30 	.globl _T2CON_1
                                     31 	.globl _T2CON_0
                                     32 	.globl _PT2
                                     33 	.globl _ET2
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ES
                                     65 	.globl _ET1
                                     66 	.globl _EX1
                                     67 	.globl _ET0
                                     68 	.globl _EX0
                                     69 	.globl _P2_7
                                     70 	.globl _P2_6
                                     71 	.globl _P2_5
                                     72 	.globl _P2_4
                                     73 	.globl _P2_3
                                     74 	.globl _P2_2
                                     75 	.globl _P2_1
                                     76 	.globl _P2_0
                                     77 	.globl _SM0
                                     78 	.globl _SM1
                                     79 	.globl _SM2
                                     80 	.globl _REN
                                     81 	.globl _TB8
                                     82 	.globl _RB8
                                     83 	.globl _TI
                                     84 	.globl _RI
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _TH2
                                    110 	.globl _TL2
                                    111 	.globl _RCAP2H
                                    112 	.globl _RCAP2L
                                    113 	.globl _T2CON
                                    114 	.globl _B
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _delayms
                                    136 	.globl _k
                                    137 	.globl _j
                                    138 	.globl _i
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000D0   162 _PSW	=	0x00d0
                           0000E0   163 _ACC	=	0x00e0
                           0000F0   164 _B	=	0x00f0
                           0000C8   165 _T2CON	=	0x00c8
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           000088   183 _IT0	=	0x0088
                           000089   184 _IE0	=	0x0089
                           00008A   185 _IT1	=	0x008a
                           00008B   186 _IE1	=	0x008b
                           00008C   187 _TR0	=	0x008c
                           00008D   188 _TF0	=	0x008d
                           00008E   189 _TR1	=	0x008e
                           00008F   190 _TF1	=	0x008f
                           000090   191 _P1_0	=	0x0090
                           000091   192 _P1_1	=	0x0091
                           000092   193 _P1_2	=	0x0092
                           000093   194 _P1_3	=	0x0093
                           000094   195 _P1_4	=	0x0094
                           000095   196 _P1_5	=	0x0095
                           000096   197 _P1_6	=	0x0096
                           000097   198 _P1_7	=	0x0097
                           000098   199 _RI	=	0x0098
                           000099   200 _TI	=	0x0099
                           00009A   201 _RB8	=	0x009a
                           00009B   202 _TB8	=	0x009b
                           00009C   203 _REN	=	0x009c
                           00009D   204 _SM2	=	0x009d
                           00009E   205 _SM1	=	0x009e
                           00009F   206 _SM0	=	0x009f
                           0000A0   207 _P2_0	=	0x00a0
                           0000A1   208 _P2_1	=	0x00a1
                           0000A2   209 _P2_2	=	0x00a2
                           0000A3   210 _P2_3	=	0x00a3
                           0000A4   211 _P2_4	=	0x00a4
                           0000A5   212 _P2_5	=	0x00a5
                           0000A6   213 _P2_6	=	0x00a6
                           0000A7   214 _P2_7	=	0x00a7
                           0000A8   215 _EX0	=	0x00a8
                           0000A9   216 _ET0	=	0x00a9
                           0000AA   217 _EX1	=	0x00aa
                           0000AB   218 _ET1	=	0x00ab
                           0000AC   219 _ES	=	0x00ac
                           0000AF   220 _EA	=	0x00af
                           0000B0   221 _P3_0	=	0x00b0
                           0000B1   222 _P3_1	=	0x00b1
                           0000B2   223 _P3_2	=	0x00b2
                           0000B3   224 _P3_3	=	0x00b3
                           0000B4   225 _P3_4	=	0x00b4
                           0000B5   226 _P3_5	=	0x00b5
                           0000B6   227 _P3_6	=	0x00b6
                           0000B7   228 _P3_7	=	0x00b7
                           0000B0   229 _RXD	=	0x00b0
                           0000B1   230 _TXD	=	0x00b1
                           0000B2   231 _INT0	=	0x00b2
                           0000B3   232 _INT1	=	0x00b3
                           0000B4   233 _T0	=	0x00b4
                           0000B5   234 _T1	=	0x00b5
                           0000B6   235 _WR	=	0x00b6
                           0000B7   236 _RD	=	0x00b7
                           0000B8   237 _PX0	=	0x00b8
                           0000B9   238 _PT0	=	0x00b9
                           0000BA   239 _PX1	=	0x00ba
                           0000BB   240 _PT1	=	0x00bb
                           0000BC   241 _PS	=	0x00bc
                           0000D0   242 _P	=	0x00d0
                           0000D1   243 _F1	=	0x00d1
                           0000D2   244 _OV	=	0x00d2
                           0000D3   245 _RS0	=	0x00d3
                           0000D4   246 _RS1	=	0x00d4
                           0000D5   247 _F0	=	0x00d5
                           0000D6   248 _AC	=	0x00d6
                           0000D7   249 _CY	=	0x00d7
                           0000AD   250 _ET2	=	0x00ad
                           0000BD   251 _PT2	=	0x00bd
                           0000C8   252 _T2CON_0	=	0x00c8
                           0000C9   253 _T2CON_1	=	0x00c9
                           0000CA   254 _T2CON_2	=	0x00ca
                           0000CB   255 _T2CON_3	=	0x00cb
                           0000CC   256 _T2CON_4	=	0x00cc
                           0000CD   257 _T2CON_5	=	0x00cd
                           0000CE   258 _T2CON_6	=	0x00ce
                           0000CF   259 _T2CON_7	=	0x00cf
                           0000C8   260 _CP_RL2	=	0x00c8
                           0000C9   261 _C_T2	=	0x00c9
                           0000CA   262 _TR2	=	0x00ca
                           0000CB   263 _EXEN2	=	0x00cb
                           0000CC   264 _TCLK	=	0x00cc
                           0000CD   265 _RCLK	=	0x00cd
                           0000CE   266 _EXF2	=	0x00ce
                           0000CF   267 _TF2	=	0x00cf
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable register banks
                                    270 ;--------------------------------------------------------
                                    271 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        272 	.ds 8
                                    273 ;--------------------------------------------------------
                                    274 ; internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area DSEG    (DATA)
      000008                        277 _i::
      000008                        278 	.ds 2
      00000A                        279 _j::
      00000A                        280 	.ds 2
      00000C                        281 _k::
      00000C                        282 	.ds 2
      00000E                        283 _delayms::
      00000E                        284 	.ds 2
      000010                        285 _delay_ms_ms_65536_1:
      000010                        286 	.ds 4
      000014                        287 _hieu_ung_2_countled_65537_13:
      000014                        288 	.ds 2
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable items in internal ram
                                    291 ;--------------------------------------------------------
                                    292 ;--------------------------------------------------------
                                    293 ; Stack segment in internal ram
                                    294 ;--------------------------------------------------------
                                    295 	.area SSEG
      00001A                        296 __start__stack:
      00001A                        297 	.ds	1
                                    298 
                                    299 ;--------------------------------------------------------
                                    300 ; indirectly addressable internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area ISEG    (DATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute internal ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area IABS    (ABS,DATA)
                                    307 	.area IABS    (ABS,DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; bit data
                                    310 ;--------------------------------------------------------
                                    311 	.area BSEG    (BIT)
                                    312 ;--------------------------------------------------------
                                    313 ; paged external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area PSEG    (PAG,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; uninitialized external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XSEG    (XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute external ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XABS    (ABS,XDATA)
                                    324 ;--------------------------------------------------------
                                    325 ; initialized external ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area XISEG   (XDATA)
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT0 (CODE)
                                    330 	.area GSINIT1 (CODE)
                                    331 	.area GSINIT2 (CODE)
                                    332 	.area GSINIT3 (CODE)
                                    333 	.area GSINIT4 (CODE)
                                    334 	.area GSINIT5 (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.area GSFINAL (CODE)
                                    337 	.area CSEG    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; interrupt vector
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
      000000                        342 __interrupt_vect:
      000000 02 00 06         [24]  343 	ljmp	__sdcc_gsinit_startup
                                    344 ;--------------------------------------------------------
                                    345 ; global & static initialisations
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.globl __sdcc_gsinit_startup
                                    352 	.globl __sdcc_program_startup
                                    353 	.globl __start__stack
                                    354 	.globl __mcs51_genXINIT
                                    355 	.globl __mcs51_genXRAMCLEAR
                                    356 	.globl __mcs51_genRAMCLEAR
                                    357 ;	main.c:6: int delayms = 100;  // Thời gian trễ giữa các lần sáng led
      00005F 75 0E 64         [24]  358 	mov	_delayms,#0x64
      000062 75 0F 00         [24]  359 	mov	(_delayms + 1),#0x00
                                    360 	.area GSFINAL (CODE)
      000065 02 00 03         [24]  361 	ljmp	__sdcc_program_startup
                                    362 ;--------------------------------------------------------
                                    363 ; Home
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area HOME    (CODE)
      000003                        367 __sdcc_program_startup:
      000003 02 02 E9         [24]  368 	ljmp	_main
                                    369 ;	return from main will return to caller
                                    370 ;--------------------------------------------------------
                                    371 ; code
                                    372 ;--------------------------------------------------------
                                    373 	.area CSEG    (CODE)
                                    374 ;------------------------------------------------------------
                                    375 ;Allocation info for local variables in function 'delay_ms'
                                    376 ;------------------------------------------------------------
                                    377 ;ms                        Allocated with name '_delay_ms_ms_65536_1'
                                    378 ;------------------------------------------------------------
                                    379 ;	main.c:9: void delay_ms(long ms) {
                                    380 ;	-----------------------------------------
                                    381 ;	 function delay_ms
                                    382 ;	-----------------------------------------
      000068                        383 _delay_ms:
                           000007   384 	ar7 = 0x07
                           000006   385 	ar6 = 0x06
                           000005   386 	ar5 = 0x05
                           000004   387 	ar4 = 0x04
                           000003   388 	ar3 = 0x03
                           000002   389 	ar2 = 0x02
                           000001   390 	ar1 = 0x01
                           000000   391 	ar0 = 0x00
      000068 85 82 16         [24]  392 	mov	__mullong_PARM_2,dpl
      00006B 85 83 17         [24]  393 	mov	(__mullong_PARM_2 + 1),dph
      00006E 85 F0 18         [24]  394 	mov	(__mullong_PARM_2 + 2),b
      000071 F5 19            [12]  395 	mov	(__mullong_PARM_2 + 3),a
                                    396 ;	main.c:10: ms *= 1000;  // Tính số chu kì máy (1000ckm = 1ms)
      000073 90 03 E8         [24]  397 	mov	dptr,#0x03e8
      000076 E4               [12]  398 	clr	a
      000077 F5 F0            [12]  399 	mov	b,a
      000079 12 03 E5         [24]  400 	lcall	__mullong
      00007C AC 82            [24]  401 	mov	r4,dpl
      00007E AD 83            [24]  402 	mov	r5,dph
      000080 AE F0            [24]  403 	mov	r6,b
      000082 FF               [12]  404 	mov	r7,a
                                    405 ;	main.c:11: while (ms > 0) {
      000083                        406 00107$:
      000083 C3               [12]  407 	clr	c
      000084 E4               [12]  408 	clr	a
      000085 9C               [12]  409 	subb	a,r4
      000086 E4               [12]  410 	clr	a
      000087 9D               [12]  411 	subb	a,r5
      000088 E4               [12]  412 	clr	a
      000089 9E               [12]  413 	subb	a,r6
      00008A 74 80            [12]  414 	mov	a,#(0x00 ^ 0x80)
      00008C 8F F0            [24]  415 	mov	b,r7
      00008E 63 F0 80         [24]  416 	xrl	b,#0x80
      000091 95 F0            [12]  417 	subb	a,b
      000093 40 01            [24]  418 	jc	00137$
      000095 22               [24]  419 	ret
      000096                        420 00137$:
                                    421 ;	main.c:13: TMOD = TMOD & 0xF0;
      000096 53 89 F0         [24]  422 	anl	_TMOD,#0xf0
                                    423 ;	main.c:15: TMOD = TMOD | 0x01;
      000099 43 89 01         [24]  424 	orl	_TMOD,#0x01
                                    425 ;	main.c:16: ET0 = 0;  // Che ngắt Timer 0
                                    426 ;	assignBit
      00009C C2 A9            [12]  427 	clr	_ET0
                                    428 ;	main.c:18: if (ms >= 65536) {
      00009E C3               [12]  429 	clr	c
      00009F EE               [12]  430 	mov	a,r6
      0000A0 94 01            [12]  431 	subb	a,#0x01
      0000A2 EF               [12]  432 	mov	a,r7
      0000A3 64 80            [12]  433 	xrl	a,#0x80
      0000A5 94 80            [12]  434 	subb	a,#0x80
      0000A7 40 0F            [24]  435 	jc	00102$
                                    436 ;	main.c:20: TH0 = 0;
                                    437 ;	main.c:21: TL0 = 0;
                                    438 ;	main.c:22: ms -= 65536;
      0000A9 E4               [12]  439 	clr	a
      0000AA F5 8C            [12]  440 	mov	_TH0,a
      0000AC F5 8A            [12]  441 	mov	_TL0,a
      0000AE EE               [12]  442 	mov	a,r6
      0000AF 24 FF            [12]  443 	add	a,#0xff
      0000B1 FE               [12]  444 	mov	r6,a
      0000B2 EF               [12]  445 	mov	a,r7
      0000B3 34 FF            [12]  446 	addc	a,#0xff
      0000B5 FF               [12]  447 	mov	r7,a
      0000B6 80 57            [24]  448 	sjmp	00103$
      0000B8                        449 00102$:
                                    450 ;	main.c:25: ms = 65536 - ms;
      0000B8 E4               [12]  451 	clr	a
      0000B9 C3               [12]  452 	clr	c
      0000BA 9C               [12]  453 	subb	a,r4
      0000BB F5 10            [12]  454 	mov	_delay_ms_ms_65536_1,a
      0000BD E4               [12]  455 	clr	a
      0000BE 9D               [12]  456 	subb	a,r5
      0000BF F5 11            [12]  457 	mov	(_delay_ms_ms_65536_1 + 1),a
      0000C1 74 01            [12]  458 	mov	a,#0x01
      0000C3 9E               [12]  459 	subb	a,r6
      0000C4 F5 12            [12]  460 	mov	(_delay_ms_ms_65536_1 + 2),a
      0000C6 E4               [12]  461 	clr	a
      0000C7 9F               [12]  462 	subb	a,r7
      0000C8 F5 13            [12]  463 	mov	(_delay_ms_ms_65536_1 + 3),a
                                    464 ;	main.c:26: TH0 = ms / 256;
      0000CA E4               [12]  465 	clr	a
      0000CB F5 16            [12]  466 	mov	__divslong_PARM_2,a
      0000CD 75 17 01         [24]  467 	mov	(__divslong_PARM_2 + 1),#0x01
      0000D0 F5 18            [12]  468 	mov	(__divslong_PARM_2 + 2),a
      0000D2 F5 19            [12]  469 	mov	(__divslong_PARM_2 + 3),a
      0000D4 85 10 82         [24]  470 	mov	dpl,_delay_ms_ms_65536_1
      0000D7 85 11 83         [24]  471 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000DA 85 12 F0         [24]  472 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000DD E5 13            [12]  473 	mov	a,(_delay_ms_ms_65536_1 + 3)
      0000DF 12 04 A2         [24]  474 	lcall	__divslong
      0000E2 A8 82            [24]  475 	mov	r0,dpl
      0000E4 88 8C            [24]  476 	mov	_TH0,r0
                                    477 ;	main.c:27: TL0 = ms % 256;
      0000E6 E4               [12]  478 	clr	a
      0000E7 F5 16            [12]  479 	mov	__modslong_PARM_2,a
      0000E9 75 17 01         [24]  480 	mov	(__modslong_PARM_2 + 1),#0x01
      0000EC F5 18            [12]  481 	mov	(__modslong_PARM_2 + 2),a
      0000EE F5 19            [12]  482 	mov	(__modslong_PARM_2 + 3),a
      0000F0 85 10 82         [24]  483 	mov	dpl,_delay_ms_ms_65536_1
      0000F3 85 11 83         [24]  484 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000F6 85 12 F0         [24]  485 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000F9 E5 13            [12]  486 	mov	a,(_delay_ms_ms_65536_1 + 3)
      0000FB 12 04 53         [24]  487 	lcall	__modslong
      0000FE A8 82            [24]  488 	mov	r0,dpl
      000100 A9 83            [24]  489 	mov	r1,dph
      000102 AA F0            [24]  490 	mov	r2,b
      000104 FB               [12]  491 	mov	r3,a
      000105 88 8A            [24]  492 	mov	_TL0,r0
                                    493 ;	main.c:28: ms = 0;
      000107 7C 00            [12]  494 	mov	r4,#0x00
      000109 7D 00            [12]  495 	mov	r5,#0x00
      00010B 7E 00            [12]  496 	mov	r6,#0x00
      00010D 7F 00            [12]  497 	mov	r7,#0x00
      00010F                        498 00103$:
                                    499 ;	main.c:30: TF0 = 0;  // Xóa cờ tràn Timer 0
                                    500 ;	assignBit
      00010F C2 8D            [12]  501 	clr	_TF0
                                    502 ;	main.c:31: TR0 = 1;  // Khởi động Timer 0
                                    503 ;	assignBit
      000111 D2 8C            [12]  504 	setb	_TR0
                                    505 ;	main.c:32: while (TF0 == 0)
      000113                        506 00104$:
      000113 30 8D FD         [24]  507 	jnb	_TF0,00104$
                                    508 ;	main.c:34: TR0 = 0;  // Dừng Timer 0
                                    509 ;	assignBit
      000116 C2 8C            [12]  510 	clr	_TR0
                                    511 ;	main.c:36: }
      000118 02 00 83         [24]  512 	ljmp	00107$
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'hieu_ung_1'
                                    515 ;------------------------------------------------------------
                                    516 ;hieu_ung_1                Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	main.c:39: void hieu_ung_1() {
                                    519 ;	-----------------------------------------
                                    520 ;	 function hieu_ung_1
                                    521 ;	-----------------------------------------
      00011B                        522 _hieu_ung_1:
                                    523 ;	main.c:40: led = 0xFF;  // Tắt tất cả led
      00011B 75 90 FF         [24]  524 	mov	_P1,#0xff
                                    525 ;	main.c:41: delay_ms(delayms);
      00011E AC 0E            [24]  526 	mov	r4,_delayms
      000120 E5 0F            [12]  527 	mov	a,(_delayms + 1)
      000122 FD               [12]  528 	mov	r5,a
      000123 33               [12]  529 	rlc	a
      000124 95 E0            [12]  530 	subb	a,acc
      000126 FE               [12]  531 	mov	r6,a
      000127 8C 82            [24]  532 	mov	dpl,r4
      000129 8D 83            [24]  533 	mov	dph,r5
      00012B 8E F0            [24]  534 	mov	b,r6
      00012D 12 00 68         [24]  535 	lcall	_delay_ms
                                    536 ;	main.c:43: unsigned char hieu_ung_1 = 0x03;  // Cho 2 led đầu sáng
      000130 7F 03            [12]  537 	mov	r7,#0x03
                                    538 ;	main.c:45: for (j = 0; j < 7; j++) {
      000132 E4               [12]  539 	clr	a
      000133 F5 0A            [12]  540 	mov	_j,a
      000135 F5 0B            [12]  541 	mov	(_j + 1),a
      000137                        542 00103$:
                                    543 ;	main.c:46: led = ~hieu_ung_1;
      000137 EF               [12]  544 	mov	a,r7
      000138 F4               [12]  545 	cpl	a
      000139 F5 90            [12]  546 	mov	_P1,a
                                    547 ;	main.c:47: delay_ms(delayms);
      00013B AB 0E            [24]  548 	mov	r3,_delayms
      00013D E5 0F            [12]  549 	mov	a,(_delayms + 1)
      00013F FC               [12]  550 	mov	r4,a
      000140 33               [12]  551 	rlc	a
      000141 95 E0            [12]  552 	subb	a,acc
      000143 FD               [12]  553 	mov	r5,a
      000144 8B 82            [24]  554 	mov	dpl,r3
      000146 8C 83            [24]  555 	mov	dph,r4
      000148 8D F0            [24]  556 	mov	b,r5
      00014A C0 07            [24]  557 	push	ar7
      00014C 12 00 68         [24]  558 	lcall	_delay_ms
      00014F D0 07            [24]  559 	pop	ar7
                                    560 ;	main.c:48: hieu_ung_1 = hieu_ung_1 << 1;
      000151 8F 06            [24]  561 	mov	ar6,r7
      000153 EE               [12]  562 	mov	a,r6
      000154 2E               [12]  563 	add	a,r6
      000155 FF               [12]  564 	mov	r7,a
                                    565 ;	main.c:45: for (j = 0; j < 7; j++) {
      000156 05 0A            [12]  566 	inc	_j
      000158 E4               [12]  567 	clr	a
      000159 B5 0A 02         [24]  568 	cjne	a,_j,00121$
      00015C 05 0B            [12]  569 	inc	(_j + 1)
      00015E                        570 00121$:
      00015E C3               [12]  571 	clr	c
      00015F E5 0A            [12]  572 	mov	a,_j
      000161 94 07            [12]  573 	subb	a,#0x07
      000163 E5 0B            [12]  574 	mov	a,(_j + 1)
      000165 64 80            [12]  575 	xrl	a,#0x80
      000167 94 80            [12]  576 	subb	a,#0x80
      000169 40 CC            [24]  577 	jc	00103$
                                    578 ;	main.c:52: hieu_ung_1 = 0xC0;  // Cho 2 led cuối sáng
      00016B 7F C0            [12]  579 	mov	r7,#0xc0
                                    580 ;	main.c:53: for (j = 0; j < 7; j++) {
      00016D E4               [12]  581 	clr	a
      00016E F5 0A            [12]  582 	mov	_j,a
      000170 F5 0B            [12]  583 	mov	(_j + 1),a
      000172                        584 00105$:
                                    585 ;	main.c:54: led = ~hieu_ung_1;
      000172 EF               [12]  586 	mov	a,r7
      000173 F4               [12]  587 	cpl	a
      000174 F5 90            [12]  588 	mov	_P1,a
                                    589 ;	main.c:55: delay_ms(delayms);
      000176 AB 0E            [24]  590 	mov	r3,_delayms
      000178 E5 0F            [12]  591 	mov	a,(_delayms + 1)
      00017A FC               [12]  592 	mov	r4,a
      00017B 33               [12]  593 	rlc	a
      00017C 95 E0            [12]  594 	subb	a,acc
      00017E FD               [12]  595 	mov	r5,a
      00017F 8B 82            [24]  596 	mov	dpl,r3
      000181 8C 83            [24]  597 	mov	dph,r4
      000183 8D F0            [24]  598 	mov	b,r5
      000185 C0 07            [24]  599 	push	ar7
      000187 12 00 68         [24]  600 	lcall	_delay_ms
      00018A D0 07            [24]  601 	pop	ar7
                                    602 ;	main.c:56: hieu_ung_1 = hieu_ung_1 >> 1;
      00018C EF               [12]  603 	mov	a,r7
      00018D C3               [12]  604 	clr	c
      00018E 13               [12]  605 	rrc	a
      00018F FF               [12]  606 	mov	r7,a
                                    607 ;	main.c:53: for (j = 0; j < 7; j++) {
      000190 05 0A            [12]  608 	inc	_j
      000192 E4               [12]  609 	clr	a
      000193 B5 0A 02         [24]  610 	cjne	a,_j,00123$
      000196 05 0B            [12]  611 	inc	(_j + 1)
      000198                        612 00123$:
      000198 C3               [12]  613 	clr	c
      000199 E5 0A            [12]  614 	mov	a,_j
      00019B 94 07            [12]  615 	subb	a,#0x07
      00019D E5 0B            [12]  616 	mov	a,(_j + 1)
      00019F 64 80            [12]  617 	xrl	a,#0x80
      0001A1 94 80            [12]  618 	subb	a,#0x80
      0001A3 40 CD            [24]  619 	jc	00105$
                                    620 ;	main.c:58: }
      0001A5 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'hieu_ung_2'
                                    624 ;------------------------------------------------------------
                                    625 ;giu_hieu_ung              Allocated to registers r7 
                                    626 ;countled                  Allocated with name '_hieu_ung_2_countled_65537_13'
                                    627 ;hieu_ung_2                Allocated to registers r4 
                                    628 ;------------------------------------------------------------
                                    629 ;	main.c:61: void hieu_ung_2() {
                                    630 ;	-----------------------------------------
                                    631 ;	 function hieu_ung_2
                                    632 ;	-----------------------------------------
      0001A6                        633 _hieu_ung_2:
                                    634 ;	main.c:62: led = 0xFF;  // Tắt tất cả led
      0001A6 75 90 FF         [24]  635 	mov	_P1,#0xff
                                    636 ;	main.c:63: delay_ms(delayms);
      0001A9 AC 0E            [24]  637 	mov	r4,_delayms
      0001AB E5 0F            [12]  638 	mov	a,(_delayms + 1)
      0001AD FD               [12]  639 	mov	r5,a
      0001AE 33               [12]  640 	rlc	a
      0001AF 95 E0            [12]  641 	subb	a,acc
      0001B1 FE               [12]  642 	mov	r6,a
      0001B2 8C 82            [24]  643 	mov	dpl,r4
      0001B4 8D 83            [24]  644 	mov	dph,r5
      0001B6 8E F0            [24]  645 	mov	b,r6
      0001B8 12 00 68         [24]  646 	lcall	_delay_ms
                                    647 ;	main.c:66: unsigned char giu_hieu_ung = 0x00;
                                    648 ;	main.c:71: for (j = 0; j < 8; j++) {
      0001BB E4               [12]  649 	clr	a
      0001BC FF               [12]  650 	mov	r7,a
      0001BD F5 0A            [12]  651 	mov	_j,a
      0001BF F5 0B            [12]  652 	mov	(_j + 1),a
      0001C1 75 14 08         [24]  653 	mov	_hieu_ung_2_countled_65537_13,#0x08
      0001C4 F5 15            [12]  654 	mov	(_hieu_ung_2_countled_65537_13 + 1),a
      0001C6                        655 00109$:
                                    656 ;	main.c:72: unsigned char hieu_ung_2 = 0x01;  // bật sáng led đầu tiên
      0001C6 7C 01            [12]  657 	mov	r4,#0x01
                                    658 ;	main.c:74: for (k = 0; k < countled; k++) {
      0001C8 E4               [12]  659 	clr	a
      0001C9 F5 0C            [12]  660 	mov	_k,a
      0001CB F5 0D            [12]  661 	mov	(_k + 1),a
      0001CD E5 14            [12]  662 	mov	a,_hieu_ung_2_countled_65537_13
      0001CF 24 FF            [12]  663 	add	a,#0xff
      0001D1 FA               [12]  664 	mov	r2,a
      0001D2 E5 15            [12]  665 	mov	a,(_hieu_ung_2_countled_65537_13 + 1)
      0001D4 34 FF            [12]  666 	addc	a,#0xff
      0001D6 FB               [12]  667 	mov	r3,a
      0001D7                        668 00107$:
      0001D7 C3               [12]  669 	clr	c
      0001D8 E5 0C            [12]  670 	mov	a,_k
      0001DA 95 14            [12]  671 	subb	a,_hieu_ung_2_countled_65537_13
      0001DC E5 0D            [12]  672 	mov	a,(_k + 1)
      0001DE 64 80            [12]  673 	xrl	a,#0x80
      0001E0 85 15 F0         [24]  674 	mov	b,(_hieu_ung_2_countled_65537_13 + 1)
      0001E3 63 F0 80         [24]  675 	xrl	b,#0x80
      0001E6 95 F0            [12]  676 	subb	a,b
      0001E8 50 40            [24]  677 	jnc	00103$
                                    678 ;	main.c:76: led = ~(hieu_ung_2 | giu_hieu_ung);
      0001EA EF               [12]  679 	mov	a,r7
      0001EB 4C               [12]  680 	orl	a,r4
      0001EC F4               [12]  681 	cpl	a
      0001ED F5 90            [12]  682 	mov	_P1,a
                                    683 ;	main.c:77: delay_ms(delayms);
      0001EF A8 0E            [24]  684 	mov	r0,_delayms
      0001F1 E5 0F            [12]  685 	mov	a,(_delayms + 1)
      0001F3 F9               [12]  686 	mov	r1,a
      0001F4 33               [12]  687 	rlc	a
      0001F5 95 E0            [12]  688 	subb	a,acc
      0001F7 FD               [12]  689 	mov	r5,a
      0001F8 88 82            [24]  690 	mov	dpl,r0
      0001FA 89 83            [24]  691 	mov	dph,r1
      0001FC 8D F0            [24]  692 	mov	b,r5
      0001FE C0 07            [24]  693 	push	ar7
      000200 C0 04            [24]  694 	push	ar4
      000202 C0 03            [24]  695 	push	ar3
      000204 C0 02            [24]  696 	push	ar2
      000206 12 00 68         [24]  697 	lcall	_delay_ms
      000209 D0 02            [24]  698 	pop	ar2
      00020B D0 03            [24]  699 	pop	ar3
      00020D D0 04            [24]  700 	pop	ar4
      00020F D0 07            [24]  701 	pop	ar7
                                    702 ;	main.c:80: if (k != countled - 1) hieu_ung_2 = hieu_ung_2 << 1;
      000211 EA               [12]  703 	mov	a,r2
      000212 B5 0C 06         [24]  704 	cjne	a,_k,00141$
      000215 EB               [12]  705 	mov	a,r3
      000216 B5 0D 02         [24]  706 	cjne	a,(_k + 1),00141$
      000219 80 05            [24]  707 	sjmp	00108$
      00021B                        708 00141$:
      00021B 8C 06            [24]  709 	mov	ar6,r4
      00021D EE               [12]  710 	mov	a,r6
      00021E 2E               [12]  711 	add	a,r6
      00021F FC               [12]  712 	mov	r4,a
      000220                        713 00108$:
                                    714 ;	main.c:74: for (k = 0; k < countled; k++) {
      000220 05 0C            [12]  715 	inc	_k
      000222 E4               [12]  716 	clr	a
      000223 B5 0C B1         [24]  717 	cjne	a,_k,00107$
      000226 05 0D            [12]  718 	inc	(_k + 1)
      000228 80 AD            [24]  719 	sjmp	00107$
      00022A                        720 00103$:
                                    721 ;	main.c:83: giu_hieu_ung = hieu_ung_2 | giu_hieu_ung;
      00022A EC               [12]  722 	mov	a,r4
      00022B 42 07            [12]  723 	orl	ar7,a
                                    724 ;	main.c:84: countled--;  // Giảm vòng lặp dịch led
      00022D 15 14            [12]  725 	dec	_hieu_ung_2_countled_65537_13
      00022F 74 FF            [12]  726 	mov	a,#0xff
      000231 B5 14 02         [24]  727 	cjne	a,_hieu_ung_2_countled_65537_13,00143$
      000234 15 15            [12]  728 	dec	(_hieu_ung_2_countled_65537_13 + 1)
      000236                        729 00143$:
                                    730 ;	main.c:71: for (j = 0; j < 8; j++) {
      000236 05 0A            [12]  731 	inc	_j
      000238 E4               [12]  732 	clr	a
      000239 B5 0A 02         [24]  733 	cjne	a,_j,00144$
      00023C 05 0B            [12]  734 	inc	(_j + 1)
      00023E                        735 00144$:
      00023E C3               [12]  736 	clr	c
      00023F E5 0A            [12]  737 	mov	a,_j
      000241 94 08            [12]  738 	subb	a,#0x08
      000243 E5 0B            [12]  739 	mov	a,(_j + 1)
      000245 64 80            [12]  740 	xrl	a,#0x80
      000247 94 80            [12]  741 	subb	a,#0x80
      000249 50 03            [24]  742 	jnc	00145$
      00024B 02 01 C6         [24]  743 	ljmp	00109$
      00024E                        744 00145$:
                                    745 ;	main.c:88: for (j = 0; j < 8; j++) {
      00024E E4               [12]  746 	clr	a
      00024F F5 0A            [12]  747 	mov	_j,a
      000251 F5 0B            [12]  748 	mov	(_j + 1),a
      000253                        749 00111$:
                                    750 ;	main.c:90: led = ~giu_hieu_ung;
      000253 EF               [12]  751 	mov	a,r7
      000254 F4               [12]  752 	cpl	a
      000255 F5 90            [12]  753 	mov	_P1,a
                                    754 ;	main.c:91: delay_ms(delayms);
      000257 AB 0E            [24]  755 	mov	r3,_delayms
      000259 E5 0F            [12]  756 	mov	a,(_delayms + 1)
      00025B FC               [12]  757 	mov	r4,a
      00025C 33               [12]  758 	rlc	a
      00025D 95 E0            [12]  759 	subb	a,acc
      00025F FD               [12]  760 	mov	r5,a
      000260 8B 82            [24]  761 	mov	dpl,r3
      000262 8C 83            [24]  762 	mov	dph,r4
      000264 8D F0            [24]  763 	mov	b,r5
      000266 C0 07            [24]  764 	push	ar7
      000268 12 00 68         [24]  765 	lcall	_delay_ms
      00026B D0 07            [24]  766 	pop	ar7
                                    767 ;	main.c:93: giu_hieu_ung = giu_hieu_ung >> 1;
      00026D EF               [12]  768 	mov	a,r7
      00026E C3               [12]  769 	clr	c
      00026F 13               [12]  770 	rrc	a
      000270 FF               [12]  771 	mov	r7,a
                                    772 ;	main.c:88: for (j = 0; j < 8; j++) {
      000271 05 0A            [12]  773 	inc	_j
      000273 E4               [12]  774 	clr	a
      000274 B5 0A 02         [24]  775 	cjne	a,_j,00146$
      000277 05 0B            [12]  776 	inc	(_j + 1)
      000279                        777 00146$:
      000279 C3               [12]  778 	clr	c
      00027A E5 0A            [12]  779 	mov	a,_j
      00027C 94 08            [12]  780 	subb	a,#0x08
      00027E E5 0B            [12]  781 	mov	a,(_j + 1)
      000280 64 80            [12]  782 	xrl	a,#0x80
      000282 94 80            [12]  783 	subb	a,#0x80
      000284 40 CD            [24]  784 	jc	00111$
                                    785 ;	main.c:95: }
      000286 22               [24]  786 	ret
                                    787 ;------------------------------------------------------------
                                    788 ;Allocation info for local variables in function 'hieu_ung_3'
                                    789 ;------------------------------------------------------------
                                    790 ;hieu_ung_3_1              Allocated to registers r7 
                                    791 ;hieu_ung_3_2              Allocated to registers r6 
                                    792 ;------------------------------------------------------------
                                    793 ;	main.c:98: void hieu_ung_3() {
                                    794 ;	-----------------------------------------
                                    795 ;	 function hieu_ung_3
                                    796 ;	-----------------------------------------
      000287                        797 _hieu_ung_3:
                                    798 ;	main.c:99: led = 0xFF;  // Tắt tất cả các led
      000287 75 90 FF         [24]  799 	mov	_P1,#0xff
                                    800 ;	main.c:100: delay_ms(delayms);
      00028A AC 0E            [24]  801 	mov	r4,_delayms
      00028C E5 0F            [12]  802 	mov	a,(_delayms + 1)
      00028E FD               [12]  803 	mov	r5,a
      00028F 33               [12]  804 	rlc	a
      000290 95 E0            [12]  805 	subb	a,acc
      000292 FE               [12]  806 	mov	r6,a
      000293 8C 82            [24]  807 	mov	dpl,r4
      000295 8D 83            [24]  808 	mov	dph,r5
      000297 8E F0            [24]  809 	mov	b,r6
      000299 12 00 68         [24]  810 	lcall	_delay_ms
                                    811 ;	main.c:102: unsigned char hieu_ung_3_1 = 0x01;  // Bật led đầu tiên
      00029C 7F 01            [12]  812 	mov	r7,#0x01
                                    813 ;	main.c:103: unsigned char hieu_ung_3_2 = 0x80;  // Bật led cuối cùng
      00029E 7E 80            [12]  814 	mov	r6,#0x80
                                    815 ;	main.c:104: for (j = 0; j < 8; j++) {
      0002A0 E4               [12]  816 	clr	a
      0002A1 F5 0A            [12]  817 	mov	_j,a
      0002A3 F5 0B            [12]  818 	mov	(_j + 1),a
      0002A5                        819 00104$:
                                    820 ;	main.c:105: led = ~(hieu_ung_3_1 | hieu_ung_3_2);
      0002A5 EE               [12]  821 	mov	a,r6
      0002A6 4F               [12]  822 	orl	a,r7
      0002A7 FD               [12]  823 	mov	r5,a
      0002A8 F4               [12]  824 	cpl	a
      0002A9 F5 90            [12]  825 	mov	_P1,a
                                    826 ;	main.c:108: if (hieu_ung_3_1 != 0x08) delay_ms(delayms);
      0002AB BF 08 02         [24]  827 	cjne	r7,#0x08,00116$
      0002AE 80 1A            [24]  828 	sjmp	00102$
      0002B0                        829 00116$:
      0002B0 AA 0E            [24]  830 	mov	r2,_delayms
      0002B2 E5 0F            [12]  831 	mov	a,(_delayms + 1)
      0002B4 FB               [12]  832 	mov	r3,a
      0002B5 33               [12]  833 	rlc	a
      0002B6 95 E0            [12]  834 	subb	a,acc
      0002B8 FC               [12]  835 	mov	r4,a
      0002B9 8A 82            [24]  836 	mov	dpl,r2
      0002BB 8B 83            [24]  837 	mov	dph,r3
      0002BD 8C F0            [24]  838 	mov	b,r4
      0002BF C0 07            [24]  839 	push	ar7
      0002C1 C0 06            [24]  840 	push	ar6
      0002C3 12 00 68         [24]  841 	lcall	_delay_ms
      0002C6 D0 06            [24]  842 	pop	ar6
      0002C8 D0 07            [24]  843 	pop	ar7
      0002CA                        844 00102$:
                                    845 ;	main.c:110: hieu_ung_3_1 = hieu_ung_3_1 << 1;
      0002CA 8F 05            [24]  846 	mov	ar5,r7
      0002CC ED               [12]  847 	mov	a,r5
      0002CD 2D               [12]  848 	add	a,r5
      0002CE FF               [12]  849 	mov	r7,a
                                    850 ;	main.c:111: hieu_ung_3_2 = hieu_ung_3_2 >> 1;
      0002CF EE               [12]  851 	mov	a,r6
      0002D0 C3               [12]  852 	clr	c
      0002D1 13               [12]  853 	rrc	a
      0002D2 FE               [12]  854 	mov	r6,a
                                    855 ;	main.c:104: for (j = 0; j < 8; j++) {
      0002D3 05 0A            [12]  856 	inc	_j
      0002D5 E4               [12]  857 	clr	a
      0002D6 B5 0A 02         [24]  858 	cjne	a,_j,00117$
      0002D9 05 0B            [12]  859 	inc	(_j + 1)
      0002DB                        860 00117$:
      0002DB C3               [12]  861 	clr	c
      0002DC E5 0A            [12]  862 	mov	a,_j
      0002DE 94 08            [12]  863 	subb	a,#0x08
      0002E0 E5 0B            [12]  864 	mov	a,(_j + 1)
      0002E2 64 80            [12]  865 	xrl	a,#0x80
      0002E4 94 80            [12]  866 	subb	a,#0x80
      0002E6 40 BD            [24]  867 	jc	00104$
                                    868 ;	main.c:113: }
      0002E8 22               [24]  869 	ret
                                    870 ;------------------------------------------------------------
                                    871 ;Allocation info for local variables in function 'main'
                                    872 ;------------------------------------------------------------
                                    873 ;	main.c:115: int main() {
                                    874 ;	-----------------------------------------
                                    875 ;	 function main
                                    876 ;	-----------------------------------------
      0002E9                        877 _main:
                                    878 ;	main.c:116: while (1) {
      0002E9                        879 00102$:
                                    880 ;	main.c:118: hieu_ung_1();
      0002E9 12 01 1B         [24]  881 	lcall	_hieu_ung_1
                                    882 ;	main.c:119: hieu_ung_1();
      0002EC 12 01 1B         [24]  883 	lcall	_hieu_ung_1
                                    884 ;	main.c:120: hieu_ung_2();
      0002EF 12 01 A6         [24]  885 	lcall	_hieu_ung_2
                                    886 ;	main.c:121: hieu_ung_2();
      0002F2 12 01 A6         [24]  887 	lcall	_hieu_ung_2
                                    888 ;	main.c:122: hieu_ung_3();
      0002F5 12 02 87         [24]  889 	lcall	_hieu_ung_3
                                    890 ;	main.c:123: hieu_ung_3();
      0002F8 12 02 87         [24]  891 	lcall	_hieu_ung_3
                                    892 ;	main.c:125: }
      0002FB 80 EC            [24]  893 	sjmp	00102$
                                    894 	.area CSEG    (CODE)
                                    895 	.area CONST   (CODE)
                                    896 	.area XINIT   (CODE)
                                    897 	.area CABS    (ABS,CODE)
