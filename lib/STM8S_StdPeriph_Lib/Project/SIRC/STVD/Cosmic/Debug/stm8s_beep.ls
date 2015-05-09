   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 54 void BEEP_DeInit(void)
  50                     ; 55 {
  52                     .text:	section	.text,new
  53  0000               _BEEP_DeInit:
  57                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  59  0000 351f50f3      	mov	20723,#31
  60                     ; 57 }
  63  0004 81            	ret	
 129                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 129                     ; 68 {
 130                     .text:	section	.text,new
 131  0000               _BEEP_Init:
 133  0000 88            	push	a
 134       00000000      OFST:	set	0
 137                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 139  0001 4d            	tnz	a
 140  0002 2716          	jreq	L41
 141  0004 a140          	cp	a,#64
 142  0006 2712          	jreq	L41
 143  0008 a180          	cp	a,#128
 144  000a 270e          	jreq	L41
 145  000c ae0046        	ldw	x,#70
 146  000f 89            	pushw	x
 147  0010 5f            	clrw	x
 148  0011 89            	pushw	x
 149  0012 ae000c        	ldw	x,#L15
 150  0015 cd0000        	call	_assert_failed
 152  0018 5b04          	addw	sp,#4
 153  001a               L41:
 154                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 156  001a c650f3        	ld	a,20723
 157  001d a41f          	and	a,#31
 158  001f a11f          	cp	a,#31
 159  0021 2610          	jrne	L35
 160                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 162  0023 c650f3        	ld	a,20723
 163  0026 a4e0          	and	a,#224
 164  0028 c750f3        	ld	20723,a
 165                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 167  002b c650f3        	ld	a,20723
 168  002e aa0b          	or	a,#11
 169  0030 c750f3        	ld	20723,a
 170  0033               L35:
 171                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 173  0033 c650f3        	ld	a,20723
 174  0036 a43f          	and	a,#63
 175  0038 c750f3        	ld	20723,a
 176                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 178  003b c650f3        	ld	a,20723
 179  003e 1a01          	or	a,(OFST+1,sp)
 180  0040 c750f3        	ld	20723,a
 181                     ; 82 }
 184  0043 84            	pop	a
 185  0044 81            	ret	
 240                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 240                     ; 92 {
 241                     .text:	section	.text,new
 242  0000               _BEEP_Cmd:
 246                     ; 93   if (NewState != DISABLE)
 248  0000 4d            	tnz	a
 249  0001 2705          	jreq	L301
 250                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 252  0003 721a50f3      	bset	20723,#5
 255  0007 81            	ret	
 256  0008               L301:
 257                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 259  0008 721b50f3      	bres	20723,#5
 260                     ; 103 }
 263  000c 81            	ret	
 317                     .const:	section	.text
 318  0000               L62:
 319  0000 0001adb0      	dc.l	110000
 320  0004               L03:
 321  0004 000249f1      	dc.l	150001
 322  0008               L63:
 323  0008 000003e8      	dc.l	1000
 324                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 324                     ; 119 {
 325                     .text:	section	.text,new
 326  0000               _BEEP_LSICalibrationConfig:
 328  0000 5206          	subw	sp,#6
 329       00000006      OFST:	set	6
 332                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 334  0002 96            	ldw	x,sp
 335  0003 1c0009        	addw	x,#OFST+3
 336  0006 cd0000        	call	c_ltor
 338  0009 ae0000        	ldw	x,#L62
 339  000c cd0000        	call	c_lcmp
 341  000f 250f          	jrult	L42
 342  0011 96            	ldw	x,sp
 343  0012 1c0009        	addw	x,#OFST+3
 344  0015 cd0000        	call	c_ltor
 346  0018 ae0004        	ldw	x,#L03
 347  001b cd0000        	call	c_lcmp
 349  001e 250e          	jrult	L23
 350  0020               L42:
 351  0020 ae007c        	ldw	x,#124
 352  0023 89            	pushw	x
 353  0024 5f            	clrw	x
 354  0025 89            	pushw	x
 355  0026 ae000c        	ldw	x,#L15
 356  0029 cd0000        	call	_assert_failed
 358  002c 5b04          	addw	sp,#4
 359  002e               L23:
 360                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 362  002e 96            	ldw	x,sp
 363  002f 1c0009        	addw	x,#OFST+3
 364  0032 cd0000        	call	c_ltor
 366  0035 ae0008        	ldw	x,#L63
 367  0038 cd0000        	call	c_ludv
 369  003b be02          	ldw	x,c_lreg+2
 370  003d 1f03          	ldw	(OFST-3,sp),x
 371                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 373  003f c650f3        	ld	a,20723
 374  0042 a4e0          	and	a,#224
 375  0044 c750f3        	ld	20723,a
 376                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 378  0047 54            	srlw	x
 379  0048 54            	srlw	x
 380  0049 54            	srlw	x
 381  004a 1f05          	ldw	(OFST-1,sp),x
 382                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 384  004c 58            	sllw	x
 385  004d 58            	sllw	x
 386  004e 58            	sllw	x
 387  004f 1f01          	ldw	(OFST-5,sp),x
 388  0051 1e03          	ldw	x,(OFST-3,sp)
 389  0053 72f001        	subw	x,(OFST-5,sp)
 390  0056 1605          	ldw	y,(OFST-1,sp)
 391  0058 9058          	sllw	y
 392  005a 905c          	incw	y
 393  005c cd0000        	call	c_imul
 395  005f 1605          	ldw	y,(OFST-1,sp)
 396  0061 9058          	sllw	y
 397  0063 9058          	sllw	y
 398  0065 bf00          	ldw	c_x,x
 399  0067 9058          	sllw	y
 400  0069 90b300        	cpw	y,c_x
 401  006c 7b06          	ld	a,(OFST+0,sp)
 402  006e 2504          	jrult	L531
 403                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 405  0070 a002          	sub	a,#2
 407  0072 2001          	jra	L731
 408  0074               L531:
 409                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 411  0074 4a            	dec	a
 412  0075               L731:
 413  0075 ca50f3        	or	a,20723
 414  0078 c750f3        	ld	20723,a
 415                     ; 142 }
 418  007b 5b06          	addw	sp,#6
 419  007d 81            	ret	
 432                     	xdef	_BEEP_LSICalibrationConfig
 433                     	xdef	_BEEP_Cmd
 434                     	xdef	_BEEP_Init
 435                     	xdef	_BEEP_DeInit
 436                     	xref	_assert_failed
 437                     	switch	.const
 438  000c               L15:
 439  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 440  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 441  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
 442  0042 5f626565702e  	dc.b	"_beep.c",0
 443                     	xref.b	c_lreg
 444                     	xref.b	c_x
 464                     	xref	c_imul
 465                     	xref	c_ludv
 466                     	xref	c_lcmp
 467                     	xref	c_ltor
 468                     	end
