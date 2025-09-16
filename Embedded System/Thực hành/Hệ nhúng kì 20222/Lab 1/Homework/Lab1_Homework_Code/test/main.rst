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
                                     12 	.globl _ReadTemperature
                                     13 	.globl _WriteOneChar
                                     14 	.globl _ReadOneChar
                                     15 	.globl _Init_18B20
                                     16 	.globl _delay_18B20
                                     17 	.globl _delay_ms
                                     18 	.globl _TF2
                                     19 	.globl _EXF2
                                     20 	.globl _RCLK
                                     21 	.globl _TCLK
                                     22 	.globl _EXEN2
                                     23 	.globl _TR2
                                     24 	.globl _C_T2
                                     25 	.globl _CP_RL2
                                     26 	.globl _T2CON_7
                                     27 	.globl _T2CON_6
                                     28 	.globl _T2CON_5
                                     29 	.globl _T2CON_4
                                     30 	.globl _T2CON_3
                                     31 	.globl _T2CON_2
                                     32 	.globl _T2CON_1
                                     33 	.globl _T2CON_0
                                     34 	.globl _PT2
                                     35 	.globl _ET2
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _P
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ES
                                     67 	.globl _ET1
                                     68 	.globl _EX1
                                     69 	.globl _ET0
                                     70 	.globl _EX0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _SM0
                                     80 	.globl _SM1
                                     81 	.globl _SM2
                                     82 	.globl _REN
                                     83 	.globl _TB8
                                     84 	.globl _RB8
                                     85 	.globl _TI
                                     86 	.globl _RI
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _TF1
                                     96 	.globl _TR1
                                     97 	.globl _TF0
                                     98 	.globl _TR0
                                     99 	.globl _IE1
                                    100 	.globl _IT1
                                    101 	.globl _IE0
                                    102 	.globl _IT0
                                    103 	.globl _P0_7
                                    104 	.globl _P0_6
                                    105 	.globl _P0_5
                                    106 	.globl _P0_4
                                    107 	.globl _P0_3
                                    108 	.globl _P0_2
                                    109 	.globl _P0_1
                                    110 	.globl _P0_0
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2CON
                                    116 	.globl _B
                                    117 	.globl _ACC
                                    118 	.globl _PSW
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _temp
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 _ACC	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                           0000C8   164 _T2CON	=	0x00c8
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                                    169 ;--------------------------------------------------------
                                    170 ; special function bits
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 _P0_0	=	0x0080
                           000081   175 _P0_1	=	0x0081
                           000082   176 _P0_2	=	0x0082
                           000083   177 _P0_3	=	0x0083
                           000084   178 _P0_4	=	0x0084
                           000085   179 _P0_5	=	0x0085
                           000086   180 _P0_6	=	0x0086
                           000087   181 _P0_7	=	0x0087
                           000088   182 _IT0	=	0x0088
                           000089   183 _IE0	=	0x0089
                           00008A   184 _IT1	=	0x008a
                           00008B   185 _IE1	=	0x008b
                           00008C   186 _TR0	=	0x008c
                           00008D   187 _TF0	=	0x008d
                           00008E   188 _TR1	=	0x008e
                           00008F   189 _TF1	=	0x008f
                           000090   190 _P1_0	=	0x0090
                           000091   191 _P1_1	=	0x0091
                           000092   192 _P1_2	=	0x0092
                           000093   193 _P1_3	=	0x0093
                           000094   194 _P1_4	=	0x0094
                           000095   195 _P1_5	=	0x0095
                           000096   196 _P1_6	=	0x0096
                           000097   197 _P1_7	=	0x0097
                           000098   198 _RI	=	0x0098
                           000099   199 _TI	=	0x0099
                           00009A   200 _RB8	=	0x009a
                           00009B   201 _TB8	=	0x009b
                           00009C   202 _REN	=	0x009c
                           00009D   203 _SM2	=	0x009d
                           00009E   204 _SM1	=	0x009e
                           00009F   205 _SM0	=	0x009f
                           0000A0   206 _P2_0	=	0x00a0
                           0000A1   207 _P2_1	=	0x00a1
                           0000A2   208 _P2_2	=	0x00a2
                           0000A3   209 _P2_3	=	0x00a3
                           0000A4   210 _P2_4	=	0x00a4
                           0000A5   211 _P2_5	=	0x00a5
                           0000A6   212 _P2_6	=	0x00a6
                           0000A7   213 _P2_7	=	0x00a7
                           0000A8   214 _EX0	=	0x00a8
                           0000A9   215 _ET0	=	0x00a9
                           0000AA   216 _EX1	=	0x00aa
                           0000AB   217 _ET1	=	0x00ab
                           0000AC   218 _ES	=	0x00ac
                           0000AF   219 _EA	=	0x00af
                           0000B0   220 _P3_0	=	0x00b0
                           0000B1   221 _P3_1	=	0x00b1
                           0000B2   222 _P3_2	=	0x00b2
                           0000B3   223 _P3_3	=	0x00b3
                           0000B4   224 _P3_4	=	0x00b4
                           0000B5   225 _P3_5	=	0x00b5
                           0000B6   226 _P3_6	=	0x00b6
                           0000B7   227 _P3_7	=	0x00b7
                           0000B0   228 _RXD	=	0x00b0
                           0000B1   229 _TXD	=	0x00b1
                           0000B2   230 _INT0	=	0x00b2
                           0000B3   231 _INT1	=	0x00b3
                           0000B4   232 _T0	=	0x00b4
                           0000B5   233 _T1	=	0x00b5
                           0000B6   234 _WR	=	0x00b6
                           0000B7   235 _RD	=	0x00b7
                           0000B8   236 _PX0	=	0x00b8
                           0000B9   237 _PT0	=	0x00b9
                           0000BA   238 _PX1	=	0x00ba
                           0000BB   239 _PT1	=	0x00bb
                           0000BC   240 _PS	=	0x00bc
                           0000D0   241 _P	=	0x00d0
                           0000D1   242 _F1	=	0x00d1
                           0000D2   243 _OV	=	0x00d2
                           0000D3   244 _RS0	=	0x00d3
                           0000D4   245 _RS1	=	0x00d4
                           0000D5   246 _F0	=	0x00d5
                           0000D6   247 _AC	=	0x00d6
                           0000D7   248 _CY	=	0x00d7
                           0000AD   249 _ET2	=	0x00ad
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                                    267 ;--------------------------------------------------------
                                    268 ; overlayable register banks
                                    269 ;--------------------------------------------------------
                                    270 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        271 	.ds 8
                                    272 ;--------------------------------------------------------
                                    273 ; internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area DSEG    (DATA)
      000008                        276 _temp::
      000008                        277 	.ds 1
      000009                        278 _delay_ms_ms_65536_1:
      000009                        279 	.ds 4
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable items in internal ram
                                    282 ;--------------------------------------------------------
                                    283 	.area	OSEG    (OVR,DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; Stack segment in internal ram
                                    286 ;--------------------------------------------------------
                                    287 	.area SSEG
      000011                        288 __start__stack:
      000011                        289 	.ds	1
                                    290 
                                    291 ;--------------------------------------------------------
                                    292 ; indirectly addressable internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area ISEG    (DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; absolute internal ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area IABS    (ABS,DATA)
                                    299 	.area IABS    (ABS,DATA)
                                    300 ;--------------------------------------------------------
                                    301 ; bit data
                                    302 ;--------------------------------------------------------
                                    303 	.area BSEG    (BIT)
                                    304 ;--------------------------------------------------------
                                    305 ; paged external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area PSEG    (PAG,XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; uninitialized external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XSEG    (XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; absolute external ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XABS    (ABS,XDATA)
                                    316 ;--------------------------------------------------------
                                    317 ; initialized external ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area XISEG   (XDATA)
                                    320 	.area HOME    (CODE)
                                    321 	.area GSINIT0 (CODE)
                                    322 	.area GSINIT1 (CODE)
                                    323 	.area GSINIT2 (CODE)
                                    324 	.area GSINIT3 (CODE)
                                    325 	.area GSINIT4 (CODE)
                                    326 	.area GSINIT5 (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 	.area GSFINAL (CODE)
                                    329 	.area CSEG    (CODE)
                                    330 ;--------------------------------------------------------
                                    331 ; interrupt vector
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
      000000                        334 __interrupt_vect:
      000000 02 00 06         [24]  335 	ljmp	__sdcc_gsinit_startup
                                    336 ;--------------------------------------------------------
                                    337 ; global & static initialisations
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 	.area GSFINAL (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.globl __sdcc_gsinit_startup
                                    344 	.globl __sdcc_program_startup
                                    345 	.globl __start__stack
                                    346 	.globl __mcs51_genXINIT
                                    347 	.globl __mcs51_genXRAMCLEAR
                                    348 	.globl __mcs51_genRAMCLEAR
                                    349 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  350 	ljmp	__sdcc_program_startup
                                    351 ;--------------------------------------------------------
                                    352 ; Home
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area HOME    (CODE)
      000003                        356 __sdcc_program_startup:
      000003 02 01 DE         [24]  357 	ljmp	_main
                                    358 ;	return from main will return to caller
                                    359 ;--------------------------------------------------------
                                    360 ; code
                                    361 ;--------------------------------------------------------
                                    362 	.area CSEG    (CODE)
                                    363 ;------------------------------------------------------------
                                    364 ;Allocation info for local variables in function 'delay_ms'
                                    365 ;------------------------------------------------------------
                                    366 ;ms                        Allocated with name '_delay_ms_ms_65536_1'
                                    367 ;------------------------------------------------------------
                                    368 ;	main.c:6: void delay_ms(long ms) {
                                    369 ;	-----------------------------------------
                                    370 ;	 function delay_ms
                                    371 ;	-----------------------------------------
      000062                        372 _delay_ms:
                           000007   373 	ar7 = 0x07
                           000006   374 	ar6 = 0x06
                           000005   375 	ar5 = 0x05
                           000004   376 	ar4 = 0x04
                           000003   377 	ar3 = 0x03
                           000002   378 	ar2 = 0x02
                           000001   379 	ar1 = 0x01
                           000000   380 	ar0 = 0x00
      000062 85 82 0D         [24]  381 	mov	__mullong_PARM_2,dpl
      000065 85 83 0E         [24]  382 	mov	(__mullong_PARM_2 + 1),dph
      000068 85 F0 0F         [24]  383 	mov	(__mullong_PARM_2 + 2),b
      00006B F5 10            [12]  384 	mov	(__mullong_PARM_2 + 3),a
                                    385 ;	main.c:7: ms *= 1000;  // Tinh so chu ki may (1000 ckm ~ 1ms)
      00006D 90 03 E8         [24]  386 	mov	dptr,#0x03e8
      000070 E4               [12]  387 	clr	a
      000071 F5 F0            [12]  388 	mov	b,a
      000073 12 02 DB         [24]  389 	lcall	__mullong
      000076 AC 82            [24]  390 	mov	r4,dpl
      000078 AD 83            [24]  391 	mov	r5,dph
      00007A AE F0            [24]  392 	mov	r6,b
      00007C FF               [12]  393 	mov	r7,a
                                    394 ;	main.c:8: while (ms > 0) {
      00007D                        395 00107$:
      00007D C3               [12]  396 	clr	c
      00007E E4               [12]  397 	clr	a
      00007F 9C               [12]  398 	subb	a,r4
      000080 E4               [12]  399 	clr	a
      000081 9D               [12]  400 	subb	a,r5
      000082 E4               [12]  401 	clr	a
      000083 9E               [12]  402 	subb	a,r6
      000084 74 80            [12]  403 	mov	a,#(0x00 ^ 0x80)
      000086 8F F0            [24]  404 	mov	b,r7
      000088 63 F0 80         [24]  405 	xrl	b,#0x80
      00008B 95 F0            [12]  406 	subb	a,b
      00008D 40 01            [24]  407 	jc	00137$
      00008F 22               [24]  408 	ret
      000090                        409 00137$:
                                    410 ;	main.c:10: TMOD = TMOD & 0xF0;
      000090 53 89 F0         [24]  411 	anl	_TMOD,#0xf0
                                    412 ;	main.c:12: TMOD = TMOD | 0x01;
      000093 43 89 01         [24]  413 	orl	_TMOD,#0x01
                                    414 ;	main.c:13: ET0 = 0;  // Che ngat Timer 0
                                    415 ;	assignBit
      000096 C2 A9            [12]  416 	clr	_ET0
                                    417 ;	main.c:14: if (ms >= 65536) {
      000098 C3               [12]  418 	clr	c
      000099 EE               [12]  419 	mov	a,r6
      00009A 94 01            [12]  420 	subb	a,#0x01
      00009C EF               [12]  421 	mov	a,r7
      00009D 64 80            [12]  422 	xrl	a,#0x80
      00009F 94 80            [12]  423 	subb	a,#0x80
      0000A1 40 0F            [24]  424 	jc	00102$
                                    425 ;	main.c:15: TH0 = 0;
                                    426 ;	main.c:16: TL0 = 0;
                                    427 ;	main.c:17: ms -= 65536;
      0000A3 E4               [12]  428 	clr	a
      0000A4 F5 8C            [12]  429 	mov	_TH0,a
      0000A6 F5 8A            [12]  430 	mov	_TL0,a
      0000A8 EE               [12]  431 	mov	a,r6
      0000A9 24 FF            [12]  432 	add	a,#0xff
      0000AB FE               [12]  433 	mov	r6,a
      0000AC EF               [12]  434 	mov	a,r7
      0000AD 34 FF            [12]  435 	addc	a,#0xff
      0000AF FF               [12]  436 	mov	r7,a
      0000B0 80 57            [24]  437 	sjmp	00103$
      0000B2                        438 00102$:
                                    439 ;	main.c:19: ms = 65536 - ms;
      0000B2 E4               [12]  440 	clr	a
      0000B3 C3               [12]  441 	clr	c
      0000B4 9C               [12]  442 	subb	a,r4
      0000B5 F5 09            [12]  443 	mov	_delay_ms_ms_65536_1,a
      0000B7 E4               [12]  444 	clr	a
      0000B8 9D               [12]  445 	subb	a,r5
      0000B9 F5 0A            [12]  446 	mov	(_delay_ms_ms_65536_1 + 1),a
      0000BB 74 01            [12]  447 	mov	a,#0x01
      0000BD 9E               [12]  448 	subb	a,r6
      0000BE F5 0B            [12]  449 	mov	(_delay_ms_ms_65536_1 + 2),a
      0000C0 E4               [12]  450 	clr	a
      0000C1 9F               [12]  451 	subb	a,r7
      0000C2 F5 0C            [12]  452 	mov	(_delay_ms_ms_65536_1 + 3),a
                                    453 ;	main.c:20: TH0 = ms / 256;
      0000C4 E4               [12]  454 	clr	a
      0000C5 F5 0D            [12]  455 	mov	__divslong_PARM_2,a
      0000C7 75 0E 01         [24]  456 	mov	(__divslong_PARM_2 + 1),#0x01
      0000CA F5 0F            [12]  457 	mov	(__divslong_PARM_2 + 2),a
      0000CC F5 10            [12]  458 	mov	(__divslong_PARM_2 + 3),a
      0000CE 85 09 82         [24]  459 	mov	dpl,_delay_ms_ms_65536_1
      0000D1 85 0A 83         [24]  460 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000D4 85 0B F0         [24]  461 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000D7 E5 0C            [12]  462 	mov	a,(_delay_ms_ms_65536_1 + 3)
      0000D9 12 03 98         [24]  463 	lcall	__divslong
      0000DC A8 82            [24]  464 	mov	r0,dpl
      0000DE 88 8C            [24]  465 	mov	_TH0,r0
                                    466 ;	main.c:21: TL0 = ms % 256;
      0000E0 E4               [12]  467 	clr	a
      0000E1 F5 0D            [12]  468 	mov	__modslong_PARM_2,a
      0000E3 75 0E 01         [24]  469 	mov	(__modslong_PARM_2 + 1),#0x01
      0000E6 F5 0F            [12]  470 	mov	(__modslong_PARM_2 + 2),a
      0000E8 F5 10            [12]  471 	mov	(__modslong_PARM_2 + 3),a
      0000EA 85 09 82         [24]  472 	mov	dpl,_delay_ms_ms_65536_1
      0000ED 85 0A 83         [24]  473 	mov	dph,(_delay_ms_ms_65536_1 + 1)
      0000F0 85 0B F0         [24]  474 	mov	b,(_delay_ms_ms_65536_1 + 2)
      0000F3 E5 0C            [12]  475 	mov	a,(_delay_ms_ms_65536_1 + 3)
      0000F5 12 03 49         [24]  476 	lcall	__modslong
      0000F8 A8 82            [24]  477 	mov	r0,dpl
      0000FA A9 83            [24]  478 	mov	r1,dph
      0000FC AA F0            [24]  479 	mov	r2,b
      0000FE FB               [12]  480 	mov	r3,a
      0000FF 88 8A            [24]  481 	mov	_TL0,r0
                                    482 ;	main.c:22: ms = 0;
      000101 7C 00            [12]  483 	mov	r4,#0x00
      000103 7D 00            [12]  484 	mov	r5,#0x00
      000105 7E 00            [12]  485 	mov	r6,#0x00
      000107 7F 00            [12]  486 	mov	r7,#0x00
      000109                        487 00103$:
                                    488 ;	main.c:24: TF0 = 0;  // Xoa co tran Timer 0
                                    489 ;	assignBit
      000109 C2 8D            [12]  490 	clr	_TF0
                                    491 ;	main.c:25: TR0 = 1;  // Khoi dong Timer 0
                                    492 ;	assignBit
      00010B D2 8C            [12]  493 	setb	_TR0
                                    494 ;	main.c:26: while (TF0 == 0)
      00010D                        495 00104$:
      00010D 30 8D FD         [24]  496 	jnb	_TF0,00104$
                                    497 ;	main.c:28: TR0 = 0;  // Tat Timer 0
                                    498 ;	assignBit
      000110 C2 8C            [12]  499 	clr	_TR0
                                    500 ;	main.c:30: }
      000112 02 00 7D         [24]  501 	ljmp	00107$
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'delay_18B20'
                                    504 ;------------------------------------------------------------
                                    505 ;ti                        Allocated to registers 
                                    506 ;------------------------------------------------------------
                                    507 ;	main.c:32: void delay_18B20(unsigned int ti) {  // delay us
                                    508 ;	-----------------------------------------
                                    509 ;	 function delay_18B20
                                    510 ;	-----------------------------------------
      000115                        511 _delay_18B20:
      000115 AE 82            [24]  512 	mov	r6,dpl
      000117 AF 83            [24]  513 	mov	r7,dph
                                    514 ;	main.c:33: while (ti--)
      000119                        515 00101$:
      000119 8E 04            [24]  516 	mov	ar4,r6
      00011B 8F 05            [24]  517 	mov	ar5,r7
      00011D 1E               [12]  518 	dec	r6
      00011E BE FF 01         [24]  519 	cjne	r6,#0xff,00111$
      000121 1F               [12]  520 	dec	r7
      000122                        521 00111$:
      000122 EC               [12]  522 	mov	a,r4
      000123 4D               [12]  523 	orl	a,r5
      000124 70 F3            [24]  524 	jnz	00101$
                                    525 ;	main.c:35: }
      000126 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'Init_18B20'
                                    529 ;------------------------------------------------------------
                                    530 ;	main.c:36: void Init_18B20(void) {  // Khởi tạo cảm biến
                                    531 ;	-----------------------------------------
                                    532 ;	 function Init_18B20
                                    533 ;	-----------------------------------------
      000127                        534 _Init_18B20:
                                    535 ;	main.c:37: DQ = 1;
                                    536 ;	assignBit
      000127 D2 B7            [12]  537 	setb	_P3_7
                                    538 ;	main.c:38: delay_18B20(8);
      000129 90 00 08         [24]  539 	mov	dptr,#0x0008
      00012C 12 01 15         [24]  540 	lcall	_delay_18B20
                                    541 ;	main.c:39: DQ = 0;
                                    542 ;	assignBit
      00012F C2 B7            [12]  543 	clr	_P3_7
                                    544 ;	main.c:40: delay_18B20(65);
      000131 90 00 41         [24]  545 	mov	dptr,#0x0041
      000134 12 01 15         [24]  546 	lcall	_delay_18B20
                                    547 ;	main.c:41: DQ = 1;
                                    548 ;	assignBit
      000137 D2 B7            [12]  549 	setb	_P3_7
                                    550 ;	main.c:42: delay_18B20(20);
      000139 90 00 14         [24]  551 	mov	dptr,#0x0014
                                    552 ;	main.c:43: }
      00013C 02 01 15         [24]  553 	ljmp	_delay_18B20
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'ReadOneChar'
                                    556 ;------------------------------------------------------------
                                    557 ;i                         Allocated to registers r6 
                                    558 ;dat                       Allocated to registers r7 
                                    559 ;------------------------------------------------------------
                                    560 ;	main.c:44: unsigned char ReadOneChar(void) {  // Đọc 1 byte từ IC
                                    561 ;	-----------------------------------------
                                    562 ;	 function ReadOneChar
                                    563 ;	-----------------------------------------
      00013F                        564 _ReadOneChar:
                                    565 ;	main.c:46: unsigned char dat = 0;
      00013F 7F 00            [12]  566 	mov	r7,#0x00
                                    567 ;	main.c:47: for (i = 8; i > 0; i--) {
      000141 7E 08            [12]  568 	mov	r6,#0x08
      000143                        569 00104$:
                                    570 ;	main.c:48: DQ = 0;
                                    571 ;	assignBit
      000143 C2 B7            [12]  572 	clr	_P3_7
                                    573 ;	main.c:49: dat >>= 1;
      000145 EF               [12]  574 	mov	a,r7
      000146 C3               [12]  575 	clr	c
      000147 13               [12]  576 	rrc	a
      000148 FF               [12]  577 	mov	r7,a
                                    578 ;	main.c:50: DQ = 1;
                                    579 ;	assignBit
      000149 D2 B7            [12]  580 	setb	_P3_7
                                    581 ;	main.c:51: if (DQ) dat |= 0x80;
      00014B 30 B7 03         [24]  582 	jnb	_P3_7,00102$
      00014E 43 07 80         [24]  583 	orl	ar7,#0x80
      000151                        584 00102$:
                                    585 ;	main.c:52: delay_18B20(4);
      000151 90 00 04         [24]  586 	mov	dptr,#0x0004
      000154 C0 07            [24]  587 	push	ar7
      000156 C0 06            [24]  588 	push	ar6
      000158 12 01 15         [24]  589 	lcall	_delay_18B20
      00015B D0 06            [24]  590 	pop	ar6
      00015D D0 07            [24]  591 	pop	ar7
                                    592 ;	main.c:47: for (i = 8; i > 0; i--) {
      00015F DE E2            [24]  593 	djnz	r6,00104$
                                    594 ;	main.c:54: return (dat);
      000161 8F 82            [24]  595 	mov	dpl,r7
                                    596 ;	main.c:55: }
      000163 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'WriteOneChar'
                                    600 ;------------------------------------------------------------
                                    601 ;dat                       Allocated to registers r7 
                                    602 ;i                         Allocated to registers r6 
                                    603 ;------------------------------------------------------------
                                    604 ;	main.c:56: void WriteOneChar(unsigned char dat) {  // Ghi một byte vào IC
                                    605 ;	-----------------------------------------
                                    606 ;	 function WriteOneChar
                                    607 ;	-----------------------------------------
      000164                        608 _WriteOneChar:
      000164 AF 82            [24]  609 	mov	r7,dpl
                                    610 ;	main.c:58: for (i = 8; i > 0; i--) {
      000166 7E 08            [12]  611 	mov	r6,#0x08
      000168                        612 00102$:
                                    613 ;	main.c:59: DQ = 0;
                                    614 ;	assignBit
      000168 C2 B7            [12]  615 	clr	_P3_7
                                    616 ;	main.c:60: DQ = dat & 0x01;
      00016A EF               [12]  617 	mov	a,r7
      00016B 54 01            [12]  618 	anl	a,#0x01
                                    619 ;	assignBit
      00016D 24 FF            [12]  620 	add	a,#0xff
      00016F 92 B7            [24]  621 	mov	_P3_7,c
                                    622 ;	main.c:61: delay_18B20(5);
      000171 90 00 05         [24]  623 	mov	dptr,#0x0005
      000174 C0 07            [24]  624 	push	ar7
      000176 C0 06            [24]  625 	push	ar6
      000178 12 01 15         [24]  626 	lcall	_delay_18B20
      00017B D0 06            [24]  627 	pop	ar6
      00017D D0 07            [24]  628 	pop	ar7
                                    629 ;	main.c:62: DQ = 1;
                                    630 ;	assignBit
      00017F D2 B7            [12]  631 	setb	_P3_7
                                    632 ;	main.c:63: dat >>= 1;
      000181 EF               [12]  633 	mov	a,r7
      000182 C3               [12]  634 	clr	c
      000183 13               [12]  635 	rrc	a
      000184 FF               [12]  636 	mov	r7,a
                                    637 ;	main.c:58: for (i = 8; i > 0; i--) {
      000185 DE E1            [24]  638 	djnz	r6,00102$
                                    639 ;	main.c:65: }
      000187 22               [24]  640 	ret
                                    641 ;------------------------------------------------------------
                                    642 ;Allocation info for local variables in function 'ReadTemperature'
                                    643 ;------------------------------------------------------------
                                    644 ;a                         Allocated to registers r7 
                                    645 ;b                         Allocated to registers r6 
                                    646 ;------------------------------------------------------------
                                    647 ;	main.c:66: void ReadTemperature(void) {  // Hàm đọc nhiệt độ lưu vào biến temp
                                    648 ;	-----------------------------------------
                                    649 ;	 function ReadTemperature
                                    650 ;	-----------------------------------------
      000188                        651 _ReadTemperature:
                                    652 ;	main.c:70: Init_18B20();
      000188 12 01 27         [24]  653 	lcall	_Init_18B20
                                    654 ;	main.c:71: WriteOneChar(0xCC);  // Bỏ qua ROM
      00018B 75 82 CC         [24]  655 	mov	dpl,#0xcc
      00018E 12 01 64         [24]  656 	lcall	_WriteOneChar
                                    657 ;	main.c:72: WriteOneChar(0x44);
      000191 75 82 44         [24]  658 	mov	dpl,#0x44
      000194 12 01 64         [24]  659 	lcall	_WriteOneChar
                                    660 ;	main.c:73: delay_18B20(10);
      000197 90 00 0A         [24]  661 	mov	dptr,#0x000a
      00019A 12 01 15         [24]  662 	lcall	_delay_18B20
                                    663 ;	main.c:74: Init_18B20();
      00019D 12 01 27         [24]  664 	lcall	_Init_18B20
                                    665 ;	main.c:75: WriteOneChar(0xCC);
      0001A0 75 82 CC         [24]  666 	mov	dpl,#0xcc
      0001A3 12 01 64         [24]  667 	lcall	_WriteOneChar
                                    668 ;	main.c:76: WriteOneChar(0xBE);           // Đọc nhiệt độ
      0001A6 75 82 BE         [24]  669 	mov	dpl,#0xbe
      0001A9 12 01 64         [24]  670 	lcall	_WriteOneChar
                                    671 ;	main.c:77: delay_18B20(10);
      0001AC 90 00 0A         [24]  672 	mov	dptr,#0x000a
      0001AF 12 01 15         [24]  673 	lcall	_delay_18B20
                                    674 ;	main.c:78: a = ReadOneChar();            // Read temp low value
      0001B2 12 01 3F         [24]  675 	lcall	_ReadOneChar
      0001B5 AF 82            [24]  676 	mov	r7,dpl
                                    677 ;	main.c:79: b = ReadOneChar();            // Read temp high value
      0001B7 C0 07            [24]  678 	push	ar7
      0001B9 12 01 3F         [24]  679 	lcall	_ReadOneChar
      0001BC AE 82            [24]  680 	mov	r6,dpl
      0001BE D0 07            [24]  681 	pop	ar7
                                    682 ;	main.c:80: temp = ((b * 256 + a) >> 4);  // Giá trị nhiệt độ lưu vào biến temp
      0001C0 8E 05            [24]  683 	mov	ar5,r6
      0001C2 E4               [12]  684 	clr	a
      0001C3 FE               [12]  685 	mov	r6,a
      0001C4 FC               [12]  686 	mov	r4,a
      0001C5 EF               [12]  687 	mov	a,r7
      0001C6 2E               [12]  688 	add	a,r6
      0001C7 FE               [12]  689 	mov	r6,a
      0001C8 EC               [12]  690 	mov	a,r4
      0001C9 3D               [12]  691 	addc	a,r5
      0001CA C4               [12]  692 	swap	a
      0001CB CE               [12]  693 	xch	a,r6
      0001CC C4               [12]  694 	swap	a
      0001CD 54 0F            [12]  695 	anl	a,#0x0f
      0001CF 6E               [12]  696 	xrl	a,r6
      0001D0 CE               [12]  697 	xch	a,r6
      0001D1 54 0F            [12]  698 	anl	a,#0x0f
      0001D3 CE               [12]  699 	xch	a,r6
      0001D4 6E               [12]  700 	xrl	a,r6
      0001D5 CE               [12]  701 	xch	a,r6
      0001D6 30 E3 02         [24]  702 	jnb	acc.3,00103$
      0001D9 44 F0            [12]  703 	orl	a,#0xfffffff0
      0001DB                        704 00103$:
      0001DB 8E 08            [24]  705 	mov	_temp,r6
                                    706 ;	main.c:82: }  // End code DS18B20
      0001DD 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'main'
                                    710 ;------------------------------------------------------------
                                    711 ;	main.c:84: void main() {
                                    712 ;	-----------------------------------------
                                    713 ;	 function main
                                    714 ;	-----------------------------------------
      0001DE                        715 _main:
                                    716 ;	main.c:85: Beep = 0;               // Turn off the buzzer
                                    717 ;	assignBit
      0001DE C2 B6            [12]  718 	clr	_P3_6
                                    719 ;	main.c:86: while (1) {
      0001E0                        720 00102$:
                                    721 ;	main.c:87: ReadTemperature();  // Read the DS18B20 ...
      0001E0 12 01 88         [24]  722 	lcall	_ReadTemperature
                                    723 ;	main.c:88: P1 = ~temp;     // and the display the temp value (in binary form) on 8
      0001E3 E5 08            [12]  724 	mov	a,_temp
      0001E5 F4               [12]  725 	cpl	a
      0001E6 F5 90            [12]  726 	mov	_P1,a
                                    727 ;	main.c:90: delay_ms(500);  // for every 0.5s.
      0001E8 90 01 F4         [24]  728 	mov	dptr,#0x01f4
      0001EB E4               [12]  729 	clr	a
      0001EC F5 F0            [12]  730 	mov	b,a
      0001EE 12 00 62         [24]  731 	lcall	_delay_ms
                                    732 ;	main.c:92: }
      0001F1 80 ED            [24]  733 	sjmp	00102$
                                    734 	.area CSEG    (CODE)
                                    735 	.area CONST   (CODE)
                                    736 	.area XINIT   (CODE)
                                    737 	.area CABS    (ABS,CODE)
