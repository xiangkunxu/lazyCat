;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Wed Jan  3 19:59:35 2018
;--------------------------------------------------------
	.module timer
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer_0
	.globl _main
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
	.globl _timer_hour
	.globl _timer_mine
	.globl _timer_sece
	.globl _timer_msel
	.globl _l_val
	.globl _h_val
	.globl _key_val
	.globl _timer_val
	.globl _timerSet
	.globl _keyWite
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timer_val::
	.ds 1
_key_val::
	.ds 1
_h_val::
	.ds 1
_l_val::
	.ds 1
_timer_msel::
	.ds 1
_timer_sece::
	.ds 1
_timer_mine::
	.ds 1
_timer_hour::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
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
	reti
	.ds	7
	ljmp	_timer_0
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
;	timer.c:20: unsigned char timer_val=0;
	mov	_timer_val,#0x00
;	timer.c:21: unsigned char key_val=1;
	mov	_key_val,#0x01
;	timer.c:22: unsigned char h_val=(65535-50000)/256;
	mov	_h_val,#0x3C
;	timer.c:23: unsigned char l_val=(65535-50000)%256;
	mov	_l_val,#0xAF
;	timer.c:24: unsigned char timer_msel=0;
	mov	_timer_msel,#0x00
;	timer.c:25: unsigned char timer_sece=0;
	mov	_timer_sece,#0x00
;	timer.c:26: unsigned char timer_mine=0;
	mov	_timer_mine,#0x00
;	timer.c:27: unsigned char timer_hour=0;
	mov	_timer_hour,#0x00
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	timer.c:32: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	timer.c:34: while(1)
00125$:
;	timer.c:36: out_usb_1=1;
	setb	_P3_3
;	timer.c:37: out_led_5=1;
	setb	_P0_5
;	timer.c:38: while(1)
00119$:
;	timer.c:40: if(key_set==0)
	jb	_P1_0,00104$
;	timer.c:42: keyWite();
	lcall	_keyWite
;	timer.c:43: if(key_set==0)
	jb	_P1_0,00104$
;	timer.c:45: keyWite();
	lcall	_keyWite
;	timer.c:46: timer_val++;
	inc	_timer_val
00104$:
;	timer.c:49: if(timer_val>4)
	mov	a,_timer_val
	add	a,#0xff - 0x04
	jnc	00106$
;	timer.c:51: timer_val=0;
	mov	_timer_val,#0x00
00106$:
;	timer.c:53: switch(timer_val)
	mov	a,_timer_val
	add	a,#0xff - 0x04
	jc	00112$
	mov	a,_timer_val
	mov	b,#0x03
	mul	ab
	mov	dptr,#00166$
	jmp	@a+dptr
00166$:
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
	ljmp	00110$
	ljmp	00111$
;	timer.c:55: case 0:
00107$:
;	timer.c:56: out_led_1=1;
	setb	_P0_0
;	timer.c:57: out_led_2=1;
	setb	_P0_1
;	timer.c:58: out_led_3=1;
	setb	_P0_2
;	timer.c:59: out_led_4=1;
	setb	_P0_3
;	timer.c:60: break;
;	timer.c:61: case 1:
	sjmp	00112$
00108$:
;	timer.c:62: out_led_1=0;
	clr	_P0_0
;	timer.c:63: out_led_2=1;
	setb	_P0_1
;	timer.c:64: out_led_3=1;
	setb	_P0_2
;	timer.c:65: out_led_4=1;
	setb	_P0_3
;	timer.c:66: break;
;	timer.c:67: case 2:
	sjmp	00112$
00109$:
;	timer.c:68: out_led_1=1;
	setb	_P0_0
;	timer.c:69: out_led_2=0;
	clr	_P0_1
;	timer.c:70: out_led_3=1;
	setb	_P0_2
;	timer.c:71: out_led_4=1;
	setb	_P0_3
;	timer.c:72: break;
;	timer.c:73: case 3:
	sjmp	00112$
00110$:
;	timer.c:74: out_led_1=1;
	setb	_P0_0
;	timer.c:75: out_led_2=1;
	setb	_P0_1
;	timer.c:76: out_led_3=0;							
	clr	_P0_2
;	timer.c:77: out_led_4=1;
	setb	_P0_3
;	timer.c:78: break;
;	timer.c:79: case 4:
	sjmp	00112$
00111$:
;	timer.c:80: out_led_1=1;
	setb	_P0_0
;	timer.c:81: out_led_2=1;
	setb	_P0_1
;	timer.c:82: out_led_3=1;
	setb	_P0_2
;	timer.c:83: out_led_4=0;
	clr	_P0_3
;	timer.c:85: }
00112$:
;	timer.c:86: if(key_ok==0)
	jb	_P1_4,00119$
;	timer.c:88: keyWite();
	lcall	_keyWite
;	timer.c:89: if(key_ok==0 && timer_val!=0)
	jb	_P1_4,00120$
	mov	a,_timer_val
	jz	00120$
;	timer.c:91: keyWite();
	lcall	_keyWite
;	timer.c:92: key_val=!key_val;
	mov	a,_key_val
	cjne	a,#0x01,00170$
00170$:
	clr	a
	rlc	a
	mov	_key_val,a
;	timer.c:93: out_usb_1=!out_usb_1;
	cpl	_P3_3
;	timer.c:95: break;
00120$:
;	timer.c:98: timerSet();
	lcall	_timerSet
;	timer.c:99: while(key_val==0);
00121$:
	mov	a,_key_val
	jz	00171$
	ljmp	00125$
00171$:
	sjmp	00121$
;------------------------------------------------------------
;Allocation info for local variables in function 'timerSet'
;------------------------------------------------------------
;	timer.c:103: void timerSet()
;	-----------------------------------------
;	 function timerSet
;	-----------------------------------------
_timerSet:
;	timer.c:105: TMOD=0x01;
	mov	_TMOD,#0x01
;	timer.c:106: TH0=h_val;
	mov	_TH0,_h_val
;	timer.c:107: TL0=l_val;
	mov	_TL0,_l_val
;	timer.c:108: EA=1;
	setb	_EA
;	timer.c:109: TR0=1;
	setb	_TR0
;	timer.c:110: ET0=1;
	setb	_ET0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keyWite'
;------------------------------------------------------------
;a                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	timer.c:113: void keyWite()
;	-----------------------------------------
;	 function keyWite
;	-----------------------------------------
_keyWite:
;	timer.c:116: for(a=0;a<5000;a++)
	mov	r6,#0x88
	mov	r7,#0x13
00104$:
	mov	a,r6
	add	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_0'
;------------------------------------------------------------
;	timer.c:122: void timer_0() __interrupt 1
;	-----------------------------------------
;	 function timer_0
;	-----------------------------------------
_timer_0:
	push	acc
	push	psw
;	timer.c:124: timer_msel++;
	inc	_timer_msel
;	timer.c:125: if(timer_msel==MIN)
	mov	a,#0x14
	cjne	a,_timer_msel,00108$
;	timer.c:127: out_led_5=!out_led_5;
	cpl	_P0_5
;	timer.c:128: timer_msel=0;
	mov	_timer_msel,#0x00
;	timer.c:129: timer_sece++;
	inc	_timer_sece
;	timer.c:130: if(timer_sece==MAX)
	mov	a,#0x3C
	cjne	a,_timer_sece,00108$
;	timer.c:132: timer_sece=0;
	mov	_timer_sece,#0x00
;	timer.c:133: timer_mine++;
	inc	_timer_mine
;	timer.c:134: if(timer_mine==MAX)
	mov	a,#0x3C
	cjne	a,_timer_mine,00108$
;	timer.c:136: timer_mine=0;
	mov	_timer_mine,#0x00
;	timer.c:137: timer_hour++;
	inc	_timer_hour
;	timer.c:138: if(timer_hour==timer_val)
	mov	a,_timer_val
	cjne	a,_timer_hour,00108$
;	timer.c:140: out_usb_1=!out_usb_1;
	cpl	_P3_3
;	timer.c:141: key_val=!key_val;
	mov	a,_key_val
	cjne	a,#0x01,00131$
00131$:
	clr	a
	rlc	a
	mov	_key_val,a
00108$:
;	timer.c:146: TH0=h_val;
	mov	_TH0,_h_val
;	timer.c:147: TL0=l_val;
	mov	_TL0,_l_val
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
