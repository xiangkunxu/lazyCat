                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Wed Jan  3 19:59:35 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module timer
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _timer_0
                                     13 	.globl _main
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _timer_hour
                                    111 	.globl _timer_mine
                                    112 	.globl _timer_sece
                                    113 	.globl _timer_msel
                                    114 	.globl _l_val
                                    115 	.globl _h_val
                                    116 	.globl _key_val
                                    117 	.globl _timer_val
                                    118 	.globl _timerSet
                                    119 	.globl _keyWite
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _timer_val::
      000008                        236 	.ds 1
      000009                        237 _key_val::
      000009                        238 	.ds 1
      00000A                        239 _h_val::
      00000A                        240 	.ds 1
      00000B                        241 _l_val::
      00000B                        242 	.ds 1
      00000C                        243 _timer_msel::
      00000C                        244 	.ds 1
      00000D                        245 _timer_sece::
      00000D                        246 	.ds 1
      00000E                        247 _timer_mine::
      00000E                        248 	.ds 1
      00000F                        249 _timer_hour::
      00000F                        250 	.ds 1
                                    251 ;--------------------------------------------------------
                                    252 ; overlayable items in internal ram 
                                    253 ;--------------------------------------------------------
                                    254 	.area	OSEG    (OVR,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; Stack segment in internal ram 
                                    257 ;--------------------------------------------------------
                                    258 	.area	SSEG
      000010                        259 __start__stack:
      000010                        260 	.ds	1
                                    261 
                                    262 ;--------------------------------------------------------
                                    263 ; indirectly addressable internal ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area ISEG    (DATA)
                                    266 ;--------------------------------------------------------
                                    267 ; absolute internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area IABS    (ABS,DATA)
                                    270 	.area IABS    (ABS,DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; bit data
                                    273 ;--------------------------------------------------------
                                    274 	.area BSEG    (BIT)
                                    275 ;--------------------------------------------------------
                                    276 ; paged external ram data
                                    277 ;--------------------------------------------------------
                                    278 	.area PSEG    (PAG,XDATA)
                                    279 ;--------------------------------------------------------
                                    280 ; external ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area XSEG    (XDATA)
                                    283 ;--------------------------------------------------------
                                    284 ; absolute external ram data
                                    285 ;--------------------------------------------------------
                                    286 	.area XABS    (ABS,XDATA)
                                    287 ;--------------------------------------------------------
                                    288 ; external initialized ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area XISEG   (XDATA)
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT0 (CODE)
                                    293 	.area GSINIT1 (CODE)
                                    294 	.area GSINIT2 (CODE)
                                    295 	.area GSINIT3 (CODE)
                                    296 	.area GSINIT4 (CODE)
                                    297 	.area GSINIT5 (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area CSEG    (CODE)
                                    301 ;--------------------------------------------------------
                                    302 ; interrupt vector 
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
      000000                        305 __interrupt_vect:
      000000 02 00 11         [24]  306 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  307 	reti
      000004                        308 	.ds	7
      00000B 02 01 3B         [24]  309 	ljmp	_timer_0
                                    310 ;--------------------------------------------------------
                                    311 ; global & static initialisations
                                    312 ;--------------------------------------------------------
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.globl __sdcc_gsinit_startup
                                    318 	.globl __sdcc_program_startup
                                    319 	.globl __start__stack
                                    320 	.globl __mcs51_genXINIT
                                    321 	.globl __mcs51_genXRAMCLEAR
                                    322 	.globl __mcs51_genRAMCLEAR
                                    323 ;	timer.c:20: unsigned char timer_val=0;
      00006A 75 08 00         [24]  324 	mov	_timer_val,#0x00
                                    325 ;	timer.c:21: unsigned char key_val=1;
      00006D 75 09 01         [24]  326 	mov	_key_val,#0x01
                                    327 ;	timer.c:22: unsigned char h_val=(65535-50000)/256;
      000070 75 0A 3C         [24]  328 	mov	_h_val,#0x3C
                                    329 ;	timer.c:23: unsigned char l_val=(65535-50000)%256;
      000073 75 0B AF         [24]  330 	mov	_l_val,#0xAF
                                    331 ;	timer.c:24: unsigned char timer_msel=0;
      000076 75 0C 00         [24]  332 	mov	_timer_msel,#0x00
                                    333 ;	timer.c:25: unsigned char timer_sece=0;
      000079 75 0D 00         [24]  334 	mov	_timer_sece,#0x00
                                    335 ;	timer.c:26: unsigned char timer_mine=0;
      00007C 75 0E 00         [24]  336 	mov	_timer_mine,#0x00
                                    337 ;	timer.c:27: unsigned char timer_hour=0;
      00007F 75 0F 00         [24]  338 	mov	_timer_hour,#0x00
                                    339 	.area GSFINAL (CODE)
      000082 02 00 0E         [24]  340 	ljmp	__sdcc_program_startup
                                    341 ;--------------------------------------------------------
                                    342 ; Home
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area HOME    (CODE)
      00000E                        346 __sdcc_program_startup:
      00000E 02 00 85         [24]  347 	ljmp	_main
                                    348 ;	return from main will return to caller
                                    349 ;--------------------------------------------------------
                                    350 ; code
                                    351 ;--------------------------------------------------------
                                    352 	.area CSEG    (CODE)
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'main'
                                    355 ;------------------------------------------------------------
                                    356 ;	timer.c:32: void main()
                                    357 ;	-----------------------------------------
                                    358 ;	 function main
                                    359 ;	-----------------------------------------
      000085                        360 _main:
                           000007   361 	ar7 = 0x07
                           000006   362 	ar6 = 0x06
                           000005   363 	ar5 = 0x05
                           000004   364 	ar4 = 0x04
                           000003   365 	ar3 = 0x03
                           000002   366 	ar2 = 0x02
                           000001   367 	ar1 = 0x01
                           000000   368 	ar0 = 0x00
                                    369 ;	timer.c:34: while(1)
      000085                        370 00125$:
                                    371 ;	timer.c:36: out_usb_1=1;
      000085 D2 B3            [12]  372 	setb	_P3_3
                                    373 ;	timer.c:37: out_led_5=1;
      000087 D2 85            [12]  374 	setb	_P0_5
                                    375 ;	timer.c:38: while(1)
      000089                        376 00119$:
                                    377 ;	timer.c:40: if(key_set==0)
      000089 20 90 0B         [24]  378 	jb	_P1_0,00104$
                                    379 ;	timer.c:42: keyWite();
      00008C 12 01 26         [24]  380 	lcall	_keyWite
                                    381 ;	timer.c:43: if(key_set==0)
      00008F 20 90 05         [24]  382 	jb	_P1_0,00104$
                                    383 ;	timer.c:45: keyWite();
      000092 12 01 26         [24]  384 	lcall	_keyWite
                                    385 ;	timer.c:46: timer_val++;
      000095 05 08            [12]  386 	inc	_timer_val
      000097                        387 00104$:
                                    388 ;	timer.c:49: if(timer_val>4)
      000097 E5 08            [12]  389 	mov	a,_timer_val
      000099 24 FB            [12]  390 	add	a,#0xff - 0x04
      00009B 50 03            [24]  391 	jnc	00106$
                                    392 ;	timer.c:51: timer_val=0;
      00009D 75 08 00         [24]  393 	mov	_timer_val,#0x00
      0000A0                        394 00106$:
                                    395 ;	timer.c:53: switch(timer_val)
      0000A0 E5 08            [12]  396 	mov	a,_timer_val
      0000A2 24 FB            [12]  397 	add	a,#0xff - 0x04
      0000A4 40 49            [24]  398 	jc	00112$
      0000A6 E5 08            [12]  399 	mov	a,_timer_val
      0000A8 75 F0 03         [24]  400 	mov	b,#0x03
      0000AB A4               [48]  401 	mul	ab
      0000AC 90 00 B0         [24]  402 	mov	dptr,#00166$
      0000AF 73               [24]  403 	jmp	@a+dptr
      0000B0                        404 00166$:
      0000B0 02 00 BF         [24]  405 	ljmp	00107$
      0000B3 02 00 C9         [24]  406 	ljmp	00108$
      0000B6 02 00 D3         [24]  407 	ljmp	00109$
      0000B9 02 00 DD         [24]  408 	ljmp	00110$
      0000BC 02 00 E7         [24]  409 	ljmp	00111$
                                    410 ;	timer.c:55: case 0:
      0000BF                        411 00107$:
                                    412 ;	timer.c:56: out_led_1=1;
      0000BF D2 80            [12]  413 	setb	_P0_0
                                    414 ;	timer.c:57: out_led_2=1;
      0000C1 D2 81            [12]  415 	setb	_P0_1
                                    416 ;	timer.c:58: out_led_3=1;
      0000C3 D2 82            [12]  417 	setb	_P0_2
                                    418 ;	timer.c:59: out_led_4=1;
      0000C5 D2 83            [12]  419 	setb	_P0_3
                                    420 ;	timer.c:60: break;
                                    421 ;	timer.c:61: case 1:
      0000C7 80 26            [24]  422 	sjmp	00112$
      0000C9                        423 00108$:
                                    424 ;	timer.c:62: out_led_1=0;
      0000C9 C2 80            [12]  425 	clr	_P0_0
                                    426 ;	timer.c:63: out_led_2=1;
      0000CB D2 81            [12]  427 	setb	_P0_1
                                    428 ;	timer.c:64: out_led_3=1;
      0000CD D2 82            [12]  429 	setb	_P0_2
                                    430 ;	timer.c:65: out_led_4=1;
      0000CF D2 83            [12]  431 	setb	_P0_3
                                    432 ;	timer.c:66: break;
                                    433 ;	timer.c:67: case 2:
      0000D1 80 1C            [24]  434 	sjmp	00112$
      0000D3                        435 00109$:
                                    436 ;	timer.c:68: out_led_1=1;
      0000D3 D2 80            [12]  437 	setb	_P0_0
                                    438 ;	timer.c:69: out_led_2=0;
      0000D5 C2 81            [12]  439 	clr	_P0_1
                                    440 ;	timer.c:70: out_led_3=1;
      0000D7 D2 82            [12]  441 	setb	_P0_2
                                    442 ;	timer.c:71: out_led_4=1;
      0000D9 D2 83            [12]  443 	setb	_P0_3
                                    444 ;	timer.c:72: break;
                                    445 ;	timer.c:73: case 3:
      0000DB 80 12            [24]  446 	sjmp	00112$
      0000DD                        447 00110$:
                                    448 ;	timer.c:74: out_led_1=1;
      0000DD D2 80            [12]  449 	setb	_P0_0
                                    450 ;	timer.c:75: out_led_2=1;
      0000DF D2 81            [12]  451 	setb	_P0_1
                                    452 ;	timer.c:76: out_led_3=0;							
      0000E1 C2 82            [12]  453 	clr	_P0_2
                                    454 ;	timer.c:77: out_led_4=1;
      0000E3 D2 83            [12]  455 	setb	_P0_3
                                    456 ;	timer.c:78: break;
                                    457 ;	timer.c:79: case 4:
      0000E5 80 08            [24]  458 	sjmp	00112$
      0000E7                        459 00111$:
                                    460 ;	timer.c:80: out_led_1=1;
      0000E7 D2 80            [12]  461 	setb	_P0_0
                                    462 ;	timer.c:81: out_led_2=1;
      0000E9 D2 81            [12]  463 	setb	_P0_1
                                    464 ;	timer.c:82: out_led_3=1;
      0000EB D2 82            [12]  465 	setb	_P0_2
                                    466 ;	timer.c:83: out_led_4=0;
      0000ED C2 83            [12]  467 	clr	_P0_3
                                    468 ;	timer.c:85: }
      0000EF                        469 00112$:
                                    470 ;	timer.c:86: if(key_ok==0)
      0000EF 20 94 97         [24]  471 	jb	_P1_4,00119$
                                    472 ;	timer.c:88: keyWite();
      0000F2 12 01 26         [24]  473 	lcall	_keyWite
                                    474 ;	timer.c:89: if(key_ok==0 && timer_val!=0)
      0000F5 20 94 12         [24]  475 	jb	_P1_4,00120$
      0000F8 E5 08            [12]  476 	mov	a,_timer_val
      0000FA 60 0E            [24]  477 	jz	00120$
                                    478 ;	timer.c:91: keyWite();
      0000FC 12 01 26         [24]  479 	lcall	_keyWite
                                    480 ;	timer.c:92: key_val=!key_val;
      0000FF E5 09            [12]  481 	mov	a,_key_val
      000101 B4 01 00         [24]  482 	cjne	a,#0x01,00170$
      000104                        483 00170$:
      000104 E4               [12]  484 	clr	a
      000105 33               [12]  485 	rlc	a
      000106 F5 09            [12]  486 	mov	_key_val,a
                                    487 ;	timer.c:93: out_usb_1=!out_usb_1;
      000108 B2 B3            [12]  488 	cpl	_P3_3
                                    489 ;	timer.c:95: break;
      00010A                        490 00120$:
                                    491 ;	timer.c:98: timerSet();
      00010A 12 01 16         [24]  492 	lcall	_timerSet
                                    493 ;	timer.c:99: while(key_val==0);
      00010D                        494 00121$:
      00010D E5 09            [12]  495 	mov	a,_key_val
      00010F 60 03            [24]  496 	jz	00171$
      000111 02 00 85         [24]  497 	ljmp	00125$
      000114                        498 00171$:
      000114 80 F7            [24]  499 	sjmp	00121$
                                    500 ;------------------------------------------------------------
                                    501 ;Allocation info for local variables in function 'timerSet'
                                    502 ;------------------------------------------------------------
                                    503 ;	timer.c:103: void timerSet()
                                    504 ;	-----------------------------------------
                                    505 ;	 function timerSet
                                    506 ;	-----------------------------------------
      000116                        507 _timerSet:
                                    508 ;	timer.c:105: TMOD=0x01;
      000116 75 89 01         [24]  509 	mov	_TMOD,#0x01
                                    510 ;	timer.c:106: TH0=h_val;
      000119 85 0A 8C         [24]  511 	mov	_TH0,_h_val
                                    512 ;	timer.c:107: TL0=l_val;
      00011C 85 0B 8A         [24]  513 	mov	_TL0,_l_val
                                    514 ;	timer.c:108: EA=1;
      00011F D2 AF            [12]  515 	setb	_EA
                                    516 ;	timer.c:109: TR0=1;
      000121 D2 8C            [12]  517 	setb	_TR0
                                    518 ;	timer.c:110: ET0=1;
      000123 D2 A9            [12]  519 	setb	_ET0
      000125 22               [24]  520 	ret
                                    521 ;------------------------------------------------------------
                                    522 ;Allocation info for local variables in function 'keyWite'
                                    523 ;------------------------------------------------------------
                                    524 ;a                         Allocated to registers r6 r7 
                                    525 ;------------------------------------------------------------
                                    526 ;	timer.c:113: void keyWite()
                                    527 ;	-----------------------------------------
                                    528 ;	 function keyWite
                                    529 ;	-----------------------------------------
      000126                        530 _keyWite:
                                    531 ;	timer.c:116: for(a=0;a<5000;a++)
      000126 7E 88            [12]  532 	mov	r6,#0x88
      000128 7F 13            [12]  533 	mov	r7,#0x13
      00012A                        534 00104$:
      00012A EE               [12]  535 	mov	a,r6
      00012B 24 FF            [12]  536 	add	a,#0xFF
      00012D FC               [12]  537 	mov	r4,a
      00012E EF               [12]  538 	mov	a,r7
      00012F 34 FF            [12]  539 	addc	a,#0xFF
      000131 FD               [12]  540 	mov	r5,a
      000132 8C 06            [24]  541 	mov	ar6,r4
      000134 8D 07            [24]  542 	mov	ar7,r5
      000136 EC               [12]  543 	mov	a,r4
      000137 4D               [12]  544 	orl	a,r5
      000138 70 F0            [24]  545 	jnz	00104$
      00013A 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'timer_0'
                                    549 ;------------------------------------------------------------
                                    550 ;	timer.c:122: void timer_0() __interrupt 1
                                    551 ;	-----------------------------------------
                                    552 ;	 function timer_0
                                    553 ;	-----------------------------------------
      00013B                        554 _timer_0:
      00013B C0 E0            [24]  555 	push	acc
      00013D C0 D0            [24]  556 	push	psw
                                    557 ;	timer.c:124: timer_msel++;
      00013F 05 0C            [12]  558 	inc	_timer_msel
                                    559 ;	timer.c:125: if(timer_msel==MIN)
      000141 74 14            [12]  560 	mov	a,#0x14
      000143 B5 0C 2B         [24]  561 	cjne	a,_timer_msel,00108$
                                    562 ;	timer.c:127: out_led_5=!out_led_5;
      000146 B2 85            [12]  563 	cpl	_P0_5
                                    564 ;	timer.c:128: timer_msel=0;
      000148 75 0C 00         [24]  565 	mov	_timer_msel,#0x00
                                    566 ;	timer.c:129: timer_sece++;
      00014B 05 0D            [12]  567 	inc	_timer_sece
                                    568 ;	timer.c:130: if(timer_sece==MAX)
      00014D 74 3C            [12]  569 	mov	a,#0x3C
      00014F B5 0D 1F         [24]  570 	cjne	a,_timer_sece,00108$
                                    571 ;	timer.c:132: timer_sece=0;
      000152 75 0D 00         [24]  572 	mov	_timer_sece,#0x00
                                    573 ;	timer.c:133: timer_mine++;
      000155 05 0E            [12]  574 	inc	_timer_mine
                                    575 ;	timer.c:134: if(timer_mine==MAX)
      000157 74 3C            [12]  576 	mov	a,#0x3C
      000159 B5 0E 15         [24]  577 	cjne	a,_timer_mine,00108$
                                    578 ;	timer.c:136: timer_mine=0;
      00015C 75 0E 00         [24]  579 	mov	_timer_mine,#0x00
                                    580 ;	timer.c:137: timer_hour++;
      00015F 05 0F            [12]  581 	inc	_timer_hour
                                    582 ;	timer.c:138: if(timer_hour==timer_val)
      000161 E5 08            [12]  583 	mov	a,_timer_val
      000163 B5 0F 0B         [24]  584 	cjne	a,_timer_hour,00108$
                                    585 ;	timer.c:140: out_usb_1=!out_usb_1;
      000166 B2 B3            [12]  586 	cpl	_P3_3
                                    587 ;	timer.c:141: key_val=!key_val;
      000168 E5 09            [12]  588 	mov	a,_key_val
      00016A B4 01 00         [24]  589 	cjne	a,#0x01,00131$
      00016D                        590 00131$:
      00016D E4               [12]  591 	clr	a
      00016E 33               [12]  592 	rlc	a
      00016F F5 09            [12]  593 	mov	_key_val,a
      000171                        594 00108$:
                                    595 ;	timer.c:146: TH0=h_val;
      000171 85 0A 8C         [24]  596 	mov	_TH0,_h_val
                                    597 ;	timer.c:147: TL0=l_val;
      000174 85 0B 8A         [24]  598 	mov	_TL0,_l_val
      000177 D0 D0            [24]  599 	pop	psw
      000179 D0 E0            [24]  600 	pop	acc
      00017B 32               [24]  601 	reti
                                    602 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    603 ;	eliminated unneeded push/pop dpl
                                    604 ;	eliminated unneeded push/pop dph
                                    605 ;	eliminated unneeded push/pop b
                                    606 	.area CSEG    (CODE)
                                    607 	.area CONST   (CODE)
                                    608 	.area XINIT   (CODE)
                                    609 	.area CABS    (ABS,CODE)
