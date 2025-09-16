                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.14 #14011 (MINGW64)
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
                           000080   146 G$P0$0_0$0 == 0x0080
                           000080   147 _P0	=	0x0080
                           000081   148 G$SP$0_0$0 == 0x0081
                           000081   149 _SP	=	0x0081
                           000082   150 G$DPL$0_0$0 == 0x0082
                           000082   151 _DPL	=	0x0082
                           000083   152 G$DPH$0_0$0 == 0x0083
                           000083   153 _DPH	=	0x0083
                           000087   154 G$PCON$0_0$0 == 0x0087
                           000087   155 _PCON	=	0x0087
                           000088   156 G$TCON$0_0$0 == 0x0088
                           000088   157 _TCON	=	0x0088
                           000089   158 G$TMOD$0_0$0 == 0x0089
                           000089   159 _TMOD	=	0x0089
                           00008A   160 G$TL0$0_0$0 == 0x008a
                           00008A   161 _TL0	=	0x008a
                           00008B   162 G$TL1$0_0$0 == 0x008b
                           00008B   163 _TL1	=	0x008b
                           00008C   164 G$TH0$0_0$0 == 0x008c
                           00008C   165 _TH0	=	0x008c
                           00008D   166 G$TH1$0_0$0 == 0x008d
                           00008D   167 _TH1	=	0x008d
                           000090   168 G$P1$0_0$0 == 0x0090
                           000090   169 _P1	=	0x0090
                           000098   170 G$SCON$0_0$0 == 0x0098
                           000098   171 _SCON	=	0x0098
                           000099   172 G$SBUF$0_0$0 == 0x0099
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 G$P2$0_0$0 == 0x00a0
                           0000A0   175 _P2	=	0x00a0
                           0000A8   176 G$IE$0_0$0 == 0x00a8
                           0000A8   177 _IE	=	0x00a8
                           0000B0   178 G$P3$0_0$0 == 0x00b0
                           0000B0   179 _P3	=	0x00b0
                           0000B8   180 G$IP$0_0$0 == 0x00b8
                           0000B8   181 _IP	=	0x00b8
                           0000D0   182 G$PSW$0_0$0 == 0x00d0
                           0000D0   183 _PSW	=	0x00d0
                           0000E0   184 G$ACC$0_0$0 == 0x00e0
                           0000E0   185 _ACC	=	0x00e0
                           0000F0   186 G$B$0_0$0 == 0x00f0
                           0000F0   187 _B	=	0x00f0
                           0000C8   188 G$T2CON$0_0$0 == 0x00c8
                           0000C8   189 _T2CON	=	0x00c8
                           0000CA   190 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   191 _RCAP2L	=	0x00ca
                           0000CB   192 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   193 _RCAP2H	=	0x00cb
                           0000CC   194 G$TL2$0_0$0 == 0x00cc
                           0000CC   195 _TL2	=	0x00cc
                           0000CD   196 G$TH2$0_0$0 == 0x00cd
                           0000CD   197 _TH2	=	0x00cd
                                    198 ;--------------------------------------------------------
                                    199 ; special function bits
                                    200 ;--------------------------------------------------------
                                    201 	.area RSEG    (ABS,DATA)
      000000                        202 	.org 0x0000
                           000080   203 G$P0_0$0_0$0 == 0x0080
                           000080   204 _P0_0	=	0x0080
                           000081   205 G$P0_1$0_0$0 == 0x0081
                           000081   206 _P0_1	=	0x0081
                           000082   207 G$P0_2$0_0$0 == 0x0082
                           000082   208 _P0_2	=	0x0082
                           000083   209 G$P0_3$0_0$0 == 0x0083
                           000083   210 _P0_3	=	0x0083
                           000084   211 G$P0_4$0_0$0 == 0x0084
                           000084   212 _P0_4	=	0x0084
                           000085   213 G$P0_5$0_0$0 == 0x0085
                           000085   214 _P0_5	=	0x0085
                           000086   215 G$P0_6$0_0$0 == 0x0086
                           000086   216 _P0_6	=	0x0086
                           000087   217 G$P0_7$0_0$0 == 0x0087
                           000087   218 _P0_7	=	0x0087
                           000088   219 G$IT0$0_0$0 == 0x0088
                           000088   220 _IT0	=	0x0088
                           000089   221 G$IE0$0_0$0 == 0x0089
                           000089   222 _IE0	=	0x0089
                           00008A   223 G$IT1$0_0$0 == 0x008a
                           00008A   224 _IT1	=	0x008a
                           00008B   225 G$IE1$0_0$0 == 0x008b
                           00008B   226 _IE1	=	0x008b
                           00008C   227 G$TR0$0_0$0 == 0x008c
                           00008C   228 _TR0	=	0x008c
                           00008D   229 G$TF0$0_0$0 == 0x008d
                           00008D   230 _TF0	=	0x008d
                           00008E   231 G$TR1$0_0$0 == 0x008e
                           00008E   232 _TR1	=	0x008e
                           00008F   233 G$TF1$0_0$0 == 0x008f
                           00008F   234 _TF1	=	0x008f
                           000090   235 G$P1_0$0_0$0 == 0x0090
                           000090   236 _P1_0	=	0x0090
                           000091   237 G$P1_1$0_0$0 == 0x0091
                           000091   238 _P1_1	=	0x0091
                           000092   239 G$P1_2$0_0$0 == 0x0092
                           000092   240 _P1_2	=	0x0092
                           000093   241 G$P1_3$0_0$0 == 0x0093
                           000093   242 _P1_3	=	0x0093
                           000094   243 G$P1_4$0_0$0 == 0x0094
                           000094   244 _P1_4	=	0x0094
                           000095   245 G$P1_5$0_0$0 == 0x0095
                           000095   246 _P1_5	=	0x0095
                           000096   247 G$P1_6$0_0$0 == 0x0096
                           000096   248 _P1_6	=	0x0096
                           000097   249 G$P1_7$0_0$0 == 0x0097
                           000097   250 _P1_7	=	0x0097
                           000098   251 G$RI$0_0$0 == 0x0098
                           000098   252 _RI	=	0x0098
                           000099   253 G$TI$0_0$0 == 0x0099
                           000099   254 _TI	=	0x0099
                           00009A   255 G$RB8$0_0$0 == 0x009a
                           00009A   256 _RB8	=	0x009a
                           00009B   257 G$TB8$0_0$0 == 0x009b
                           00009B   258 _TB8	=	0x009b
                           00009C   259 G$REN$0_0$0 == 0x009c
                           00009C   260 _REN	=	0x009c
                           00009D   261 G$SM2$0_0$0 == 0x009d
                           00009D   262 _SM2	=	0x009d
                           00009E   263 G$SM1$0_0$0 == 0x009e
                           00009E   264 _SM1	=	0x009e
                           00009F   265 G$SM0$0_0$0 == 0x009f
                           00009F   266 _SM0	=	0x009f
                           0000A0   267 G$P2_0$0_0$0 == 0x00a0
                           0000A0   268 _P2_0	=	0x00a0
                           0000A1   269 G$P2_1$0_0$0 == 0x00a1
                           0000A1   270 _P2_1	=	0x00a1
                           0000A2   271 G$P2_2$0_0$0 == 0x00a2
                           0000A2   272 _P2_2	=	0x00a2
                           0000A3   273 G$P2_3$0_0$0 == 0x00a3
                           0000A3   274 _P2_3	=	0x00a3
                           0000A4   275 G$P2_4$0_0$0 == 0x00a4
                           0000A4   276 _P2_4	=	0x00a4
                           0000A5   277 G$P2_5$0_0$0 == 0x00a5
                           0000A5   278 _P2_5	=	0x00a5
                           0000A6   279 G$P2_6$0_0$0 == 0x00a6
                           0000A6   280 _P2_6	=	0x00a6
                           0000A7   281 G$P2_7$0_0$0 == 0x00a7
                           0000A7   282 _P2_7	=	0x00a7
                           0000A8   283 G$EX0$0_0$0 == 0x00a8
                           0000A8   284 _EX0	=	0x00a8
                           0000A9   285 G$ET0$0_0$0 == 0x00a9
                           0000A9   286 _ET0	=	0x00a9
                           0000AA   287 G$EX1$0_0$0 == 0x00aa
                           0000AA   288 _EX1	=	0x00aa
                           0000AB   289 G$ET1$0_0$0 == 0x00ab
                           0000AB   290 _ET1	=	0x00ab
                           0000AC   291 G$ES$0_0$0 == 0x00ac
                           0000AC   292 _ES	=	0x00ac
                           0000AF   293 G$EA$0_0$0 == 0x00af
                           0000AF   294 _EA	=	0x00af
                           0000B0   295 G$P3_0$0_0$0 == 0x00b0
                           0000B0   296 _P3_0	=	0x00b0
                           0000B1   297 G$P3_1$0_0$0 == 0x00b1
                           0000B1   298 _P3_1	=	0x00b1
                           0000B2   299 G$P3_2$0_0$0 == 0x00b2
                           0000B2   300 _P3_2	=	0x00b2
                           0000B3   301 G$P3_3$0_0$0 == 0x00b3
                           0000B3   302 _P3_3	=	0x00b3
                           0000B4   303 G$P3_4$0_0$0 == 0x00b4
                           0000B4   304 _P3_4	=	0x00b4
                           0000B5   305 G$P3_5$0_0$0 == 0x00b5
                           0000B5   306 _P3_5	=	0x00b5
                           0000B6   307 G$P3_6$0_0$0 == 0x00b6
                           0000B6   308 _P3_6	=	0x00b6
                           0000B7   309 G$P3_7$0_0$0 == 0x00b7
                           0000B7   310 _P3_7	=	0x00b7
                           0000B0   311 G$RXD$0_0$0 == 0x00b0
                           0000B0   312 _RXD	=	0x00b0
                           0000B1   313 G$TXD$0_0$0 == 0x00b1
                           0000B1   314 _TXD	=	0x00b1
                           0000B2   315 G$INT0$0_0$0 == 0x00b2
                           0000B2   316 _INT0	=	0x00b2
                           0000B3   317 G$INT1$0_0$0 == 0x00b3
                           0000B3   318 _INT1	=	0x00b3
                           0000B4   319 G$T0$0_0$0 == 0x00b4
                           0000B4   320 _T0	=	0x00b4
                           0000B5   321 G$T1$0_0$0 == 0x00b5
                           0000B5   322 _T1	=	0x00b5
                           0000B6   323 G$WR$0_0$0 == 0x00b6
                           0000B6   324 _WR	=	0x00b6
                           0000B7   325 G$RD$0_0$0 == 0x00b7
                           0000B7   326 _RD	=	0x00b7
                           0000B8   327 G$PX0$0_0$0 == 0x00b8
                           0000B8   328 _PX0	=	0x00b8
                           0000B9   329 G$PT0$0_0$0 == 0x00b9
                           0000B9   330 _PT0	=	0x00b9
                           0000BA   331 G$PX1$0_0$0 == 0x00ba
                           0000BA   332 _PX1	=	0x00ba
                           0000BB   333 G$PT1$0_0$0 == 0x00bb
                           0000BB   334 _PT1	=	0x00bb
                           0000BC   335 G$PS$0_0$0 == 0x00bc
                           0000BC   336 _PS	=	0x00bc
                           0000D0   337 G$P$0_0$0 == 0x00d0
                           0000D0   338 _P	=	0x00d0
                           0000D1   339 G$F1$0_0$0 == 0x00d1
                           0000D1   340 _F1	=	0x00d1
                           0000D2   341 G$OV$0_0$0 == 0x00d2
                           0000D2   342 _OV	=	0x00d2
                           0000D3   343 G$RS0$0_0$0 == 0x00d3
                           0000D3   344 _RS0	=	0x00d3
                           0000D4   345 G$RS1$0_0$0 == 0x00d4
                           0000D4   346 _RS1	=	0x00d4
                           0000D5   347 G$F0$0_0$0 == 0x00d5
                           0000D5   348 _F0	=	0x00d5
                           0000D6   349 G$AC$0_0$0 == 0x00d6
                           0000D6   350 _AC	=	0x00d6
                           0000D7   351 G$CY$0_0$0 == 0x00d7
                           0000D7   352 _CY	=	0x00d7
                           0000AD   353 G$ET2$0_0$0 == 0x00ad
                           0000AD   354 _ET2	=	0x00ad
                           0000BD   355 G$PT2$0_0$0 == 0x00bd
                           0000BD   356 _PT2	=	0x00bd
                           0000C8   357 G$T2CON_0$0_0$0 == 0x00c8
                           0000C8   358 _T2CON_0	=	0x00c8
                           0000C9   359 G$T2CON_1$0_0$0 == 0x00c9
                           0000C9   360 _T2CON_1	=	0x00c9
                           0000CA   361 G$T2CON_2$0_0$0 == 0x00ca
                           0000CA   362 _T2CON_2	=	0x00ca
                           0000CB   363 G$T2CON_3$0_0$0 == 0x00cb
                           0000CB   364 _T2CON_3	=	0x00cb
                           0000CC   365 G$T2CON_4$0_0$0 == 0x00cc
                           0000CC   366 _T2CON_4	=	0x00cc
                           0000CD   367 G$T2CON_5$0_0$0 == 0x00cd
                           0000CD   368 _T2CON_5	=	0x00cd
                           0000CE   369 G$T2CON_6$0_0$0 == 0x00ce
                           0000CE   370 _T2CON_6	=	0x00ce
                           0000CF   371 G$T2CON_7$0_0$0 == 0x00cf
                           0000CF   372 _T2CON_7	=	0x00cf
                           0000C8   373 G$CP_RL2$0_0$0 == 0x00c8
                           0000C8   374 _CP_RL2	=	0x00c8
                           0000C9   375 G$C_T2$0_0$0 == 0x00c9
                           0000C9   376 _C_T2	=	0x00c9
                           0000CA   377 G$TR2$0_0$0 == 0x00ca
                           0000CA   378 _TR2	=	0x00ca
                           0000CB   379 G$EXEN2$0_0$0 == 0x00cb
                           0000CB   380 _EXEN2	=	0x00cb
                           0000CC   381 G$TCLK$0_0$0 == 0x00cc
                           0000CC   382 _TCLK	=	0x00cc
                           0000CD   383 G$RCLK$0_0$0 == 0x00cd
                           0000CD   384 _RCLK	=	0x00cd
                           0000CE   385 G$EXF2$0_0$0 == 0x00ce
                           0000CE   386 _EXF2	=	0x00ce
                           0000CF   387 G$TF2$0_0$0 == 0x00cf
                           0000CF   388 _TF2	=	0x00cf
                                    389 ;--------------------------------------------------------
                                    390 ; overlayable register banks
                                    391 ;--------------------------------------------------------
                                    392 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        393 	.ds 8
                                    394 ;--------------------------------------------------------
                                    395 ; internal ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area DSEG    (DATA)
                                    398 ;--------------------------------------------------------
                                    399 ; overlayable items in internal ram
                                    400 ;--------------------------------------------------------
                                    401 ;--------------------------------------------------------
                                    402 ; Stack segment in internal ram
                                    403 ;--------------------------------------------------------
                                    404 	.area SSEG
      000021                        405 __start__stack:
      000021                        406 	.ds	1
                                    407 
                                    408 ;--------------------------------------------------------
                                    409 ; indirectly addressable internal ram data
                                    410 ;--------------------------------------------------------
                                    411 	.area ISEG    (DATA)
                                    412 ;--------------------------------------------------------
                                    413 ; absolute internal ram data
                                    414 ;--------------------------------------------------------
                                    415 	.area IABS    (ABS,DATA)
                                    416 	.area IABS    (ABS,DATA)
                                    417 ;--------------------------------------------------------
                                    418 ; bit data
                                    419 ;--------------------------------------------------------
                                    420 	.area BSEG    (BIT)
                           000000   421 Lmain.GLCD_Plot_Coordinate_Axes$sloc0$0_1$0==.
      000000                        422 _GLCD_Plot_Coordinate_Axes_sloc0_1_0:
      000000                        423 	.ds 1
                                    424 ;--------------------------------------------------------
                                    425 ; paged external ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area PSEG    (PAG,XDATA)
                           000000   428 G$temp$0_0$0==.
      000001                        429 _temp::
      000001                        430 	.ds 1
                           000001   431 Lmain.GLCD_WriteChar$Page_inc$1_0$100==.
      000002                        432 _GLCD_WriteChar_Page_inc_65536_100:
      000002                        433 	.ds 4
                                    434 ;--------------------------------------------------------
                                    435 ; uninitialized external ram data
                                    436 ;--------------------------------------------------------
                                    437 	.area XSEG    (XDATA)
                                    438 ;--------------------------------------------------------
                                    439 ; absolute external ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area XABS    (ABS,XDATA)
                                    442 ;--------------------------------------------------------
                                    443 ; initialized external ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area XISEG   (XDATA)
                                    446 	.area HOME    (CODE)
                                    447 	.area GSINIT0 (CODE)
                                    448 	.area GSINIT1 (CODE)
                                    449 	.area GSINIT2 (CODE)
                                    450 	.area GSINIT3 (CODE)
                                    451 	.area GSINIT4 (CODE)
                                    452 	.area GSINIT5 (CODE)
                                    453 	.area GSINIT  (CODE)
                                    454 	.area GSFINAL (CODE)
                                    455 	.area CSEG    (CODE)
                                    456 ;--------------------------------------------------------
                                    457 ; interrupt vector
                                    458 ;--------------------------------------------------------
                                    459 	.area HOME    (CODE)
      000000                        460 __interrupt_vect:
      000000 02 00 06         [24]  461 	ljmp	__sdcc_gsinit_startup
                                    462 ;--------------------------------------------------------
                                    463 ; global & static initialisations
                                    464 ;--------------------------------------------------------
                                    465 	.area HOME    (CODE)
                                    466 	.area GSINIT  (CODE)
                                    467 	.area GSFINAL (CODE)
                                    468 	.area GSINIT  (CODE)
                                    469 	.globl __sdcc_gsinit_startup
                                    470 	.globl __sdcc_program_startup
                                    471 	.globl __start__stack
                                    472 	.globl __mcs51_genXINIT
                                    473 	.globl __mcs51_genXRAMCLEAR
                                    474 	.globl __mcs51_genRAMCLEAR
                                    475 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  476 	ljmp	__sdcc_program_startup
                                    477 ;--------------------------------------------------------
                                    478 ; Home
                                    479 ;--------------------------------------------------------
                                    480 	.area HOME    (CODE)
                                    481 	.area HOME    (CODE)
      000003                        482 __sdcc_program_startup:
      000003 02 03 B3         [24]  483 	ljmp	_main
                                    484 ;	return from main will return to caller
                                    485 ;--------------------------------------------------------
                                    486 ; code
                                    487 ;--------------------------------------------------------
                                    488 	.area CSEG    (CODE)
                                    489 ;------------------------------------------------------------
                                    490 ;Allocation info for local variables in function 'delay_us'
                                    491 ;------------------------------------------------------------
                           000000   492 	G$delay_us$0$0 ==.
                           000000   493 	C$main.c$50$0_0$71 ==.
                                    494 ;	main.c:50: void delay_us(unsigned char t)
                                    495 ;	-----------------------------------------
                                    496 ;	 function delay_us
                                    497 ;	-----------------------------------------
      000062                        498 _delay_us:
                           000007   499 	ar7 = 0x07
                           000006   500 	ar6 = 0x06
                           000005   501 	ar5 = 0x05
                           000004   502 	ar4 = 0x04
                           000003   503 	ar3 = 0x03
                           000002   504 	ar2 = 0x02
                           000001   505 	ar1 = 0x01
                           000000   506 	ar0 = 0x00
      000062 AF 82            [24]  507 	mov	r7,dpl
                           000002   508 	C$main.c$52$1_0$71 ==.
                                    509 ;	main.c:52: while(t--);
      000064                        510 00101$:
      000064 8F 06            [24]  511 	mov	ar6,r7
      000066 1F               [12]  512 	dec	r7
      000067 EE               [12]  513 	mov	a,r6
      000068 70 FA            [24]  514 	jnz	00101$
                           000008   515 	C$main.c$53$1_0$71 ==.
                                    516 ;	main.c:53: }
                           000008   517 	C$main.c$53$1_0$71 ==.
                           000008   518 	XG$delay_us$0$0 ==.
      00006A 22               [24]  519 	ret
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'delay'
                                    522 ;------------------------------------------------------------
                           000009   523 	G$delay$0$0 ==.
                           000009   524 	C$main.c$54$1_0$74 ==.
                                    525 ;	main.c:54: void delay(unsigned int k)					/* Delay of msec with xtal = 11.0592MHz */
                                    526 ;	-----------------------------------------
                                    527 ;	 function delay
                                    528 ;	-----------------------------------------
      00006B                        529 _delay:
      00006B AE 82            [24]  530 	mov	r6,dpl
      00006D AF 83            [24]  531 	mov	r7,dph
                           00000D   532 	C$main.c$57$2_0$74 ==.
                                    533 ;	main.c:57: for (i=0;i<k;i++)
      00006F 7C 00            [12]  534 	mov	r4,#0x00
      000071 7D 00            [12]  535 	mov	r5,#0x00
      000073                        536 00107$:
      000073 8C 02            [24]  537 	mov	ar2,r4
      000075 8D 03            [24]  538 	mov	ar3,r5
      000077 C3               [12]  539 	clr	c
      000078 EA               [12]  540 	mov	a,r2
      000079 9E               [12]  541 	subb	a,r6
      00007A EB               [12]  542 	mov	a,r3
      00007B 9F               [12]  543 	subb	a,r7
      00007C 50 14            [24]  544 	jnc	00109$
                           00001C   545 	C$main.c$58$2_0$74 ==.
                                    546 ;	main.c:58: for (j=0;j<112;j++);
      00007E 7A 70            [12]  547 	mov	r2,#0x70
      000080 7B 00            [12]  548 	mov	r3,#0x00
      000082                        549 00105$:
      000082 1A               [12]  550 	dec	r2
      000083 BA FF 01         [24]  551 	cjne	r2,#0xff,00130$
      000086 1B               [12]  552 	dec	r3
      000087                        553 00130$:
      000087 EA               [12]  554 	mov	a,r2
      000088 4B               [12]  555 	orl	a,r3
      000089 70 F7            [24]  556 	jnz	00105$
                           000029   557 	C$main.c$57$2_0$74 ==.
                                    558 ;	main.c:57: for (i=0;i<k;i++)
      00008B 0C               [12]  559 	inc	r4
      00008C BC 00 E4         [24]  560 	cjne	r4,#0x00,00107$
      00008F 0D               [12]  561 	inc	r5
      000090 80 E1            [24]  562 	sjmp	00107$
      000092                        563 00109$:
                           000030   564 	C$main.c$59$2_0$74 ==.
                                    565 ;	main.c:59: }
                           000030   566 	C$main.c$59$2_0$74 ==.
                           000030   567 	XG$delay$0$0 ==.
      000092 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'GLCD_Command'
                                    571 ;------------------------------------------------------------
                           000031   572 	G$GLCD_Command$0$0 ==.
                           000031   573 	C$main.c$60$2_0$77 ==.
                                    574 ;	main.c:60: void GLCD_Command(char Command)				/* GLCD command function */
                                    575 ;	-----------------------------------------
                                    576 ;	 function GLCD_Command
                                    577 ;	-----------------------------------------
      000093                        578 _GLCD_Command:
      000093 85 82 A0         [24]  579 	mov	_P2,dpl
                           000034   580 	C$main.c$63$1_0$77 ==.
                                    581 ;	main.c:63: RS = 0;									/* Make RS LOW to select command register */
                                    582 ;	assignBit
      000096 C2 87            [12]  583 	clr	_P0_7
                           000036   584 	C$main.c$64$1_0$77 ==.
                                    585 ;	main.c:64: RW = 0;									/* Make RW LOW to select write operation */
                                    586 ;	assignBit
      000098 C2 86            [12]  587 	clr	_P0_6
                           000038   588 	C$main.c$65$1_0$77 ==.
                                    589 ;	main.c:65: E = 1;									/* Make HIGH to LOW transition on Enable */
                                    590 ;	assignBit
      00009A D2 85            [12]  591 	setb	_P0_5
                           00003A   592 	C$main.c$66$1_0$77 ==.
                                    593 ;	main.c:66: delay_us(1);
      00009C 75 82 01         [24]  594 	mov	dpl,#0x01
      00009F 12 00 62         [24]  595 	lcall	_delay_us
                           000040   596 	C$main.c$67$1_0$77 ==.
                                    597 ;	main.c:67: E = 0;
                                    598 ;	assignBit
      0000A2 C2 85            [12]  599 	clr	_P0_5
                           000042   600 	C$main.c$68$1_0$77 ==.
                                    601 ;	main.c:68: delay_us(1);
      0000A4 75 82 01         [24]  602 	mov	dpl,#0x01
      0000A7 12 00 62         [24]  603 	lcall	_delay_us
                           000048   604 	C$main.c$69$1_0$77 ==.
                                    605 ;	main.c:69: }
                           000048   606 	C$main.c$69$1_0$77 ==.
                           000048   607 	XG$GLCD_Command$0$0 ==.
      0000AA 22               [24]  608 	ret
                                    609 ;------------------------------------------------------------
                                    610 ;Allocation info for local variables in function 'GLCD_Data'
                                    611 ;------------------------------------------------------------
                           000049   612 	G$GLCD_Data$0$0 ==.
                           000049   613 	C$main.c$70$1_0$79 ==.
                                    614 ;	main.c:70: void GLCD_Data(char Data)					/* GLCD data function */
                                    615 ;	-----------------------------------------
                                    616 ;	 function GLCD_Data
                                    617 ;	-----------------------------------------
      0000AB                        618 _GLCD_Data:
      0000AB 85 82 A0         [24]  619 	mov	_P2,dpl
                           00004C   620 	C$main.c$73$1_0$79 ==.
                                    621 ;	main.c:73: RS = 1;									/* Make RS HIGH to select data register */
                                    622 ;	assignBit
      0000AE D2 87            [12]  623 	setb	_P0_7
                           00004E   624 	C$main.c$74$1_0$79 ==.
                                    625 ;	main.c:74: RW = 0;									/* Make RW LOW to select write operation */
                                    626 ;	assignBit
      0000B0 C2 86            [12]  627 	clr	_P0_6
                           000050   628 	C$main.c$75$1_0$79 ==.
                                    629 ;	main.c:75: E = 1;									/* Make HIGH to LOW transition on Enable */
                                    630 ;	assignBit
      0000B2 D2 85            [12]  631 	setb	_P0_5
                           000052   632 	C$main.c$76$1_0$79 ==.
                                    633 ;	main.c:76: delay_us(1);
      0000B4 75 82 01         [24]  634 	mov	dpl,#0x01
      0000B7 12 00 62         [24]  635 	lcall	_delay_us
                           000058   636 	C$main.c$77$1_0$79 ==.
                                    637 ;	main.c:77: E = 0;
                                    638 ;	assignBit
      0000BA C2 85            [12]  639 	clr	_P0_5
                           00005A   640 	C$main.c$78$1_0$79 ==.
                                    641 ;	main.c:78: delay_us(1);
      0000BC 75 82 01         [24]  642 	mov	dpl,#0x01
      0000BF 12 00 62         [24]  643 	lcall	_delay_us
                           000060   644 	C$main.c$79$1_0$79 ==.
                                    645 ;	main.c:79: }
                           000060   646 	C$main.c$79$1_0$79 ==.
                           000060   647 	XG$GLCD_Data$0$0 ==.
      0000C2 22               [24]  648 	ret
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'GLCD_Init'
                                    651 ;------------------------------------------------------------
                           000061   652 	G$GLCD_Init$0$0 ==.
                           000061   653 	C$main.c$80$1_0$81 ==.
                                    654 ;	main.c:80: void GLCD_Init(void)						/* GLCD initialize function */
                                    655 ;	-----------------------------------------
                                    656 ;	 function GLCD_Init
                                    657 ;	-----------------------------------------
      0000C3                        658 _GLCD_Init:
                           000061   659 	C$main.c$82$1_0$81 ==.
                                    660 ;	main.c:82: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
                                    661 ;	assignBit
      0000C3 D2 84            [12]  662 	setb	_P0_4
                                    663 ;	assignBit
      0000C5 D2 83            [12]  664 	setb	_P0_3
                           000065   665 	C$main.c$83$1_0$81 ==.
                                    666 ;	main.c:83: RST = 1;								/* Keep reset pin high */
                                    667 ;	assignBit
      0000C7 D2 82            [12]  668 	setb	_P0_2
                           000067   669 	C$main.c$84$1_0$81 ==.
                                    670 ;	main.c:84: delay_us(20);
      0000C9 75 82 14         [24]  671 	mov	dpl,#0x14
      0000CC 12 00 62         [24]  672 	lcall	_delay_us
                           00006D   673 	C$main.c$85$1_0$81 ==.
                                    674 ;	main.c:85: GLCD_Command(0x3E);						/* Display OFF */
      0000CF 75 82 3E         [24]  675 	mov	dpl,#0x3e
      0000D2 12 00 93         [24]  676 	lcall	_GLCD_Command
                           000073   677 	C$main.c$86$1_0$81 ==.
                                    678 ;	main.c:86: GLCD_Command(0x40);						/* Set y address (column=0) */
      0000D5 75 82 40         [24]  679 	mov	dpl,#0x40
      0000D8 12 00 93         [24]  680 	lcall	_GLCD_Command
                           000079   681 	C$main.c$87$1_0$81 ==.
                                    682 ;	main.c:87: GLCD_Command(0xB8);						/* Set x address (page=0) */
      0000DB 75 82 B8         [24]  683 	mov	dpl,#0xb8
      0000DE 12 00 93         [24]  684 	lcall	_GLCD_Command
                           00007F   685 	C$main.c$88$1_0$81 ==.
                                    686 ;	main.c:88: GLCD_Command(0xC0);						/* Set z address (start line=0) */
      0000E1 75 82 C0         [24]  687 	mov	dpl,#0xc0
      0000E4 12 00 93         [24]  688 	lcall	_GLCD_Command
                           000085   689 	C$main.c$89$1_0$81 ==.
                                    690 ;	main.c:89: GLCD_Command(0x3F);						/* Display ON */
      0000E7 75 82 3F         [24]  691 	mov	dpl,#0x3f
      0000EA 12 00 93         [24]  692 	lcall	_GLCD_Command
                           00008B   693 	C$main.c$90$1_0$81 ==.
                                    694 ;	main.c:90: }
                           00008B   695 	C$main.c$90$1_0$81 ==.
                           00008B   696 	XG$GLCD_Init$0$0 ==.
      0000ED 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'GLCD_ClearAll'
                                    700 ;------------------------------------------------------------
                           00008C   701 	G$GLCD_ClearAll$0$0 ==.
                           00008C   702 	C$main.c$91$1_0$83 ==.
                                    703 ;	main.c:91: void GLCD_ClearAll(void)						/* GLCD all display clear function */
                                    704 ;	-----------------------------------------
                                    705 ;	 function GLCD_ClearAll
                                    706 ;	-----------------------------------------
      0000EE                        707 _GLCD_ClearAll:
                           00008C   708 	C$main.c$94$1_0$83 ==.
                                    709 ;	main.c:94: CS1 = 1; CS2 = 1;						/* Select left & right half of display */
                                    710 ;	assignBit
      0000EE D2 84            [12]  711 	setb	_P0_4
                                    712 ;	assignBit
      0000F0 D2 83            [12]  713 	setb	_P0_3
                           000090   714 	C$main.c$95$1_0$83 ==.
                                    715 ;	main.c:95: for(i=0;i<8;i++)
      0000F2 7E 00            [12]  716 	mov	r6,#0x00
      0000F4 7F 00            [12]  717 	mov	r7,#0x00
      0000F6                        718 00105$:
                           000094   719 	C$main.c$97$3_0$85 ==.
                                    720 ;	main.c:97: GLCD_Command((0xB8)+i);				/* Increment page */
      0000F6 8E 05            [24]  721 	mov	ar5,r6
      0000F8 74 B8            [12]  722 	mov	a,#0xb8
      0000FA 2D               [12]  723 	add	a,r5
      0000FB F5 82            [12]  724 	mov	dpl,a
      0000FD C0 07            [24]  725 	push	ar7
      0000FF C0 06            [24]  726 	push	ar6
      000101 12 00 93         [24]  727 	lcall	_GLCD_Command
      000104 D0 06            [24]  728 	pop	ar6
      000106 D0 07            [24]  729 	pop	ar7
                           0000A6   730 	C$main.c$98$1_0$83 ==.
                                    731 ;	main.c:98: for(j=0;j<64;j++)
      000108 7C 00            [12]  732 	mov	r4,#0x00
      00010A 7D 00            [12]  733 	mov	r5,#0x00
      00010C                        734 00103$:
                           0000AA   735 	C$main.c$100$5_0$87 ==.
                                    736 ;	main.c:100: GLCD_Data(0);					/* Write zeros to all 64 column */
      00010C 75 82 00         [24]  737 	mov	dpl,#0x00
      00010F C0 07            [24]  738 	push	ar7
      000111 C0 06            [24]  739 	push	ar6
      000113 C0 05            [24]  740 	push	ar5
      000115 C0 04            [24]  741 	push	ar4
      000117 12 00 AB         [24]  742 	lcall	_GLCD_Data
      00011A D0 04            [24]  743 	pop	ar4
      00011C D0 05            [24]  744 	pop	ar5
      00011E D0 06            [24]  745 	pop	ar6
      000120 D0 07            [24]  746 	pop	ar7
                           0000C0   747 	C$main.c$98$4_0$86 ==.
                                    748 ;	main.c:98: for(j=0;j<64;j++)
      000122 0C               [12]  749 	inc	r4
      000123 BC 00 01         [24]  750 	cjne	r4,#0x00,00127$
      000126 0D               [12]  751 	inc	r5
      000127                        752 00127$:
      000127 C3               [12]  753 	clr	c
      000128 EC               [12]  754 	mov	a,r4
      000129 94 40            [12]  755 	subb	a,#0x40
      00012B ED               [12]  756 	mov	a,r5
      00012C 64 80            [12]  757 	xrl	a,#0x80
      00012E 94 80            [12]  758 	subb	a,#0x80
      000130 40 DA            [24]  759 	jc	00103$
                           0000D0   760 	C$main.c$95$2_0$84 ==.
                                    761 ;	main.c:95: for(i=0;i<8;i++)
      000132 0E               [12]  762 	inc	r6
      000133 BE 00 01         [24]  763 	cjne	r6,#0x00,00129$
      000136 0F               [12]  764 	inc	r7
      000137                        765 00129$:
      000137 C3               [12]  766 	clr	c
      000138 EE               [12]  767 	mov	a,r6
      000139 94 08            [12]  768 	subb	a,#0x08
      00013B EF               [12]  769 	mov	a,r7
      00013C 64 80            [12]  770 	xrl	a,#0x80
      00013E 94 80            [12]  771 	subb	a,#0x80
      000140 40 B4            [24]  772 	jc	00105$
                           0000E0   773 	C$main.c$103$1_0$83 ==.
                                    774 ;	main.c:103: GLCD_Command(0x40);						/* Set Y address (column=0) */
      000142 75 82 40         [24]  775 	mov	dpl,#0x40
      000145 12 00 93         [24]  776 	lcall	_GLCD_Command
                           0000E6   777 	C$main.c$104$1_0$83 ==.
                                    778 ;	main.c:104: GLCD_Command(0xB8);						/* Set X address (page=0) */
      000148 75 82 B8         [24]  779 	mov	dpl,#0xb8
      00014B 12 00 93         [24]  780 	lcall	_GLCD_Command
                           0000EC   781 	C$main.c$105$1_0$83 ==.
                                    782 ;	main.c:105: }
                           0000EC   783 	C$main.c$105$1_0$83 ==.
                           0000EC   784 	XG$GLCD_ClearAll$0$0 ==.
      00014E 22               [24]  785 	ret
                                    786 ;------------------------------------------------------------
                                    787 ;Allocation info for local variables in function 'GLCD_Plot_Coordinate_Axes'
                                    788 ;------------------------------------------------------------
                           0000ED   789 	G$GLCD_Plot_Coordinate_Axes$0$0 ==.
                           0000ED   790 	C$main.c$106$1_0$89 ==.
                                    791 ;	main.c:106: void GLCD_Plot_Coordinate_Axes(void)			/* GLCD all display clear function */
                                    792 ;	-----------------------------------------
                                    793 ;	 function GLCD_Plot_Coordinate_Axes
                                    794 ;	-----------------------------------------
      00014F                        795 _GLCD_Plot_Coordinate_Axes:
                           0000ED   796 	C$main.c$113$1_0$89 ==.
                                    797 ;	main.c:113: CS1 = 1; CS2 = 0;						/* Select right half of display */
                                    798 ;	assignBit
      00014F D2 84            [12]  799 	setb	_P0_4
                                    800 ;	assignBit
      000151 C2 83            [12]  801 	clr	_P0_3
                           0000F1   802 	C$main.c$114$1_0$89 ==.
                                    803 ;	main.c:114: for(i=0;i<8;i++)
      000153 7E 00            [12]  804 	mov	r6,#0x00
      000155 7F 00            [12]  805 	mov	r7,#0x00
      000157                        806 00113$:
                           0000F5   807 	C$main.c$116$3_0$91 ==.
                                    808 ;	main.c:116: GLCD_Command((0xB8)+i);				/* Increment page */
      000157 8E 05            [24]  809 	mov	ar5,r6
      000159 74 B8            [12]  810 	mov	a,#0xb8
      00015B 2D               [12]  811 	add	a,r5
      00015C F5 82            [12]  812 	mov	dpl,a
      00015E C0 07            [24]  813 	push	ar7
      000160 C0 06            [24]  814 	push	ar6
      000162 12 00 93         [24]  815 	lcall	_GLCD_Command
      000165 D0 06            [24]  816 	pop	ar6
      000167 D0 07            [24]  817 	pop	ar7
                           000107   818 	C$main.c$117$6_0$94 ==.
                                    819 ;	main.c:117: for(j=0;j<64;j++)
      000169 C3               [12]  820 	clr	c
      00016A EE               [12]  821 	mov	a,r6
      00016B 94 07            [12]  822 	subb	a,#0x07
      00016D EF               [12]  823 	mov	a,r7
      00016E 64 80            [12]  824 	xrl	a,#0x80
      000170 94 80            [12]  825 	subb	a,#0x80
      000172 E4               [12]  826 	clr	a
      000173 33               [12]  827 	rlc	a
      000174 FD               [12]  828 	mov	r5,a
      000175 C3               [12]  829 	clr	c
      000176 EE               [12]  830 	mov	a,r6
      000177 94 03            [12]  831 	subb	a,#0x03
      000179 EF               [12]  832 	mov	a,r7
      00017A 64 80            [12]  833 	xrl	a,#0x80
      00017C 94 80            [12]  834 	subb	a,#0x80
      00017E 92 00            [24]  835 	mov	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,c
      000180 7B 00            [12]  836 	mov	r3,#0x00
      000182 7C 00            [12]  837 	mov	r4,#0x00
      000184                        838 00111$:
                           000122   839 	C$main.c$119$5_0$93 ==.
                                    840 ;	main.c:119: if(i>=3 && j==0)
      000184 20 00 57         [24]  841 	jb	_GLCD_Plot_Coordinate_Axes_sloc0_1_0,00112$
      000187 EB               [12]  842 	mov	a,r3
      000188 4C               [12]  843 	orl	a,r4
      000189 70 53            [24]  844 	jnz	00112$
                           000129   845 	C$main.c$121$6_0$94 ==.
                                    846 ;	main.c:121: GLCD_Command(0x40+5);
      00018B 75 82 45         [24]  847 	mov	dpl,#0x45
      00018E C0 07            [24]  848 	push	ar7
      000190 C0 06            [24]  849 	push	ar6
      000192 C0 05            [24]  850 	push	ar5
      000194 C0 04            [24]  851 	push	ar4
      000196 C0 03            [24]  852 	push	ar3
      000198 12 00 93         [24]  853 	lcall	_GLCD_Command
      00019B D0 03            [24]  854 	pop	ar3
      00019D D0 04            [24]  855 	pop	ar4
      00019F D0 05            [24]  856 	pop	ar5
      0001A1 D0 06            [24]  857 	pop	ar6
      0001A3 D0 07            [24]  858 	pop	ar7
                           000143   859 	C$main.c$122$6_0$94 ==.
                                    860 ;	main.c:122: if(i<7)
      0001A5 ED               [12]  861 	mov	a,r5
      0001A6 60 1C            [24]  862 	jz	00102$
                           000146   863 	C$main.c$123$6_0$94 ==.
                                    864 ;	main.c:123: GLCD_Data(0xFF);
      0001A8 75 82 FF         [24]  865 	mov	dpl,#0xff
      0001AB C0 07            [24]  866 	push	ar7
      0001AD C0 06            [24]  867 	push	ar6
      0001AF C0 05            [24]  868 	push	ar5
      0001B1 C0 04            [24]  869 	push	ar4
      0001B3 C0 03            [24]  870 	push	ar3
      0001B5 12 00 AB         [24]  871 	lcall	_GLCD_Data
      0001B8 D0 03            [24]  872 	pop	ar3
      0001BA D0 04            [24]  873 	pop	ar4
      0001BC D0 05            [24]  874 	pop	ar5
      0001BE D0 06            [24]  875 	pop	ar6
      0001C0 D0 07            [24]  876 	pop	ar7
      0001C2 80 1A            [24]  877 	sjmp	00112$
      0001C4                        878 00102$:
                           000162   879 	C$main.c$125$6_0$94 ==.
                                    880 ;	main.c:125: GLCD_Data(0x3F);
      0001C4 75 82 3F         [24]  881 	mov	dpl,#0x3f
      0001C7 C0 07            [24]  882 	push	ar7
      0001C9 C0 06            [24]  883 	push	ar6
      0001CB C0 05            [24]  884 	push	ar5
      0001CD C0 04            [24]  885 	push	ar4
      0001CF C0 03            [24]  886 	push	ar3
      0001D1 12 00 AB         [24]  887 	lcall	_GLCD_Data
      0001D4 D0 03            [24]  888 	pop	ar3
      0001D6 D0 04            [24]  889 	pop	ar4
      0001D8 D0 05            [24]  890 	pop	ar5
      0001DA D0 06            [24]  891 	pop	ar6
      0001DC D0 07            [24]  892 	pop	ar7
      0001DE                        893 00112$:
                           00017C   894 	C$main.c$117$4_0$92 ==.
                                    895 ;	main.c:117: for(j=0;j<64;j++)
      0001DE 0B               [12]  896 	inc	r3
      0001DF BB 00 01         [24]  897 	cjne	r3,#0x00,00172$
      0001E2 0C               [12]  898 	inc	r4
      0001E3                        899 00172$:
      0001E3 C3               [12]  900 	clr	c
      0001E4 EB               [12]  901 	mov	a,r3
      0001E5 94 40            [12]  902 	subb	a,#0x40
      0001E7 EC               [12]  903 	mov	a,r4
      0001E8 64 80            [12]  904 	xrl	a,#0x80
      0001EA 94 80            [12]  905 	subb	a,#0x80
      0001EC 40 96            [24]  906 	jc	00111$
                           00018C   907 	C$main.c$114$2_0$90 ==.
                                    908 ;	main.c:114: for(i=0;i<8;i++)
      0001EE 0E               [12]  909 	inc	r6
      0001EF BE 00 01         [24]  910 	cjne	r6,#0x00,00174$
      0001F2 0F               [12]  911 	inc	r7
      0001F3                        912 00174$:
      0001F3 C3               [12]  913 	clr	c
      0001F4 EE               [12]  914 	mov	a,r6
      0001F5 94 08            [12]  915 	subb	a,#0x08
      0001F7 EF               [12]  916 	mov	a,r7
      0001F8 64 80            [12]  917 	xrl	a,#0x80
      0001FA 94 80            [12]  918 	subb	a,#0x80
      0001FC 50 03            [24]  919 	jnc	00175$
      0001FE 02 01 57         [24]  920 	ljmp	00113$
      000201                        921 00175$:
                           00019F   922 	C$main.c$129$1_0$89 ==.
                                    923 ;	main.c:129: GLCD_Command(0xB8+3); 					/* Select Page 3 (left) */
      000201 75 82 BB         [24]  924 	mov	dpl,#0xbb
      000204 12 00 93         [24]  925 	lcall	_GLCD_Command
                           0001A5   926 	C$main.c$130$1_0$89 ==.
                                    927 ;	main.c:130: GLCD_Command(0x40+5-2);					/* Select Column 1 */
      000207 75 82 43         [24]  928 	mov	dpl,#0x43
      00020A 12 00 93         [24]  929 	lcall	_GLCD_Command
                           0001AB   930 	C$main.c$131$1_0$89 ==.
                                    931 ;	main.c:131: GLCD_Data(0x04);
      00020D 75 82 04         [24]  932 	mov	dpl,#0x04
      000210 12 00 AB         [24]  933 	lcall	_GLCD_Data
                           0001B1   934 	C$main.c$132$1_0$89 ==.
                                    935 ;	main.c:132: GLCD_Command(0x40+5-1);		   			/* Select Column 2 */
      000213 75 82 44         [24]  936 	mov	dpl,#0x44
      000216 12 00 93         [24]  937 	lcall	_GLCD_Command
                           0001B7   938 	C$main.c$133$1_0$89 ==.
                                    939 ;	main.c:133: GLCD_Data(0x02);
      000219 75 82 02         [24]  940 	mov	dpl,#0x02
      00021C 12 00 AB         [24]  941 	lcall	_GLCD_Data
                           0001BD   942 	C$main.c$134$1_0$89 ==.
                                    943 ;	main.c:134: GLCD_Command(0x40+5+1);					/* Select Column 1 */
      00021F 75 82 46         [24]  944 	mov	dpl,#0x46
      000222 12 00 93         [24]  945 	lcall	_GLCD_Command
                           0001C3   946 	C$main.c$135$1_0$89 ==.
                                    947 ;	main.c:135: GLCD_Data(0x02);
      000225 75 82 02         [24]  948 	mov	dpl,#0x02
      000228 12 00 AB         [24]  949 	lcall	_GLCD_Data
                           0001C9   950 	C$main.c$136$1_0$89 ==.
                                    951 ;	main.c:136: GLCD_Command(0x40+5+2);		   			/* Select Column 2 */
      00022B 75 82 47         [24]  952 	mov	dpl,#0x47
      00022E 12 00 93         [24]  953 	lcall	_GLCD_Command
                           0001CF   954 	C$main.c$137$1_0$89 ==.
                                    955 ;	main.c:137: GLCD_Data(0x04);
      000231 75 82 04         [24]  956 	mov	dpl,#0x04
      000234 12 00 AB         [24]  957 	lcall	_GLCD_Data
                           0001D5   958 	C$main.c$140$1_0$89 ==.
                                    959 ;	main.c:140: CS1 = 1; CS2 = 0;						/* Select left half of display */
                                    960 ;	assignBit
      000237 D2 84            [12]  961 	setb	_P0_4
                                    962 ;	assignBit
      000239 C2 83            [12]  963 	clr	_P0_3
                           0001D9   964 	C$main.c$141$1_0$89 ==.
                                    965 ;	main.c:141: GLCD_Command((0xB8)+7);
      00023B 75 82 BF         [24]  966 	mov	dpl,#0xbf
      00023E 12 00 93         [24]  967 	lcall	_GLCD_Command
                           0001DF   968 	C$main.c$142$1_0$89 ==.
                                    969 ;	main.c:142: GLCD_Command(0x40+6);					/* Set Y address (column=1) */
      000241 75 82 46         [24]  970 	mov	dpl,#0x46
      000244 12 00 93         [24]  971 	lcall	_GLCD_Command
                           0001E5   972 	C$main.c$143$1_0$89 ==.
                                    973 ;	main.c:143: for(j=6;j<64;j++)
      000247 7E 06            [12]  974 	mov	r6,#0x06
      000249 7F 00            [12]  975 	mov	r7,#0x00
      00024B                        976 00115$:
                           0001E9   977 	C$main.c$145$3_0$96 ==.
                                    978 ;	main.c:145: GLCD_Data(0x20);
      00024B 75 82 20         [24]  979 	mov	dpl,#0x20
      00024E C0 07            [24]  980 	push	ar7
      000250 C0 06            [24]  981 	push	ar6
      000252 12 00 AB         [24]  982 	lcall	_GLCD_Data
      000255 D0 06            [24]  983 	pop	ar6
      000257 D0 07            [24]  984 	pop	ar7
                           0001F7   985 	C$main.c$143$2_0$95 ==.
                                    986 ;	main.c:143: for(j=6;j<64;j++)
      000259 0E               [12]  987 	inc	r6
      00025A BE 00 01         [24]  988 	cjne	r6,#0x00,00176$
      00025D 0F               [12]  989 	inc	r7
      00025E                        990 00176$:
      00025E C3               [12]  991 	clr	c
      00025F EE               [12]  992 	mov	a,r6
      000260 94 40            [12]  993 	subb	a,#0x40
      000262 EF               [12]  994 	mov	a,r7
      000263 64 80            [12]  995 	xrl	a,#0x80
      000265 94 80            [12]  996 	subb	a,#0x80
      000267 40 E2            [24]  997 	jc	00115$
                           000207   998 	C$main.c$147$1_0$89 ==.
                                    999 ;	main.c:147: CS1 = 0; CS2 = 1;						/* Select right half of display */
                                   1000 ;	assignBit
      000269 C2 84            [12] 1001 	clr	_P0_4
                                   1002 ;	assignBit
      00026B D2 83            [12] 1003 	setb	_P0_3
                           00020B  1004 	C$main.c$148$1_0$89 ==.
                                   1005 ;	main.c:148: GLCD_Command((0xB8)+7);
      00026D 75 82 BF         [24] 1006 	mov	dpl,#0xbf
      000270 12 00 93         [24] 1007 	lcall	_GLCD_Command
                           000211  1008 	C$main.c$149$1_0$89 ==.
                                   1009 ;	main.c:149: GLCD_Command(0x40);						/* Set Y address (column=1) */
      000273 75 82 40         [24] 1010 	mov	dpl,#0x40
      000276 12 00 93         [24] 1011 	lcall	_GLCD_Command
                           000217  1012 	C$main.c$150$1_0$89 ==.
                                   1013 ;	main.c:150: for(j=0;j<32;j++)
      000279 7E 00            [12] 1014 	mov	r6,#0x00
      00027B 7F 00            [12] 1015 	mov	r7,#0x00
      00027D                       1016 00117$:
                           00021B  1017 	C$main.c$152$3_0$98 ==.
                                   1018 ;	main.c:152: GLCD_Data(0x20);
      00027D 75 82 20         [24] 1019 	mov	dpl,#0x20
      000280 C0 07            [24] 1020 	push	ar7
      000282 C0 06            [24] 1021 	push	ar6
      000284 12 00 AB         [24] 1022 	lcall	_GLCD_Data
      000287 D0 06            [24] 1023 	pop	ar6
      000289 D0 07            [24] 1024 	pop	ar7
                           000229  1025 	C$main.c$150$2_0$97 ==.
                                   1026 ;	main.c:150: for(j=0;j<32;j++)
      00028B 0E               [12] 1027 	inc	r6
      00028C BE 00 01         [24] 1028 	cjne	r6,#0x00,00178$
      00028F 0F               [12] 1029 	inc	r7
      000290                       1030 00178$:
      000290 C3               [12] 1031 	clr	c
      000291 EE               [12] 1032 	mov	a,r6
      000292 94 20            [12] 1033 	subb	a,#0x20
      000294 EF               [12] 1034 	mov	a,r7
      000295 64 80            [12] 1035 	xrl	a,#0x80
      000297 94 80            [12] 1036 	subb	a,#0x80
      000299 40 E2            [24] 1037 	jc	00117$
                           000239  1038 	C$main.c$154$1_0$89 ==.
                                   1039 ;	main.c:154: GLCD_Command(0x40+30);					/* Select Column 1 */
      00029B 75 82 5E         [24] 1040 	mov	dpl,#0x5e
      00029E 12 00 93         [24] 1041 	lcall	_GLCD_Command
                           00023F  1042 	C$main.c$155$1_0$89 ==.
                                   1043 ;	main.c:155: GLCD_Data(0x70);
      0002A1 75 82 70         [24] 1044 	mov	dpl,#0x70
      0002A4 12 00 AB         [24] 1045 	lcall	_GLCD_Data
                           000245  1046 	C$main.c$156$1_0$89 ==.
                                   1047 ;	main.c:156: GLCD_Command(0x40+29);
      0002A7 75 82 5D         [24] 1048 	mov	dpl,#0x5d
      0002AA 12 00 93         [24] 1049 	lcall	_GLCD_Command
                           00024B  1050 	C$main.c$157$1_0$89 ==.
                                   1051 ;	main.c:157: GLCD_Data(0xA8);
      0002AD 75 82 A8         [24] 1052 	mov	dpl,#0xa8
      0002B0 12 00 AB         [24] 1053 	lcall	_GLCD_Data
                           000251  1054 	C$main.c$158$1_0$89 ==.
                                   1055 ;	main.c:158: }
                           000251  1056 	C$main.c$158$1_0$89 ==.
                           000251  1057 	XG$GLCD_Plot_Coordinate_Axes$0$0 ==.
      0002B3 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'GLCD_WriteChar'
                                   1061 ;------------------------------------------------------------
                           000252  1062 	G$GLCD_WriteChar$0$0 ==.
                           000252  1063 	C$main.c$159$1_0$100 ==.
                                   1064 ;	main.c:159: void GLCD_WriteChar(unsigned char page_no)	/* GLCD write a char function */
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function GLCD_WriteChar
                                   1067 ;	-----------------------------------------
      0002B4                       1068 _GLCD_WriteChar:
      0002B4 AF 82            [24] 1069 	mov	r7,dpl
                           000254  1070 	C$main.c$162$2_0$100 ==.
                                   1071 ;	main.c:162: float Page_inc=0.5;
      0002B6 78 02            [12] 1072 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_100
      0002B8 E4               [12] 1073 	clr	a
      0002B9 F2               [24] 1074 	movx	@r0,a
      0002BA 08               [12] 1075 	inc	r0
      0002BB F2               [24] 1076 	movx	@r0,a
      0002BC 08               [12] 1077 	inc	r0
      0002BD F2               [24] 1078 	movx	@r0,a
      0002BE 74 3F            [12] 1079 	mov	a,#0x3f
      0002C0 08               [12] 1080 	inc	r0
      0002C1 F2               [24] 1081 	movx	@r0,a
                           000260  1082 	C$main.c$164$1_0$100 ==.
                                   1083 ;	main.c:164: CS1 = 1;
                                   1084 ;	assignBit
      0002C2 D2 84            [12] 1085 	setb	_P0_4
                           000262  1086 	C$main.c$165$1_0$100 ==.
                                   1087 ;	main.c:165: CS2 = 0;
                                   1088 ;	assignBit
      0002C4 C2 83            [12] 1089 	clr	_P0_3
                           000264  1090 	C$main.c$166$1_0$100 ==.
                                   1091 ;	main.c:166: GLCD_Command((0xB8)+page_no);
      0002C6 74 B8            [12] 1092 	mov	a,#0xb8
      0002C8 2F               [12] 1093 	add	a,r7
      0002C9 F5 82            [12] 1094 	mov	dpl,a
      0002CB 12 00 93         [24] 1095 	lcall	_GLCD_Command
                           00026C  1096 	C$main.c$167$1_0$100 ==.
                                   1097 ;	main.c:167: GLCD_Command(0x40);
      0002CE 75 82 40         [24] 1098 	mov	dpl,#0x40
      0002D1 12 00 93         [24] 1099 	lcall	_GLCD_Command
                           000272  1100 	C$main.c$168$3_0$102 ==.
                                   1101 ;	main.c:168: for(column=0;column<5;column++)
      0002D4 7A 00            [12] 1102 	mov	r2,#0x00
      0002D6 7F 00            [12] 1103 	mov	r7,#0x00
      0002D8 7C 00            [12] 1104 	mov	r4,#0x00
      0002DA 7B 00            [12] 1105 	mov	r3,#0x00
      0002DC                       1106 00104$:
                           00027A  1107 	C$main.c$170$2_0$100 ==.
                                   1108 ;	main.c:170: GLCD_Data(font[1][column]);
      0002DC EC               [12] 1109 	mov	a,r4
      0002DD 24 7B            [12] 1110 	add	a,#(_font + 0x0005)
      0002DF F5 82            [12] 1111 	mov	dpl,a
      0002E1 EB               [12] 1112 	mov	a,r3
      0002E2 34 05            [12] 1113 	addc	a,#((_font + 0x0005) >> 8)
      0002E4 F5 83            [12] 1114 	mov	dph,a
      0002E6 E4               [12] 1115 	clr	a
      0002E7 93               [24] 1116 	movc	a,@a+dptr
      0002E8 F5 82            [12] 1117 	mov	dpl,a
      0002EA C0 07            [24] 1118 	push	ar7
      0002EC C0 04            [24] 1119 	push	ar4
      0002EE C0 03            [24] 1120 	push	ar3
      0002F0 C0 02            [24] 1121 	push	ar2
      0002F2 12 00 AB         [24] 1122 	lcall	_GLCD_Data
      0002F5 D0 02            [24] 1123 	pop	ar2
      0002F7 D0 03            [24] 1124 	pop	ar3
      0002F9 D0 04            [24] 1125 	pop	ar4
      0002FB D0 07            [24] 1126 	pop	ar7
                           00029B  1127 	C$main.c$171$3_0$102 ==.
                                   1128 ;	main.c:171: if((Y_address+1)%64==0)
      0002FD 74 01            [12] 1129 	mov	a,#0x01
      0002FF 2A               [12] 1130 	add	a,r2
      000300 FD               [12] 1131 	mov	r5,a
      000301 E4               [12] 1132 	clr	a
      000302 3F               [12] 1133 	addc	a,r7
      000303 FE               [12] 1134 	mov	r6,a
      000304 ED               [12] 1135 	mov	a,r5
      000305 54 3F            [12] 1136 	anl	a,#0x3f
      000307 60 03            [24] 1137 	jz	00118$
      000309 02 03 9C         [24] 1138 	ljmp	00102$
      00030C                       1139 00118$:
                           0002AA  1140 	C$main.c$173$2_0$100 ==.
                                   1141 ;	main.c:173: CS1 = !CS1; CS2 = !CS2;
      00030C C0 02            [24] 1142 	push	ar2
      00030E C0 07            [24] 1143 	push	ar7
      000310 B2 84            [12] 1144 	cpl	_P0_4
      000312 B2 83            [12] 1145 	cpl	_P0_3
                           0002B2  1146 	C$main.c$174$2_0$100 ==.
                                   1147 ;	main.c:174: GLCD_Command((Page+Page_inc));
      000314 C0 04            [24] 1148 	push	ar4
      000316 C0 03            [24] 1149 	push	ar3
      000318 78 02            [12] 1150 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_100
      00031A E2               [24] 1151 	movx	a,@r0
      00031B C0 E0            [24] 1152 	push	acc
      00031D 08               [12] 1153 	inc	r0
      00031E E2               [24] 1154 	movx	a,@r0
      00031F C0 E0            [24] 1155 	push	acc
      000321 08               [12] 1156 	inc	r0
      000322 E2               [24] 1157 	movx	a,@r0
      000323 C0 E0            [24] 1158 	push	acc
      000325 08               [12] 1159 	inc	r0
      000326 E2               [24] 1160 	movx	a,@r0
      000327 C0 E0            [24] 1161 	push	acc
      000329 90 00 00         [24] 1162 	mov	dptr,#0x0000
      00032C 75 F0 38         [24] 1163 	mov	b,#0x38
      00032F 74 43            [12] 1164 	mov	a,#0x43
      000331 12 03 CB         [24] 1165 	lcall	___fsadd
      000334 AA 82            [24] 1166 	mov	r2,dpl
      000336 AD 83            [24] 1167 	mov	r5,dph
      000338 AE F0            [24] 1168 	mov	r6,b
      00033A FF               [12] 1169 	mov	r7,a
      00033B E5 81            [12] 1170 	mov	a,sp
      00033D 24 FC            [12] 1171 	add	a,#0xfc
      00033F F5 81            [12] 1172 	mov	sp,a
      000341 D0 03            [24] 1173 	pop	ar3
      000343 D0 04            [24] 1174 	pop	ar4
      000345 8A 82            [24] 1175 	mov	dpl,r2
      000347 8D 83            [24] 1176 	mov	dph,r5
      000349 8E F0            [24] 1177 	mov	b,r6
      00034B EF               [12] 1178 	mov	a,r7
      00034C C0 07            [24] 1179 	push	ar7
      00034E C0 04            [24] 1180 	push	ar4
      000350 C0 03            [24] 1181 	push	ar3
      000352 C0 02            [24] 1182 	push	ar2
      000354 12 04 8D         [24] 1183 	lcall	___fs2uchar
      000357 12 00 93         [24] 1184 	lcall	_GLCD_Command
                           0002F8  1185 	C$main.c$175$2_0$100 ==.
                                   1186 ;	main.c:175: Page_inc=Page_inc+0.5;
      00035A E4               [12] 1187 	clr	a
      00035B C0 E0            [24] 1188 	push	acc
      00035D C0 E0            [24] 1189 	push	acc
      00035F C0 E0            [24] 1190 	push	acc
      000361 74 3F            [12] 1191 	mov	a,#0x3f
      000363 C0 E0            [24] 1192 	push	acc
      000365 78 02            [12] 1193 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_100
      000367 E2               [24] 1194 	movx	a,@r0
      000368 F5 82            [12] 1195 	mov	dpl,a
      00036A 08               [12] 1196 	inc	r0
      00036B E2               [24] 1197 	movx	a,@r0
      00036C F5 83            [12] 1198 	mov	dph,a
      00036E 08               [12] 1199 	inc	r0
      00036F E2               [24] 1200 	movx	a,@r0
      000370 F5 F0            [12] 1201 	mov	b,a
      000372 08               [12] 1202 	inc	r0
      000373 E2               [24] 1203 	movx	a,@r0
      000374 12 03 CB         [24] 1204 	lcall	___fsadd
      000377 78 02            [12] 1205 	mov	r0,#_GLCD_WriteChar_Page_inc_65536_100
      000379 C0 E0            [24] 1206 	push	acc
      00037B E5 82            [12] 1207 	mov	a,dpl
      00037D F2               [24] 1208 	movx	@r0,a
      00037E E5 83            [12] 1209 	mov	a,dph
      000380 08               [12] 1210 	inc	r0
      000381 F2               [24] 1211 	movx	@r0,a
      000382 E5 F0            [12] 1212 	mov	a,b
      000384 08               [12] 1213 	inc	r0
      000385 F2               [24] 1214 	movx	@r0,a
      000386 D0 E0            [24] 1215 	pop	acc
      000388 08               [12] 1216 	inc	r0
      000389 F2               [24] 1217 	movx	@r0,a
      00038A E5 81            [12] 1218 	mov	a,sp
      00038C 24 FC            [12] 1219 	add	a,#0xfc
      00038E F5 81            [12] 1220 	mov	sp,a
      000390 D0 02            [24] 1221 	pop	ar2
      000392 D0 03            [24] 1222 	pop	ar3
      000394 D0 04            [24] 1223 	pop	ar4
      000396 D0 07            [24] 1224 	pop	ar7
                           000336  1225 	C$main.c$168$2_0$100 ==.
                                   1226 ;	main.c:168: for(column=0;column<5;column++)
      000398 D0 07            [24] 1227 	pop	ar7
      00039A D0 02            [24] 1228 	pop	ar2
                           00033A  1229 	C$main.c$175$3_0$102 ==.
                                   1230 ;	main.c:175: Page_inc=Page_inc+0.5;
      00039C                       1231 00102$:
                           00033A  1232 	C$main.c$177$3_0$102 ==.
                                   1233 ;	main.c:177: Y_address++;
      00039C 0A               [12] 1234 	inc	r2
      00039D BA 00 01         [24] 1235 	cjne	r2,#0x00,00119$
      0003A0 0F               [12] 1236 	inc	r7
      0003A1                       1237 00119$:
                           00033F  1238 	C$main.c$168$2_0$101 ==.
                                   1239 ;	main.c:168: for(column=0;column<5;column++)
      0003A1 0C               [12] 1240 	inc	r4
      0003A2 BC 00 01         [24] 1241 	cjne	r4,#0x00,00120$
      0003A5 0B               [12] 1242 	inc	r3
      0003A6                       1243 00120$:
      0003A6 C3               [12] 1244 	clr	c
      0003A7 EC               [12] 1245 	mov	a,r4
      0003A8 94 05            [12] 1246 	subb	a,#0x05
      0003AA EB               [12] 1247 	mov	a,r3
      0003AB 94 00            [12] 1248 	subb	a,#0x00
      0003AD 50 03            [24] 1249 	jnc	00121$
      0003AF 02 02 DC         [24] 1250 	ljmp	00104$
      0003B2                       1251 00121$:
                           000350  1252 	C$main.c$179$2_0$100 ==.
                                   1253 ;	main.c:179: }
                           000350  1254 	C$main.c$179$2_0$100 ==.
                           000350  1255 	XG$GLCD_WriteChar$0$0 ==.
      0003B2 22               [24] 1256 	ret
                                   1257 ;------------------------------------------------------------
                                   1258 ;Allocation info for local variables in function 'main'
                                   1259 ;------------------------------------------------------------
                           000351  1260 	G$main$0$0 ==.
                           000351  1261 	C$main.c$180$2_0$105 ==.
                                   1262 ;	main.c:180: void main(void)
                                   1263 ;	-----------------------------------------
                                   1264 ;	 function main
                                   1265 ;	-----------------------------------------
      0003B3                       1266 _main:
                           000351  1267 	C$main.c$182$1_0$105 ==.
                                   1268 ;	main.c:182: GLCD_Init();							/* Initialize GLCD */
      0003B3 12 00 C3         [24] 1269 	lcall	_GLCD_Init
                           000354  1270 	C$main.c$183$1_0$105 ==.
                                   1271 ;	main.c:183: GLCD_ClearAll();
      0003B6 12 00 EE         [24] 1272 	lcall	_GLCD_ClearAll
                           000357  1273 	C$main.c$184$1_0$105 ==.
                                   1274 ;	main.c:184: GLCD_Plot_Coordinate_Axes();
      0003B9 12 01 4F         [24] 1275 	lcall	_GLCD_Plot_Coordinate_Axes
                           00035A  1276 	C$main.c$185$1_0$105 ==.
                                   1277 ;	main.c:185: GLCD_WriteChar(0);
      0003BC 75 82 00         [24] 1278 	mov	dpl,#0x00
      0003BF 12 02 B4         [24] 1279 	lcall	_GLCD_WriteChar
                           000360  1280 	C$main.c$186$1_0$105 ==.
                                   1281 ;	main.c:186: delay(500);
      0003C2 90 01 F4         [24] 1282 	mov	dptr,#0x01f4
      0003C5 12 00 6B         [24] 1283 	lcall	_delay
                           000366  1284 	C$main.c$187$1_0$105 ==.
                                   1285 ;	main.c:187: while(1);
      0003C8                       1286 00102$:
      0003C8 80 FE            [24] 1287 	sjmp	00102$
                           000368  1288 	C$main.c$188$1_0$105 ==.
                                   1289 ;	main.c:188: }
                           000368  1290 	C$main.c$188$1_0$105 ==.
                           000368  1291 	XG$main$0$0 ==.
      0003CA 22               [24] 1292 	ret
                                   1293 	.area CSEG    (CODE)
                                   1294 	.area CONST   (CODE)
                           000000  1295 G$font$0_0$0 == .
      000576                       1296 _font:
      000576 00                    1297 	.db #0x00	; 0
      000577 00                    1298 	.db #0x00	; 0
      000578 00                    1299 	.db #0x00	; 0
      000579 00                    1300 	.db #0x00	; 0
      00057A 00                    1301 	.db #0x00	; 0
      00057B 7E                    1302 	.db #0x7e	; 126
      00057C 11                    1303 	.db #0x11	; 17
      00057D 11                    1304 	.db #0x11	; 17
      00057E 11                    1305 	.db #0x11	; 17
      00057F 7E                    1306 	.db #0x7e	; 126
      000580 7F                    1307 	.db #0x7f	; 127
      000581 49                    1308 	.db #0x49	; 73	'I'
      000582 49                    1309 	.db #0x49	; 73	'I'
      000583 49                    1310 	.db #0x49	; 73	'I'
      000584 36                    1311 	.db #0x36	; 54	'6'
      000585 3E                    1312 	.db #0x3e	; 62
      000586 41                    1313 	.db #0x41	; 65	'A'
      000587 41                    1314 	.db #0x41	; 65	'A'
      000588 41                    1315 	.db #0x41	; 65	'A'
      000589 22                    1316 	.db #0x22	; 34
      00058A 7F                    1317 	.db #0x7f	; 127
      00058B 41                    1318 	.db #0x41	; 65	'A'
      00058C 41                    1319 	.db #0x41	; 65	'A'
      00058D 22                    1320 	.db #0x22	; 34
      00058E 1C                    1321 	.db #0x1c	; 28
      00058F 7F                    1322 	.db #0x7f	; 127
      000590 49                    1323 	.db #0x49	; 73	'I'
      000591 49                    1324 	.db #0x49	; 73	'I'
      000592 49                    1325 	.db #0x49	; 73	'I'
      000593 41                    1326 	.db #0x41	; 65	'A'
      000594 7F                    1327 	.db #0x7f	; 127
      000595 09                    1328 	.db #0x09	; 9
      000596 09                    1329 	.db #0x09	; 9
      000597 09                    1330 	.db #0x09	; 9
      000598 01                    1331 	.db #0x01	; 1
      000599 3E                    1332 	.db #0x3e	; 62
      00059A 41                    1333 	.db #0x41	; 65	'A'
      00059B 49                    1334 	.db #0x49	; 73	'I'
      00059C 49                    1335 	.db #0x49	; 73	'I'
      00059D 7A                    1336 	.db #0x7a	; 122	'z'
      00059E 7F                    1337 	.db #0x7f	; 127
      00059F 08                    1338 	.db #0x08	; 8
      0005A0 08                    1339 	.db #0x08	; 8
      0005A1 08                    1340 	.db #0x08	; 8
      0005A2 7F                    1341 	.db #0x7f	; 127
      0005A3 00                    1342 	.db #0x00	; 0
      0005A4 41                    1343 	.db #0x41	; 65	'A'
      0005A5 7F                    1344 	.db #0x7f	; 127
      0005A6 41                    1345 	.db #0x41	; 65	'A'
      0005A7 00                    1346 	.db #0x00	; 0
      0005A8 20                    1347 	.db #0x20	; 32
      0005A9 40                    1348 	.db #0x40	; 64
      0005AA 41                    1349 	.db #0x41	; 65	'A'
      0005AB 3F                    1350 	.db #0x3f	; 63
      0005AC 01                    1351 	.db #0x01	; 1
      0005AD 7F                    1352 	.db #0x7f	; 127
      0005AE 08                    1353 	.db #0x08	; 8
      0005AF 14                    1354 	.db #0x14	; 20
      0005B0 22                    1355 	.db #0x22	; 34
      0005B1 41                    1356 	.db #0x41	; 65	'A'
      0005B2 7F                    1357 	.db #0x7f	; 127
      0005B3 40                    1358 	.db #0x40	; 64
      0005B4 40                    1359 	.db #0x40	; 64
      0005B5 40                    1360 	.db #0x40	; 64
      0005B6 40                    1361 	.db #0x40	; 64
      0005B7 7F                    1362 	.db #0x7f	; 127
      0005B8 02                    1363 	.db #0x02	; 2
      0005B9 0C                    1364 	.db #0x0c	; 12
      0005BA 02                    1365 	.db #0x02	; 2
      0005BB 7F                    1366 	.db #0x7f	; 127
      0005BC 7F                    1367 	.db #0x7f	; 127
      0005BD 04                    1368 	.db #0x04	; 4
      0005BE 08                    1369 	.db #0x08	; 8
      0005BF 10                    1370 	.db #0x10	; 16
      0005C0 7F                    1371 	.db #0x7f	; 127
      0005C1 3E                    1372 	.db #0x3e	; 62
      0005C2 41                    1373 	.db #0x41	; 65	'A'
      0005C3 41                    1374 	.db #0x41	; 65	'A'
      0005C4 41                    1375 	.db #0x41	; 65	'A'
      0005C5 3E                    1376 	.db #0x3e	; 62
      0005C6 7F                    1377 	.db #0x7f	; 127
      0005C7 09                    1378 	.db #0x09	; 9
      0005C8 09                    1379 	.db #0x09	; 9
      0005C9 09                    1380 	.db #0x09	; 9
      0005CA 06                    1381 	.db #0x06	; 6
      0005CB 3E                    1382 	.db #0x3e	; 62
      0005CC 41                    1383 	.db #0x41	; 65	'A'
      0005CD 51                    1384 	.db #0x51	; 81	'Q'
      0005CE 21                    1385 	.db #0x21	; 33
      0005CF 5E                    1386 	.db #0x5e	; 94
      0005D0 7F                    1387 	.db #0x7f	; 127
      0005D1 09                    1388 	.db #0x09	; 9
      0005D2 19                    1389 	.db #0x19	; 25
      0005D3 29                    1390 	.db #0x29	; 41
      0005D4 46                    1391 	.db #0x46	; 70	'F'
      0005D5 46                    1392 	.db #0x46	; 70	'F'
      0005D6 49                    1393 	.db #0x49	; 73	'I'
      0005D7 49                    1394 	.db #0x49	; 73	'I'
      0005D8 49                    1395 	.db #0x49	; 73	'I'
      0005D9 31                    1396 	.db #0x31	; 49	'1'
      0005DA 01                    1397 	.db #0x01	; 1
      0005DB 01                    1398 	.db #0x01	; 1
      0005DC 7F                    1399 	.db #0x7f	; 127
      0005DD 01                    1400 	.db #0x01	; 1
      0005DE 01                    1401 	.db #0x01	; 1
      0005DF 3F                    1402 	.db #0x3f	; 63
      0005E0 40                    1403 	.db #0x40	; 64
      0005E1 40                    1404 	.db #0x40	; 64
      0005E2 40                    1405 	.db #0x40	; 64
      0005E3 3F                    1406 	.db #0x3f	; 63
      0005E4 1F                    1407 	.db #0x1f	; 31
      0005E5 20                    1408 	.db #0x20	; 32
      0005E6 40                    1409 	.db #0x40	; 64
      0005E7 20                    1410 	.db #0x20	; 32
      0005E8 1F                    1411 	.db #0x1f	; 31
      0005E9 3F                    1412 	.db #0x3f	; 63
      0005EA 40                    1413 	.db #0x40	; 64
      0005EB 38                    1414 	.db #0x38	; 56	'8'
      0005EC 40                    1415 	.db #0x40	; 64
      0005ED 3F                    1416 	.db #0x3f	; 63
      0005EE 63                    1417 	.db #0x63	; 99	'c'
      0005EF 14                    1418 	.db #0x14	; 20
      0005F0 08                    1419 	.db #0x08	; 8
      0005F1 14                    1420 	.db #0x14	; 20
      0005F2 63                    1421 	.db #0x63	; 99	'c'
      0005F3 07                    1422 	.db #0x07	; 7
      0005F4 08                    1423 	.db #0x08	; 8
      0005F5 70                    1424 	.db #0x70	; 112	'p'
      0005F6 08                    1425 	.db #0x08	; 8
      0005F7 07                    1426 	.db #0x07	; 7
      0005F8 61                    1427 	.db #0x61	; 97	'a'
      0005F9 51                    1428 	.db #0x51	; 81	'Q'
      0005FA 49                    1429 	.db #0x49	; 73	'I'
      0005FB 45                    1430 	.db #0x45	; 69	'E'
      0005FC 43                    1431 	.db #0x43	; 67	'C'
                                   1432 	.area XINIT   (CODE)
                                   1433 	.area CABS    (ABS,CODE)
