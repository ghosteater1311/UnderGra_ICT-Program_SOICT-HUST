                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-medium
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _font
                                     12 	.globl _main
                                     13 	.globl _GLCD_WriteChar
                                     14 	.globl _GLCD_Plot_Coordinate_Axes
                                     15 	.globl _GLCD_ClearAll
                                     16 	.globl _GLCD_Init
                                     17 	.globl _GLCD_Data
                                     18 	.globl _GLCD_Command
                                     19 	.globl _delay
                                     20 	.globl _delay_us
                                     21 	.globl _TF2
                                     22 	.globl _EXF2
                                     23 	.globl _RCLK
                                     24 	.globl _TCLK
                                     25 	.globl _EXEN2
                                     26 	.globl _TR2
                                     27 	.globl _C_T2
                                     28 	.globl _CP_RL2
                                     29 	.globl _T2CON_7
                                     30 	.globl _T2CON_6
                                     31 	.globl _T2CON_5
                                     32 	.globl _T2CON_4
                                     33 	.globl _T2CON_3
                                     34 	.globl _T2CON_2
                                     35 	.globl _T2CON_1
                                     36 	.globl _T2CON_0
                                     37 	.globl _PT2
                                     38 	.globl _ET2
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _PS
                                     48 	.globl _PT1
                                     49 	.globl _PX1
                                     50 	.globl _PT0
                                     51 	.globl _PX0
                                     52 	.globl _RD
                                     53 	.globl _WR
                                     54 	.globl _T1
                                     55 	.globl _T0
                                     56 	.globl _INT1
                                     57 	.globl _INT0
                                     58 	.globl _TXD
                                     59 	.globl _RXD
                                     60 	.globl _P3_7
                                     61 	.globl _P3_6
                                     62 	.globl _P3_5
                                     63 	.globl _P3_4
                                     64 	.globl _P3_3
                                     65 	.globl _P3_2
                                     66 	.globl _P3_1
                                     67 	.globl _P3_0
                                     68 	.globl _EA
                                     69 	.globl _ES
                                     70 	.globl _ET1
                                     71 	.globl _EX1
                                     72 	.globl _ET0
                                     73 	.globl _EX0
                                     74 	.globl _P2_7
                                     75 	.globl _P2_6
                                     76 	.globl _P2_5
                                     77 	.globl _P2_4
                                     78 	.globl _P2_3
                                     79 	.globl _P2_2
                                     80 	.globl _P2_1
                                     81 	.globl _P2_0
                                     82 	.globl _SM0
                                     83 	.globl _SM1
                                     84 	.globl _SM2
                                     85 	.globl _REN
                                     86 	.globl _TB8
                                     87 	.globl _RB8
                                     88 	.globl _TI
                                     89 	.globl _RI
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _TH2
                                    115 	.globl _TL2
                                    116 	.globl _RCAP2H
                                    117 	.globl _RCAP2L
                                    118 	.globl _T2CON
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _temp
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000D0   164 _PSW	=	0x00d0
                           0000E0   165 _ACC	=	0x00e0
                           0000F0   166 _B	=	0x00f0
                           0000C8   167 _T2CON	=	0x00c8
                           0000CA   168 _RCAP2L	=	0x00ca
                           0000CB   169 _RCAP2H	=	0x00cb
                           0000CC   170 _TL2	=	0x00cc
                           0000CD   171 _TH2	=	0x00cd
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000098   201 _RI	=	0x0098
                           000099   202 _TI	=	0x0099
                           00009A   203 _RB8	=	0x009a
                           00009B   204 _TB8	=	0x009b
                           00009C   205 _REN	=	0x009c
                           00009D   206 _SM2	=	0x009d
                           00009E   207 _SM1	=	0x009e
                           00009F   208 _SM0	=	0x009f
                           0000A0   209 _P2_0	=	0x00a0
                           0000A1   210 _P2_1	=	0x00a1
                           0000A2   211 _P2_2	=	0x00a2
                           0000A3   212 _P2_3	=	0x00a3
                           0000A4   213 _P2_4	=	0x00a4
                           0000A5   214 _P2_5	=	0x00a5
                           0000A6   215 _P2_6	=	0x00a6
                           0000A7   216 _P2_7	=	0x00a7
                           0000A8   217 _EX0	=	0x00a8
                           0000A9   218 _ET0	=	0x00a9
                           0000AA   219 _EX1	=	0x00aa
                           0000AB   220 _ET1	=	0x00ab
                           0000AC   221 _ES	=	0x00ac
                           0000AF   222 _EA	=	0x00af
                           0000B0   223 _P3_0	=	0x00b0
                           0000B1   224 _P3_1	=	0x00b1
                           0000B2   225 _P3_2	=	0x00b2
                           0000B3   226 _P3_3	=	0x00b3
                           0000B4   227 _P3_4	=	0x00b4
                           0000B5   228 _P3_5	=	0x00b5
                           0000B6   229 _P3_6	=	0x00b6
                           0000B7   230 _P3_7	=	0x00b7
                           0000B0   231 _RXD	=	0x00b0
                           0000B1   232 _TXD	=	0x00b1
                           0000B2   233 _INT0	=	0x00b2
                           0000B3   234 _INT1	=	0x00b3
                           0000B4   235 _T0	=	0x00b4
                           0000B5   236 _T1	=	0x00b5
                           0000B6   237 _WR	=	0x00b6
                           0000B7   238 _RD	=	0x00b7
                           0000B8   239 _PX0	=	0x00b8
                           0000B9   240 _PT0	=	0x00b9
                           0000BA   241 _PX1	=	0x00ba
                           0000BB   242 _PT1	=	0x00bb
                           0000BC   243 _PS	=	0x00bc
                           0000D0   244 _P	=	0x00d0
                           0000D1   245 _F1	=	0x00d1
                           0000D2   246 _OV	=	0x00d2
                           0000D3   247 _RS0	=	0x00d3
                           0000D4   248 _RS1	=	0x00d4
                           0000D5   249 _F0	=	0x00d5
                           0000D6   250 _AC	=	0x00d6
                           0000D7   251 _CY	=	0x00d7
                           0000AD   252 _ET2	=	0x00ad
                           0000BD   253 _PT2	=	0x00bd
                           0000C8   254 _T2CON_0	=	0x00c8
                           0000C9   255 _T2CON_1	=	0x00c9
                           0000CA   256 _T2CON_2	=	0x00ca
                           0000CB   257 _T2CON_3	=	0x00cb
                           0000CC   258 _T2CON_4	=	0x00cc
                           0000CD   259 _T2CON_5	=	0x00cd
                           0000CE   260 _T2CON_6	=	0x00ce
                           0000CF   261 _T2CON_7	=	0x00cf
                           0000C8   262 _CP_RL2	=	0x00c8
                           0000C9   263 _C_T2	=	0x00c9
                           0000CA   264 _TR2	=	0x00ca
                           0000CB   265 _EXEN2	=	0x00cb
                           0000CC   266 _TCLK	=	0x00cc
                           0000CD   267 _RCLK	=	0x00cd
                           0000CE   268 _EXF2	=	0x00ce
                           0000CF   269 _TF2	=	0x00cf
                                    270 ;--------------------------------------------------------
                                    271 ; overlayable register banks
                                    272 ;--------------------------------------------------------
                                    273 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        274 	.ds 8
                                    275 ;--------------------------------------------------------
                                    276 ; internal ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area DSEG    (DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable items in internal ram
                                    281 ;--------------------------------------------------------
                                    282 ;--------------------------------------------------------
                                    283 ; Stack segment in internal ram
                                    284 ;--------------------------------------------------------
                                    285 	.area	SSEG
      000021                        286 __start__stack:
      000021                        287 	.ds	1
                                    288 
                                    289 ;--------------------------------------------------------
                                    290 ; indirectly addressable internal ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area ISEG    (DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; absolute internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area IABS    (ABS,DATA)
                                    297 	.area IABS    (ABS,DATA)
                                    298 ;--------------------------------------------------------
                                    299 ; bit data
                                    300 ;--------------------------------------------------------
                                    301 	.area BSEG    (BIT)
      000000                        302 _GLCD_Plot_Coordinate_Axes_sloc0_1_0:
      000000                        303 	.ds 1
                                    304 ;--------------------------------------------------------
                                    305 ; paged external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area PSEG    (PAG,XDATA)
      000001                        308 _temp::
      000001                        309 	.ds 1
      000002                        310 _GLCD_WriteChar_Page_inc_65536_96:
      000002                        311 	.ds 4
                                    312 ;--------------------------------------------------------
                                    313 ; external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XSEG    (XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; absolute external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XABS    (ABS,XDATA)
                                    320 ;--------------------------------------------------------
                                    321 ; external initialized ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area XISEG   (XDATA)
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT0 (CODE)
                                    326 	.area GSINIT1 (CODE)
                                    327 	.area GSINIT2 (CODE)
                                    328 	.area GSINIT3 (CODE)
                                    329 	.area GSINIT4 (CODE)
                                    330 	.area GSINIT5 (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area CSEG    (CODE)
                                    334 ;--------------------------------------------------------
                                    335 ; interrupt vector
                                    336 ;--------------------------------------------------------
                                    337 	.area HOME    (CODE)
      000000                        338 __interrupt_vect:
      000000 02 00 06         [24]  339 	ljmp	__sdcc_gsinit_startup
                                    340 ;--------------------------------------------------------
                                    341 ; global & static initialisations
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.globl __sdcc_gsinit_startup
                                    348 	.globl __sdcc_program_startup
                                    349 	.globl __start__stack
                                    350 	.globl __mcs51_genXINIT
                                    351 	.globl __mcs51_genXRAMCLEAR
                                    352 	.globl __mcs51_genRAMCLEAR
                                    353 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  354 	ljmp	__sdcc_program_startup
                                    355 ;--------------------------------------------------------
                                    356 ; Home
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area HOME    (CODE)
      000003                        360 __sdcc_program_startup:
      000003 02 03 AE         [24]  361 	ljmp	_main
                                    362 ;	return from main will return to caller
                                    363 ;--------------------------------------------------------
                                    364 ; code
                                    365 ;--------------------------------------------------------
                                    366 	.area CSEG    (CODE)
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'delay_us'
                                    369 ;------------------------------------------------------------
                                    370 ;	main.c:50: void delay_us(unsigned char t)
                                    371 ;	-----------------------------------------
                                    372 ;	 function delay_us
                                    373 ;	-----------------------------------------
      000062                        374 _delay_us:
                           000007   375 	ar7 = 0x07
                           000006   376 	ar6 = 0x06
                           000005   377 	ar5 = 0x05
                           000004   378 	ar4 = 0x04
                           000003   379 	ar3 = 0x03
                           000002   380 	ar2 = 0x02
                           000001   381 	ar1 = 0x01
                           000000   382 	ar0 = 0x00
      000062 AF 82            [24]  383 	mov	r7,dpl
                                    384 ;	main.c:52: while(t--);
      000064                        385 00101$:
      000064 8F 06            [24]  386 	mov	ar6,r7
      000066 1F               [12]  387 	dec	r7
      000067 EE               [12]  388 	mov	a,r6
      000068 70 FA            [24]  389 	jnz	00101$
                                    390 ;	main.c:53: }
      00006A 22               [24]  391 	ret
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'delay'
                                    394 ;------------------------------------------------------------
                                    395 ;	main.c:54: void delay(unsigned int k)					/* Delay of msec with xtal = 11.0592MHz */
                                    396 ;	-----------------------------------------
                                    397 ;	 function delay
                                    398 ;	-----------------------------------------
      00006B                        399 _delay:
      00006B AE 82            [24]  400 	mov	r6,dpl
      00006D AF 83            [24]  401 	mov	r7,dph
                                    402 ;	main.c:57: for (i=0;i<k;i++)
      00006F 7C 00            [12]  403 	mov	r4,#0x00
      000071 7D 00            [12]  404 	mov	r5,#0x00
      000073                        405 00107$:
      000073 8C 02            [24]  406 	mov	ar2,r4
      000075 8D 03            [24]  407 	mov	ar3,r5
      000077 C3               [12]  408 	clr	c
      000078 EA               [12]  409 	mov	a,r2
      000079 9E               [12]  410 	subb	a,r6
      00007A EB               [12]  411 	mov	a,r3
      00007B 9F               [12]  412 	subb	a,r7
      00007C 50 14            [24]  413 	jnc	00109$
                                    414 ;	main.c:58: for (j=0;j<112;j++);
      00007E 7A 70            [12]  415 	mov	r2,#0x70
      000080 7B 00            [12]  416 	mov	r3,#0x00
      000082                        417 00105$:
      000082 1A               [12]  418 	dec	r2
      000083 BA FF 01         [24]  419 	cjne	r2,#0xff,00130$
      000086 1B               [12]  420 	dec	r3
      000087                        421 00130$:
      000087 EA               [12]  422 	mov	a,r2
      000088 4B               [12]  423 	orl	a,r3
      000089 70 F7            [24]  424 	jnz	00105$
                                    425 ;	main.c:57: for (i=0;i<k;i++)
      00008B 0C               [12]  426 	inc	r4
      00008C BC 00 E4         [24]  427 	cjne	r4,#0x00,00107$
      00008F 0D               [12]  428 	inc	r5
      000090 80 E1            [24]  429 	sjmp	00107$
      000092                        430 00109$:
                                    431 ;	main.c:59: }
      000092 22               [24]  432 	ret
                                    433 ;------------------------------------------------------------
                                    434 ;Allocation info for local variables in function 'GLCD_Command'
                                    435 ;------------------------------------------------------------
                                    436 ;	main.c:60: void GLCD_Command(char Command)				/* GLCD command function */
                                    437 ;	-----------------------------------------
                                    438 ;	 function GLCD_Command
                                    439 ;	-----------------------------------------
      000093                        440 _GLCD_Command:
      000093 85 82 A0         [24]  441 	mov	_P2,dpl
                                    442 ;	main.c:63: RS = 0;									/* Make RS LOW to select command register */
                                    443 ;	assignBit
      000096 C2 87            [12]  444 	clr	_P0_7
                                    445 ;	main.c:64: RW = 0;									/* Make RW LOW to select write operation */
                                    446 ;	assignBit
      000098 C2 86            [12]  447 	clr	_P0_6
                                    448 ;	main.c:65: E = 1;									/* Make HIGH to LOW transition on Enable */
                                    449 ;	assignBit
      00009A D2 85            [12]  450 	setb	_P0_5
                                    451 ;	main.c:66: delay_us(1);
      00009C 75 82 01         [24]  452 	mov	dpl,#0x01
      00009F 12 00 62         [24]  453 	lcall	_delay_us
                                    454 ;	main.c:67: E = 0;
                                    455 ;	assignBit
      0000A2 C2 85            [12]  456 	clr	_P0_5
                                    457 ;	main.c:68: delay_us(1);
      0000A4 75 82 01         [24]  458 	mov	dpl,#0x01
                                    459 ;	main.c:69: }
      0000A7 02 00 62         [24]  460 	ljmp	_delay_us
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'GLCD_Data'
                                    463 ;------------------------------------------------------------
                                    464 ;	main.c:70: void GLCD_Data(char Data)					/* GLCD data function */
                                    465 ;	-----------------------------------------
                                    466 ;	 function GLCD_Data
                                    467 ;	-----------------------------------------
      0000AA                        468 _GLCD_Data:
      0000AA 85 82 A0         [24]  469 	mov	_P2,dpl
                                    470 ;	main.c:73: RS = 1;									/* Make RS HIGH to select data register */
                                    471 ;	assignBit
      0000AD D2 87            [12]  472 	setb	_P0_7
                                    473 ;	main.c:74: RW = 0;									/* Make RW LOW to select write operation */
                                    474 ;	assignBit
      0000AF C2 86            [12]  475 	clr	_P0_6
                                    476 ;	main.c:75: E = 1;									/* Make HIGH to LOW transition on Enable */
                                    477 ;	assignBit
      0000B1 D2 85            [12]  478 	setb	_P0_5
                                    479 ;	main.c:76: delay_us(1);
      0000B3 75 82 01         [24]  480 	mov	dpl,#0x01
      0000B6 12 00 62         [24]  481 	lcall	_delay_us
                                    482 ;	main.c:77: E = 0;
                                    483 ;	assignBit
      0000B9 C2 85            [12]  484 	clr	_P0_5
                                    485 ;	main.c:78: delay_us(1);
      0000BB 75 82 01         [24]  486 	mov	dpl,#0x01
                                    487 ;	main.c:79: }
      0000BE 02 00 62         [24]  488 	ljmp	_delay_us
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'GLCD_Init'
                                    491 ;------------------------------------------------------------
                                    492 ;	main.c:80: void GLCD_Init(void)						/* GLCD initialize function */
                                    493 ;	-----------------------------------------
                                    494 ;	 function GLCD_Init
                                    495 ;	-----------------------------------------
      0000C1                        496 _GLCD_Init:
                                    497 ;	main.c:82: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
                                    498 ;	assignBit
      0000C1 D2 84            [12]  499 	setb	_P0_4
                                    500 ;	assignBit
      0000C3 D2 83            [12]  501 	setb	_P0_3
                                    502 ;	main.c:83: RST = 1;								/* Keep reset pin high */
                                    503 ;	assignBit
      0000C5 D2 82            [12]  504 	setb	_P0_2
                                    505 ;	main.c:84: delay_us(20);
      0000C7 75 82 14         [24]  506 	mov	dpl,#0x14
      0000CA 12 00 62         [24]  507 	lcall	_delay_us
                                    508 ;	main.c:85: GLCD_Command(0x3E);						/* Display OFF */
      0000CD 75 82 3E         [24]  509 	mov	dpl,#0x3e
      0000D0 12 00 93         [24]  510 	lcall	_GLCD_Command
                                    511 ;	main.c:86: GLCD_Command(0x40);						/* Set y address (column=0) */
      0000D3 75 82 40         [24]  512 	mov	dpl,#0x40
      0000D6 12 00 93         [24]  513 	lcall	_GLCD_Command
                                    514 ;	main.c:87: GLCD_Command(0xB8);						/* Set x address (page=0) */
      0000D9 75 82 B8         [24]  515 	mov	dpl,#0xb8
      0000DC 12 00 93         [24]  516 	lcall	_GLCD_Command
                                    517 ;	main.c:88: GLCD_Command(0xC0);						/* Set z address (start line=0) */
      0000DF 75 82 C0         [24]  518 	mov	dpl,#0xc0
      0000E2 12 00 93         [24]  519 	lcall	_GLCD_Command
                                    520 ;	main.c:89: GLCD_Command(0x3F);						/* Display ON */
      0000E5 75 82 3F         [24]  521 	mov	dpl,#0x3f
                                    522 ;	main.c:90: }
      0000E8 02 00 93         [24]  523 	ljmp	_GLCD_Command
                                    524 ;------------------------------------------------------------
                                    525 ;Allocation info for local variables in function 'GLCD_ClearAll'
                                    526 ;------------------------------------------------------------
                                    527 ;	main.c:91: void GLCD_ClearAll(void)						/* GLCD all display clear function */
                                    528 ;	-----------------------------------------
                                    529 ;	 function GLCD_ClearAll
                                    530 ;	-----------------------------------------
      0000EB                        531 _GLCD_ClearAll:
                                    532 ;	main.c:94: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
                                    533 ;	assignBit
      0000EB D2 84            [12]  534 	setb	_P0_4
                                    535 ;	assignBit
      0000ED D2 83            [12]  536 	setb	_P0_3
                                    537 ;	main.c:95: for(i=0;i<8;i++)
      0000EF 7E 00            [12]  538 	mov	r6,#0x00
      0000F1 7F 00            [12]  539 	mov	r7,#0x00
      0000F3                        540 00105$:
                                    541 ;	main.c:97: GLCD_Command((0xB8)+i);				/* Increment page */
      0000F3 8E 05            [24]  542 	mov	ar5,r6
      0000F5 74 B8            [12]  543 	mov	a,#0xb8
      0000F7 2D               [12]  544 	add	a,r5
      0000F8 F5 82            [12]  545 	mov	dpl,a
      0000FA C0 07            [24]  546 	push	ar7
      0000FC C0 06            [24]  547 	push	ar6
      0000FE 12 00 93         [24]  548 	lcall	_GLCD_Command
      000101 D0 06            [24]  549 	pop	ar6
      000103 D0 07            [24]  550 	pop	ar7
                                    551 ;	main.c:98: for(j=0;j<64;j++)
      000105 7C 00            [12]  552 	mov	r4,#0x00
      000107 7D 00            [12]  553 	mov	r5,#0x00
      000109                        554 00103$:
                                    555 ;	main.c:100: GLCD_Data(0);					/* Write zeros to all 64 column */
      000109 75 82 00         [24]  556 	mov	dpl,#0x00
      00010C C0 07            [24]  557 	push	ar7
      00010E C0 06            [24]  558 	push	ar6
      000110 C0 05            [24]  559 	push	ar5
      000112 C0 04            [24]  560 	push	ar4
      000114 12 00 AA         [24]  561 	lcall	_GLCD_Data
      000117 D0 04            [24]  562 	pop	ar4
      000119 D0 05            [24]  563 	pop	ar5
      00011B D0 06            [24]  564 	pop	ar6
      00011D D0 07            [24]  565 	pop	ar7
                                    566 ;	main.c:98: for(j=0;j<64;j++)
      00011F 0C               [12]  567 	inc	r4
      000120 BC 00 01         [24]  568 	cjne	r4,#0x00,00127$
      000123 0D               [12]  569 	inc	r5
      000124                        570 00127$:
      000124 C3               [12]  571 	clr	c
      000125 EC               [12]  572 	mov	a,r4
      000126 94 40            [12]  573 	subb	a,#0x40
      000128 ED               [12]  574 	mov	a,r5
      000129 64 80            [12]  575 	xrl	a,#0x80
      00012B 94 80            [12]  576 	subb	a,#0x80
      00012D 40 DA            [24]  577 	jc	00103$
                                    578 ;	main.c:95: for(i=0;i<8;i++)
      00012F 0E               [12]  579 	inc	r6
      000130 BE 00 01         [24]  580 	cjne	r6,#0x00,00129$
      000133 0F               [12]  581 	inc	r7
      000134                        582 00129$:
      000134 C3               [12]  583 	clr	c
      000135 EE               [12]  584 	mov	a,r6
      000136 94 08            [12]  585 	subb	a,#0x08
      000138 EF               [12]  586 	mov	a,r7
      000139 64 80            [12]  587 	xrl	a,#0x80
      00013B 94 80            [12]  588 	subb	a,#0x80
      00013D 40 B4            [24]  589 	jc	00105$
                                    590 ;	main.c:103: GLCD_Command(0x40);						/* Set Y address (column=0) */
      00013F 75 82 40         [24]  591 	mov	dpl,#0x40
      000142 12 00 93         [24]  592 	lcall	_GLCD_Command
                                    593 ;	main.c:104: GLCD_Command(0xB8);						/* Set X address (page=0) */
      000145 75 82 B8         [24]  594 	mov	dpl,#0xb8
                                    595 ;	main.c:105: }
      000148 02 00 93         [24]  596 	ljmp	_GLCD_Command
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'GLCD_Plot_Coordinate_Axes'
                                    599 ;------------------------------------------------------------
                                    600 ;	main.c:106: void GLCD_Plot_Coordinate_Axes(void)			/* GLCD all display clear function */
                                    601 ;	-----------------------------------------
                                    602 ;	 function GLCD_Plot_Coordinate_Axes
                                    603 ;	-----------------------------------------
      00014B                        604 _GLCD_Plot_Coordinate_Axes:
                                    605 ;	main.c:113: CS1 = 1; CS2 = 0;						/* Select right half of display */
                                    606 ;	assignBit
      00014B D2 84            [12]  607 	setb	_P0_4
                                    608 ;	assignBit
      00014D C2 83            [12]  609 	clr	_P0_3
                                    610 ;	main.c:114: for(i=0;i<8;i++)
      00014F 7E 00            [12]  611 	mov	r6,#0x00
      000151 7F 00            [12]  612 	mov	r7,#0x00
      000153                        613 00113$:
                                    614 ;	main.c:116: GLCD_Command((0xB8)+i);				/* Increment page */
      000153 8E 05            [24]  615 	mov	ar5,r6
      000155 74 B8            [12]  616 	mov	a,#0xb8
      000157 2D               [12]  617 	add	a,r5
      000158 F5 82            [12]  618 	mov	dpl,a
      00015A C0 07            [24]  619 	push	ar7
      00015C C0 06            [24]  620 	push	ar6
      00015E 12 00 93         [24]  621 	lcall	_GLCD_Command
      000161 D0 06            [24]  622 	pop	ar6
      000163 D0 07            [24]  623 	pop	ar7
                                    624 ;	main.c:117: for(j=0;j<64;j++)
      000165 C3               [12]  625 	clr	c
      000166 EE               [12]  626 	mov	a,r6
      000167 94 07            [12]  627 	subb	a,#0x07
      000169 EF               [12]  628 	mov	a,r7
      00016A 64 80            [12]  629 	xrl	a,#0x80
      00016C 94 80            [12]  630 	subb	a,#0x80
      00016E E4               [12]  631 	clr	a
      00016F 33               [12]  632 	rlc	a
      000170 FD               [12]  633 	mov	r5,a
      000171 C3               [12]  634 	clr	c
      000172 EE               [12]  635 	mov	a,r6
      000173 94 03            [12]  636 	subb	a,#0x03
      000175 EF               [12]  637 	mov	a,r7
      000176 64 80            [12]  638 	xrl	a,#0x80
      000178 94 80            [12]  639 	subb	a,#0x80
      00017A 92 00            [24]  640 	mov	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,c
      00017C 7B 00            [12]  641 	mov	r3,#0x00
      00017E 7C 00            [12]  642 	mov	r4,#0x00
      000180                        643 00111$:
                                    644 ;	main.c:119: if(i>=3 && j==0)
      000180 20 00 57         [24]  645 	jb	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,00112$
      000183 EB               [12]  646 	mov	a,r3
      000184 4C               [12]  647 	orl	a,r4
      000185 70 53            [24]  648 	jnz	00112$
                                    649 ;	main.c:121: GLCD_Command(0x40+5);
      000187 75 82 45         [24]  650 	mov	dpl,#0x45
      00018A C0 07            [24]  651 	push	ar7
      00018C C0 06            [24]  652 	push	ar6
      00018E C0 05            [24]  653 	push	ar5
      000190 C0 04            [24]  654 	push	ar4
      000192 C0 03            [24]  655 	push	ar3
      000194 12 00 93         [24]  656 	lcall	_GLCD_Command
      000197 D0 03            [24]  657 	pop	ar3
      000199 D0 04            [24]  658 	pop	ar4
      00019B D0 05            [24]  659 	pop	ar5
      00019D D0 06            [24]  660 	pop	ar6
      00019F D0 07            [24]  661 	pop	ar7
                                    662 ;	main.c:122: if(i<7)
      0001A1 ED               [12]  663 	mov	a,r5
      0001A2 60 1C            [24]  664 	jz	00102$
                                    665 ;	main.c:123: GLCD_Data(0xFF);
      0001A4 75 82 FF         [24]  666 	mov	dpl,#0xff
      0001A7 C0 07            [24]  667 	push	ar7
      0001A9 C0 06            [24]  668 	push	ar6
      0001AB C0 05            [24]  669 	push	ar5
      0001AD C0 04            [24]  670 	push	ar4
      0001AF C0 03            [24]  671 	push	ar3
      0001B1 12 00 AA         [24]  672 	lcall	_GLCD_Data
      0001B4 D0 03            [24]  673 	pop	ar3
      0001B6 D0 04            [24]  674 	pop	ar4
      0001B8 D0 05            [24]  675 	pop	ar5
      0001BA D0 06            [24]  676 	pop	ar6
      0001BC D0 07            [24]  677 	pop	ar7
      0001BE 80 1A            [24]  678 	sjmp	00112$
      0001C0                        679 00102$:
                                    680 ;	main.c:125: GLCD_Data(0x3F);
      0001C0 75 82 3F         [24]  681 	mov	dpl,#0x3f
      0001C3 C0 07            [24]  682 	push	ar7
      0001C5 C0 06            [24]  683 	push	ar6
      0001C7 C0 05            [24]  684 	push	ar5
      0001C9 C0 04            [24]  685 	push	ar4
      0001CB C0 03            [24]  686 	push	ar3
      0001CD 12 00 AA         [24]  687 	lcall	_GLCD_Data
      0001D0 D0 03            [24]  688 	pop	ar3
      0001D2 D0 04            [24]  689 	pop	ar4
      0001D4 D0 05            [24]  690 	pop	ar5
      0001D6 D0 06            [24]  691 	pop	ar6
      0001D8 D0 07            [24]  692 	pop	ar7
      0001DA                        693 00112$:
                                    694 ;	main.c:117: for(j=0;j<64;j++)
      0001DA 0B               [12]  695 	inc	r3
      0001DB BB 00 01         [24]  696 	cjne	r3,#0x00,00172$
      0001DE 0C               [12]  697 	inc	r4
      0001DF                        698 00172$:
      0001DF C3               [12]  699 	clr	c
      0001E0 EB               [12]  700 	mov	a,r3
      0001E1 94 40            [12]  701 	subb	a,#0x40
      0001E3 EC               [12]  702 	mov	a,r4
      0001E4 64 80            [12]  703 	xrl	a,#0x80
      0001E6 94 80            [12]  704 	subb	a,#0x80
      0001E8 40 96            [24]  705 	jc	00111$
                                    706 ;	main.c:114: for(i=0;i<8;i++)
      0001EA 0E               [12]  707 	inc	r6
      0001EB BE 00 01         [24]  708 	cjne	r6,#0x00,00174$
      0001EE 0F               [12]  709 	inc	r7
      0001EF                        710 00174$:
      0001EF C3               [12]  711 	clr	c
      0001F0 EE               [12]  712 	mov	a,r6
      0001F1 94 08            [12]  713 	subb	a,#0x08
      0001F3 EF               [12]  714 	mov	a,r7
      0001F4 64 80            [12]  715 	xrl	a,#0x80
      0001F6 94 80            [12]  716 	subb	a,#0x80
      0001F8 50 03            [24]  717 	jnc	00175$
      0001FA 02 01 53         [24]  718 	ljmp	00113$
      0001FD                        719 00175$:
                                    720 ;	main.c:129: GLCD_Command(0xB8+3); 					/* Select Page 3 (left) */
      0001FD 75 82 BB         [24]  721 	mov	dpl,#0xbb
      000200 12 00 93         [24]  722 	lcall	_GLCD_Command
                                    723 ;	main.c:130: GLCD_Command(0x40+5-2);					/* Select Column 1 */
      000203 75 82 43         [24]  724 	mov	dpl,#0x43
      000206 12 00 93         [24]  725 	lcall	_GLCD_Command
                                    726 ;	main.c:131: GLCD_Data(0x04);
      000209 75 82 04         [24]  727 	mov	dpl,#0x04
      00020C 12 00 AA         [24]  728 	lcall	_GLCD_Data
                                    729 ;	main.c:132: GLCD_Command(0x40+5-1);		   			/* Select Column 2 */
      00020F 75 82 44         [24]  730 	mov	dpl,#0x44
      000212 12 00 93         [24]  731 	lcall	_GLCD_Command
                                    732 ;	main.c:133: GLCD_Data(0x02);
      000215 75 82 02         [24]  733 	mov	dpl,#0x02
      000218 12 00 AA         [24]  734 	lcall	_GLCD_Data
                                    735 ;	main.c:134: GLCD_Command(0x40+5+1);					/* Select Column 1 */
      00021B 75 82 46         [24]  736 	mov	dpl,#0x46
      00021E 12 00 93         [24]  737 	lcall	_GLCD_Command
                                    738 ;	main.c:135: GLCD_Data(0x02);
      000221 75 82 02         [24]  739 	mov	dpl,#0x02
      000224 12 00 AA         [24]  740 	lcall	_GLCD_Data
                                    741 ;	main.c:136: GLCD_Command(0x40+5+2);		   			/* Select Column 2 */
      000227 75 82 47         [24]  742 	mov	dpl,#0x47
      00022A 12 00 93         [24]  743 	lcall	_GLCD_Command
                                    744 ;	main.c:137: GLCD_Data(0x04);
      00022D 75 82 04         [24]  745 	mov	dpl,#0x04
      000230 12 00 AA         [24]  746 	lcall	_GLCD_Data
                                    747 ;	main.c:140: CS1 = 1; CS2 = 0;						/* Select left half of display */
                                    748 ;	assignBit
      000233 D2 84            [12]  749 	setb	_P0_4
                                    750 ;	assignBit
      000235 C2 83            [12]  751 	clr	_P0_3
                                    752 ;	main.c:141: GLCD_Command((0xB8)+7);
      000237 75 82 BF         [24]  753 	mov	dpl,#0xbf
      00023A 12 00 93         [24]  754 	lcall	_GLCD_Command
                                    755 ;	main.c:142: GLCD_Command(0x40+6);					/* Set Y address (column=1) */
      00023D 75 82 46         [24]  756 	mov	dpl,#0x46
      000240 12 00 93         [24]  757 	lcall	_GLCD_Command
                                    758 ;	main.c:143: for(j=6;j<64;j++)
      000243 7E 06            [12]  759 	mov	r6,#0x06
      000245 7F 00            [12]  760 	mov	r7,#0x00
      000247                        761 00115$:
                                    762 ;	main.c:145: GLCD_Data(0x20);
      000247 75 82 20         [24]  763 	mov	dpl,#0x20
      00024A C0 07            [24]  764 	push	ar7
      00024C C0 06            [24]  765 	push	ar6
      00024E 12 00 AA         [24]  766 	lcall	_GLCD_Data
      000251 D0 06            [24]  767 	pop	ar6
      000253 D0 07            [24]  768 	pop	ar7
                                    769 ;	main.c:143: for(j=6;j<64;j++)
      000255 0E               [12]  770 	inc	r6
      000256 BE 00 01         [24]  771 	cjne	r6,#0x00,00176$
      000259 0F               [12]  772 	inc	r7
      00025A                        773 00176$:
      00025A C3               [12]  774 	clr	c
      00025B EE               [12]  775 	mov	a,r6
      00025C 94 40            [12]  776 	subb	a,#0x40
      00025E EF               [12]  777 	mov	a,r7
      00025F 64 80            [12]  778 	xrl	a,#0x80
      000261 94 80            [12]  779 	subb	a,#0x80
      000263 40 E2            [24]  780 	jc	00115$
                                    781 ;	main.c:147: CS1 = 0; CS2 = 1;						/* Select right half of display */
                                    782 ;	assignBit
      000265 C2 84            [12]  783 	clr	_P0_4
                                    784 ;	assignBit
      000267 D2 83            [12]  785 	setb	_P0_3
                                    786 ;	main.c:148: GLCD_Command((0xB8)+7);
      000269 75 82 BF         [24]  787 	mov	dpl,#0xbf
      00026C 12 00 93         [24]  788 	lcall	_GLCD_Command
                                    789 ;	main.c:149: GLCD_Command(0x40);						/* Set Y address (column=1) */
      00026F 75 82 40         [24]  790 	mov	dpl,#0x40
      000272 12 00 93         [24]  791 	lcall	_GLCD_Command
                                    792 ;	main.c:150: for(j=0;j<32;j++)
      000275 7E 00            [12]  793 	mov	r6,#0x00
      000277 7F 00            [12]  794 	mov	r7,#0x00
      000279                        795 00117$:
                                    796 ;	main.c:152: GLCD_Data(0x20);
      000279 75 82 20         [24]  797 	mov	dpl,#0x20
      00027C C0 07            [24]  798 	push	ar7
      00027E C0 06            [24]  799 	push	ar6
      000280 12 00 AA         [24]  800 	lcall	_GLCD_Data
      000283 D0 06            [24]  801 	pop	ar6
      000285 D0 07            [24]  802 	pop	ar7
                                    803 ;	main.c:150: for(j=0;j<32;j++)
      000287 0E               [12]  804 	inc	r6
      000288 BE 00 01         [24]  805 	cjne	r6,#0x00,00178$
      00028B 0F               [12]  806 	inc	r7
      00028C                        807 00178$:
      00028C C3               [12]  808 	clr	c
      00028D EE               [12]  809 	mov	a,r6
      00028E 94 20            [12]  810 	subb	a,#0x20
      000290 EF               [12]  811 	mov	a,r7
      000291 64 80            [12]  812 	xrl	a,#0x80
      000293 94 80            [12]  813 	subb	a,#0x80
      000295 40 E2            [24]  814 	jc	00117$
                                    815 ;	main.c:154: GLCD_Command(0x40+30);					/* Select Column 1 */
      000297 75 82 5E         [24]  816 	mov	dpl,#0x5e
      00029A 12 00 93         [24]  817 	lcall	_GLCD_Command
                                    818 ;	main.c:155: GLCD_Data(0x70);
      00029D 75 82 70         [24]  819 	mov	dpl,#0x70
      0002A0 12 00 AA         [24]  820 	lcall	_GLCD_Data
                                    821 ;	main.c:156: GLCD_Command(0x40+29);
      0002A3 75 82 5D         [24]  822 	mov	dpl,#0x5d
      0002A6 12 00 93         [24]  823 	lcall	_GLCD_Command
                                    824 ;	main.c:157: GLCD_Data(0xA8);
      0002A9 75 82 A8         [24]  825 	mov	dpl,#0xa8
                                    826 ;	main.c:158: }
      0002AC 02 00 AA         [24]  827 	ljmp	_GLCD_Data
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'GLCD_WriteChar'
                                    830 ;------------------------------------------------------------
                                    831 ;	main.c:159: void GLCD_WriteChar(unsigned char page_no)	/* GLCD write a char function */
                                    832 ;	-----------------------------------------
                                    833 ;	 function GLCD_WriteChar
                                    834 ;	-----------------------------------------
      0002AF                        835 _GLCD_WriteChar:
      0002AF AF 82            [24]  836 	mov	r7,dpl
                                    837 ;	main.c:162: float Page_inc=0.5;
      0002B1 78 02            [12]  838 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
      0002B3 E4               [12]  839 	clr	a
      0002B4 F2               [24]  840 	movx	@r0,a
      0002B5 08               [12]  841 	inc	r0
      0002B6 F2               [24]  842 	movx	@r0,a
      0002B7 08               [12]  843 	inc	r0
      0002B8 F2               [24]  844 	movx	@r0,a
      0002B9 74 3F            [12]  845 	mov	a,#0x3f
      0002BB 08               [12]  846 	inc	r0
      0002BC F2               [24]  847 	movx	@r0,a
                                    848 ;	main.c:164: CS1 = 1;
                                    849 ;	assignBit
      0002BD D2 84            [12]  850 	setb	_P0_4
                                    851 ;	main.c:165: CS2 = 0;
                                    852 ;	assignBit
      0002BF C2 83            [12]  853 	clr	_P0_3
                                    854 ;	main.c:166: GLCD_Command((0xB8)+page_no);
      0002C1 74 B8            [12]  855 	mov	a,#0xb8
      0002C3 2F               [12]  856 	add	a,r7
      0002C4 F5 82            [12]  857 	mov	dpl,a
      0002C6 12 00 93         [24]  858 	lcall	_GLCD_Command
                                    859 ;	main.c:167: GLCD_Command(0x40);
      0002C9 75 82 40         [24]  860 	mov	dpl,#0x40
      0002CC 12 00 93         [24]  861 	lcall	_GLCD_Command
                                    862 ;	main.c:168: for(column=0;column<5;column++)
      0002CF 7A 00            [12]  863 	mov	r2,#0x00
      0002D1 7F 00            [12]  864 	mov	r7,#0x00
      0002D3 7C 00            [12]  865 	mov	r4,#0x00
      0002D5 7B 00            [12]  866 	mov	r3,#0x00
      0002D7                        867 00104$:
                                    868 ;	main.c:170: GLCD_Data(font[1][column]);
      0002D7 EC               [12]  869 	mov	a,r4
      0002D8 24 75            [12]  870 	add	a,#(_font + 0x0005)
      0002DA F5 82            [12]  871 	mov	dpl,a
      0002DC EB               [12]  872 	mov	a,r3
      0002DD 34 05            [12]  873 	addc	a,#((_font + 0x0005) >> 8)
      0002DF F5 83            [12]  874 	mov	dph,a
      0002E1 E4               [12]  875 	clr	a
      0002E2 93               [24]  876 	movc	a,@a+dptr
      0002E3 F5 82            [12]  877 	mov	dpl,a
      0002E5 C0 07            [24]  878 	push	ar7
      0002E7 C0 04            [24]  879 	push	ar4
      0002E9 C0 03            [24]  880 	push	ar3
      0002EB C0 02            [24]  881 	push	ar2
      0002ED 12 00 AA         [24]  882 	lcall	_GLCD_Data
      0002F0 D0 02            [24]  883 	pop	ar2
      0002F2 D0 03            [24]  884 	pop	ar3
      0002F4 D0 04            [24]  885 	pop	ar4
      0002F6 D0 07            [24]  886 	pop	ar7
                                    887 ;	main.c:171: if((Y_address+1)%64==0)
      0002F8 74 01            [12]  888 	mov	a,#0x01
      0002FA 2A               [12]  889 	add	a,r2
      0002FB FD               [12]  890 	mov	r5,a
      0002FC E4               [12]  891 	clr	a
      0002FD 3F               [12]  892 	addc	a,r7
      0002FE FE               [12]  893 	mov	r6,a
      0002FF ED               [12]  894 	mov	a,r5
      000300 54 3F            [12]  895 	anl	a,#0x3f
      000302 60 03            [24]  896 	jz	00118$
      000304 02 03 97         [24]  897 	ljmp	00102$
      000307                        898 00118$:
                                    899 ;	main.c:173: CS1 = !CS1; CS2 = !CS2;
      000307 C0 02            [24]  900 	push	ar2
      000309 C0 07            [24]  901 	push	ar7
      00030B B2 84            [12]  902 	cpl	_P0_4
      00030D B2 83            [12]  903 	cpl	_P0_3
                                    904 ;	main.c:174: GLCD_Command((Page+Page_inc));
      00030F C0 04            [24]  905 	push	ar4
      000311 C0 03            [24]  906 	push	ar3
      000313 78 02            [12]  907 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
      000315 E2               [24]  908 	movx	a,@r0
      000316 C0 E0            [24]  909 	push	acc
      000318 08               [12]  910 	inc	r0
      000319 E2               [24]  911 	movx	a,@r0
      00031A C0 E0            [24]  912 	push	acc
      00031C 08               [12]  913 	inc	r0
      00031D E2               [24]  914 	movx	a,@r0
      00031E C0 E0            [24]  915 	push	acc
      000320 08               [12]  916 	inc	r0
      000321 E2               [24]  917 	movx	a,@r0
      000322 C0 E0            [24]  918 	push	acc
      000324 90 00 00         [24]  919 	mov	dptr,#0x0000
      000327 75 F0 3A         [24]  920 	mov	b,#0x3a
      00032A 74 43            [12]  921 	mov	a,#0x43
      00032C 12 03 C5         [24]  922 	lcall	___fsadd
      00032F AA 82            [24]  923 	mov	r2,dpl
      000331 AD 83            [24]  924 	mov	r5,dph
      000333 AE F0            [24]  925 	mov	r6,b
      000335 FF               [12]  926 	mov	r7,a
      000336 E5 81            [12]  927 	mov	a,sp
      000338 24 FC            [12]  928 	add	a,#0xfc
      00033A F5 81            [12]  929 	mov	sp,a
      00033C D0 03            [24]  930 	pop	ar3
      00033E D0 04            [24]  931 	pop	ar4
      000340 8A 82            [24]  932 	mov	dpl,r2
      000342 8D 83            [24]  933 	mov	dph,r5
      000344 8E F0            [24]  934 	mov	b,r6
      000346 EF               [12]  935 	mov	a,r7
      000347 C0 07            [24]  936 	push	ar7
      000349 C0 04            [24]  937 	push	ar4
      00034B C0 03            [24]  938 	push	ar3
      00034D C0 02            [24]  939 	push	ar2
      00034F 12 04 87         [24]  940 	lcall	___fs2uchar
      000352 12 00 93         [24]  941 	lcall	_GLCD_Command
                                    942 ;	main.c:175: Page_inc=Page_inc+0.5;
      000355 E4               [12]  943 	clr	a
      000356 C0 E0            [24]  944 	push	acc
      000358 C0 E0            [24]  945 	push	acc
      00035A C0 E0            [24]  946 	push	acc
      00035C 74 3F            [12]  947 	mov	a,#0x3f
      00035E C0 E0            [24]  948 	push	acc
      000360 78 02            [12]  949 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
      000362 E2               [24]  950 	movx	a,@r0
      000363 F5 82            [12]  951 	mov	dpl,a
      000365 08               [12]  952 	inc	r0
      000366 E2               [24]  953 	movx	a,@r0
      000367 F5 83            [12]  954 	mov	dph,a
      000369 08               [12]  955 	inc	r0
      00036A E2               [24]  956 	movx	a,@r0
      00036B F5 F0            [12]  957 	mov	b,a
      00036D 08               [12]  958 	inc	r0
      00036E E2               [24]  959 	movx	a,@r0
      00036F 12 03 C5         [24]  960 	lcall	___fsadd
      000372 78 02            [12]  961 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_96
      000374 C0 E0            [24]  962 	push	acc
      000376 E5 82            [12]  963 	mov	a,dpl
      000378 F2               [24]  964 	movx	@r0,a
      000379 E5 83            [12]  965 	mov	a,dph
      00037B 08               [12]  966 	inc	r0
      00037C F2               [24]  967 	movx	@r0,a
      00037D E5 F0            [12]  968 	mov	a,b
      00037F 08               [12]  969 	inc	r0
      000380 F2               [24]  970 	movx	@r0,a
      000381 D0 E0            [24]  971 	pop	acc
      000383 08               [12]  972 	inc	r0
      000384 F2               [24]  973 	movx	@r0,a
      000385 E5 81            [12]  974 	mov	a,sp
      000387 24 FC            [12]  975 	add	a,#0xfc
      000389 F5 81            [12]  976 	mov	sp,a
      00038B D0 02            [24]  977 	pop	ar2
      00038D D0 03            [24]  978 	pop	ar3
      00038F D0 04            [24]  979 	pop	ar4
      000391 D0 07            [24]  980 	pop	ar7
                                    981 ;	main.c:168: for(column=0;column<5;column++)
      000393 D0 07            [24]  982 	pop	ar7
      000395 D0 02            [24]  983 	pop	ar2
                                    984 ;	main.c:175: Page_inc=Page_inc+0.5;
      000397                        985 00102$:
                                    986 ;	main.c:177: Y_address++;
      000397 0A               [12]  987 	inc	r2
      000398 BA 00 01         [24]  988 	cjne	r2,#0x00,00119$
      00039B 0F               [12]  989 	inc	r7
      00039C                        990 00119$:
                                    991 ;	main.c:168: for(column=0;column<5;column++)
      00039C 0C               [12]  992 	inc	r4
      00039D BC 00 01         [24]  993 	cjne	r4,#0x00,00120$
      0003A0 0B               [12]  994 	inc	r3
      0003A1                        995 00120$:
      0003A1 C3               [12]  996 	clr	c
      0003A2 EC               [12]  997 	mov	a,r4
      0003A3 94 05            [12]  998 	subb	a,#0x05
      0003A5 EB               [12]  999 	mov	a,r3
      0003A6 94 00            [12] 1000 	subb	a,#0x00
      0003A8 50 03            [24] 1001 	jnc	00121$
      0003AA 02 02 D7         [24] 1002 	ljmp	00104$
      0003AD                       1003 00121$:
                                   1004 ;	main.c:179: }
      0003AD 22               [24] 1005 	ret
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'main'
                                   1008 ;------------------------------------------------------------
                                   1009 ;	main.c:180: void main(void)
                                   1010 ;	-----------------------------------------
                                   1011 ;	 function main
                                   1012 ;	-----------------------------------------
      0003AE                       1013 _main:
                                   1014 ;	main.c:182: GLCD_Init();							/* Initialize GLCD */
      0003AE 12 00 C1         [24] 1015 	lcall	_GLCD_Init
                                   1016 ;	main.c:183: GLCD_ClearAll();
      0003B1 12 00 EB         [24] 1017 	lcall	_GLCD_ClearAll
                                   1018 ;	main.c:184: GLCD_Plot_Coordinate_Axes();
      0003B4 12 01 4B         [24] 1019 	lcall	_GLCD_Plot_Coordinate_Axes
                                   1020 ;	main.c:185: GLCD_WriteChar(0);
      0003B7 75 82 00         [24] 1021 	mov	dpl,#0x00
      0003BA 12 02 AF         [24] 1022 	lcall	_GLCD_WriteChar
                                   1023 ;	main.c:186: delay(500);
      0003BD 90 01 F4         [24] 1024 	mov	dptr,#0x01f4
      0003C0 12 00 6B         [24] 1025 	lcall	_delay
                                   1026 ;	main.c:187: while(1);
      0003C3                       1027 00102$:
                                   1028 ;	main.c:188: }
      0003C3 80 FE            [24] 1029 	sjmp	00102$
                                   1030 	.area CSEG    (CODE)
                                   1031 	.area CONST   (CODE)
      000570                       1032 _font:
      000570 00                    1033 	.db #0x00	; 0
      000571 00                    1034 	.db #0x00	; 0
      000572 00                    1035 	.db #0x00	; 0
      000573 00                    1036 	.db #0x00	; 0
      000574 00                    1037 	.db #0x00	; 0
      000575 7E                    1038 	.db #0x7e	; 126
      000576 11                    1039 	.db #0x11	; 17
      000577 11                    1040 	.db #0x11	; 17
      000578 11                    1041 	.db #0x11	; 17
      000579 7E                    1042 	.db #0x7e	; 126
      00057A 7F                    1043 	.db #0x7f	; 127
      00057B 49                    1044 	.db #0x49	; 73	'I'
      00057C 49                    1045 	.db #0x49	; 73	'I'
      00057D 49                    1046 	.db #0x49	; 73	'I'
      00057E 36                    1047 	.db #0x36	; 54	'6'
      00057F 3E                    1048 	.db #0x3e	; 62
      000580 41                    1049 	.db #0x41	; 65	'A'
      000581 41                    1050 	.db #0x41	; 65	'A'
      000582 41                    1051 	.db #0x41	; 65	'A'
      000583 22                    1052 	.db #0x22	; 34
      000584 7F                    1053 	.db #0x7f	; 127
      000585 41                    1054 	.db #0x41	; 65	'A'
      000586 41                    1055 	.db #0x41	; 65	'A'
      000587 22                    1056 	.db #0x22	; 34
      000588 1C                    1057 	.db #0x1c	; 28
      000589 7F                    1058 	.db #0x7f	; 127
      00058A 49                    1059 	.db #0x49	; 73	'I'
      00058B 49                    1060 	.db #0x49	; 73	'I'
      00058C 49                    1061 	.db #0x49	; 73	'I'
      00058D 41                    1062 	.db #0x41	; 65	'A'
      00058E 7F                    1063 	.db #0x7f	; 127
      00058F 09                    1064 	.db #0x09	; 9
      000590 09                    1065 	.db #0x09	; 9
      000591 09                    1066 	.db #0x09	; 9
      000592 01                    1067 	.db #0x01	; 1
      000593 3E                    1068 	.db #0x3e	; 62
      000594 41                    1069 	.db #0x41	; 65	'A'
      000595 49                    1070 	.db #0x49	; 73	'I'
      000596 49                    1071 	.db #0x49	; 73	'I'
      000597 7A                    1072 	.db #0x7a	; 122	'z'
      000598 7F                    1073 	.db #0x7f	; 127
      000599 08                    1074 	.db #0x08	; 8
      00059A 08                    1075 	.db #0x08	; 8
      00059B 08                    1076 	.db #0x08	; 8
      00059C 7F                    1077 	.db #0x7f	; 127
      00059D 00                    1078 	.db #0x00	; 0
      00059E 41                    1079 	.db #0x41	; 65	'A'
      00059F 7F                    1080 	.db #0x7f	; 127
      0005A0 41                    1081 	.db #0x41	; 65	'A'
      0005A1 00                    1082 	.db #0x00	; 0
      0005A2 20                    1083 	.db #0x20	; 32
      0005A3 40                    1084 	.db #0x40	; 64
      0005A4 41                    1085 	.db #0x41	; 65	'A'
      0005A5 3F                    1086 	.db #0x3f	; 63
      0005A6 01                    1087 	.db #0x01	; 1
      0005A7 7F                    1088 	.db #0x7f	; 127
      0005A8 08                    1089 	.db #0x08	; 8
      0005A9 14                    1090 	.db #0x14	; 20
      0005AA 22                    1091 	.db #0x22	; 34
      0005AB 41                    1092 	.db #0x41	; 65	'A'
      0005AC 7F                    1093 	.db #0x7f	; 127
      0005AD 40                    1094 	.db #0x40	; 64
      0005AE 40                    1095 	.db #0x40	; 64
      0005AF 40                    1096 	.db #0x40	; 64
      0005B0 40                    1097 	.db #0x40	; 64
      0005B1 7F                    1098 	.db #0x7f	; 127
      0005B2 02                    1099 	.db #0x02	; 2
      0005B3 0C                    1100 	.db #0x0c	; 12
      0005B4 02                    1101 	.db #0x02	; 2
      0005B5 7F                    1102 	.db #0x7f	; 127
      0005B6 7F                    1103 	.db #0x7f	; 127
      0005B7 04                    1104 	.db #0x04	; 4
      0005B8 08                    1105 	.db #0x08	; 8
      0005B9 10                    1106 	.db #0x10	; 16
      0005BA 7F                    1107 	.db #0x7f	; 127
      0005BB 3E                    1108 	.db #0x3e	; 62
      0005BC 41                    1109 	.db #0x41	; 65	'A'
      0005BD 41                    1110 	.db #0x41	; 65	'A'
      0005BE 41                    1111 	.db #0x41	; 65	'A'
      0005BF 3E                    1112 	.db #0x3e	; 62
      0005C0 7F                    1113 	.db #0x7f	; 127
      0005C1 09                    1114 	.db #0x09	; 9
      0005C2 09                    1115 	.db #0x09	; 9
      0005C3 09                    1116 	.db #0x09	; 9
      0005C4 06                    1117 	.db #0x06	; 6
      0005C5 3E                    1118 	.db #0x3e	; 62
      0005C6 41                    1119 	.db #0x41	; 65	'A'
      0005C7 51                    1120 	.db #0x51	; 81	'Q'
      0005C8 21                    1121 	.db #0x21	; 33
      0005C9 5E                    1122 	.db #0x5e	; 94
      0005CA 7F                    1123 	.db #0x7f	; 127
      0005CB 09                    1124 	.db #0x09	; 9
      0005CC 19                    1125 	.db #0x19	; 25
      0005CD 29                    1126 	.db #0x29	; 41
      0005CE 46                    1127 	.db #0x46	; 70	'F'
      0005CF 46                    1128 	.db #0x46	; 70	'F'
      0005D0 49                    1129 	.db #0x49	; 73	'I'
      0005D1 49                    1130 	.db #0x49	; 73	'I'
      0005D2 49                    1131 	.db #0x49	; 73	'I'
      0005D3 31                    1132 	.db #0x31	; 49	'1'
      0005D4 01                    1133 	.db #0x01	; 1
      0005D5 01                    1134 	.db #0x01	; 1
      0005D6 7F                    1135 	.db #0x7f	; 127
      0005D7 01                    1136 	.db #0x01	; 1
      0005D8 01                    1137 	.db #0x01	; 1
      0005D9 3F                    1138 	.db #0x3f	; 63
      0005DA 40                    1139 	.db #0x40	; 64
      0005DB 40                    1140 	.db #0x40	; 64
      0005DC 40                    1141 	.db #0x40	; 64
      0005DD 3F                    1142 	.db #0x3f	; 63
      0005DE 1F                    1143 	.db #0x1f	; 31
      0005DF 20                    1144 	.db #0x20	; 32
      0005E0 40                    1145 	.db #0x40	; 64
      0005E1 20                    1146 	.db #0x20	; 32
      0005E2 1F                    1147 	.db #0x1f	; 31
      0005E3 3F                    1148 	.db #0x3f	; 63
      0005E4 40                    1149 	.db #0x40	; 64
      0005E5 38                    1150 	.db #0x38	; 56	'8'
      0005E6 40                    1151 	.db #0x40	; 64
      0005E7 3F                    1152 	.db #0x3f	; 63
      0005E8 63                    1153 	.db #0x63	; 99	'c'
      0005E9 14                    1154 	.db #0x14	; 20
      0005EA 08                    1155 	.db #0x08	; 8
      0005EB 14                    1156 	.db #0x14	; 20
      0005EC 63                    1157 	.db #0x63	; 99	'c'
      0005ED 07                    1158 	.db #0x07	; 7
      0005EE 08                    1159 	.db #0x08	; 8
      0005EF 70                    1160 	.db #0x70	; 112	'p'
      0005F0 08                    1161 	.db #0x08	; 8
      0005F1 07                    1162 	.db #0x07	; 7
      0005F2 61                    1163 	.db #0x61	; 97	'a'
      0005F3 51                    1164 	.db #0x51	; 81	'Q'
      0005F4 49                    1165 	.db #0x49	; 73	'I'
      0005F5 45                    1166 	.db #0x45	; 69	'E'
      0005F6 43                    1167 	.db #0x43	; 67	'C'
                                   1168 	.area XINIT   (CODE)
                                   1169 	.area CABS    (ABS,CODE)
