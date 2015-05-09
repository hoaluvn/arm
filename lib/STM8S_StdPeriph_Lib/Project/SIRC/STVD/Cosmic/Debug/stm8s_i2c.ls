   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 67 void I2C_DeInit(void)
  50                     ; 68 {
  52                     .text:	section	.text,new
  53  0000               _I2C_DeInit:
  57                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  59  0000 725f5210      	clr	21008
  60                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  62  0004 725f5211      	clr	21009
  63                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  65  0008 725f5212      	clr	21010
  66                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  68  000c 725f5213      	clr	21011
  69                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  71  0010 725f5214      	clr	21012
  72                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  74  0014 725f521a      	clr	21018
  75                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  77  0018 725f521b      	clr	21019
  78                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  80  001c 725f521c      	clr	21020
  81                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  83  0020 3502521d      	mov	21021,#2
  84                     ; 78 }
  87  0024 81            	ret	
 267                     .const:	section	.text
 268  0000               L65:
 269  0000 00061a81      	dc.l	400001
 270  0004               L46:
 271  0004 000186a1      	dc.l	100001
 272  0008               L66:
 273  0008 000f4240      	dc.l	1000000
 274                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 274                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 274                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 274                     ; 99 {
 275                     .text:	section	.text,new
 276  0000               _I2C_Init:
 278  0000 5209          	subw	sp,#9
 279       00000009      OFST:	set	9
 282                     ; 100   uint16_t result = 0x0004;
 284                     ; 101   uint16_t tmpval = 0;
 286                     ; 102   uint8_t tmpccrh = 0;
 288  0002 0f07          	clr	(OFST-2,sp)
 289                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 291  0004 7b13          	ld	a,(OFST+10,sp)
 292  0006 270e          	jreq	L41
 293  0008 a101          	cp	a,#1
 294  000a 270a          	jreq	L41
 295  000c a102          	cp	a,#2
 296  000e 2706          	jreq	L41
 297  0010 ae0069        	ldw	x,#105
 298  0013 cd015b        	call	LC001
 299  0016               L41:
 300                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 302  0016 7b14          	ld	a,(OFST+11,sp)
 303  0018 270a          	jreq	L42
 304  001a a180          	cp	a,#128
 305  001c 2706          	jreq	L42
 306  001e ae006a        	ldw	x,#106
 307  0021 cd015b        	call	LC001
 308  0024               L42:
 309                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 311  0024 1e10          	ldw	x,(OFST+7,sp)
 312  0026 a30400        	cpw	x,#1024
 313  0029 2506          	jrult	L23
 314  002b ae006b        	ldw	x,#107
 315  002e cd015b        	call	LC001
 316  0031               L23:
 317                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 319  0031 7b12          	ld	a,(OFST+9,sp)
 320  0033 270a          	jreq	L24
 321  0035 a140          	cp	a,#64
 322  0037 2706          	jreq	L24
 323  0039 ae006c        	ldw	x,#108
 324  003c cd015b        	call	LC001
 325  003f               L24:
 326                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 328  003f 7b15          	ld	a,(OFST+12,sp)
 329  0041 2704          	jreq	L64
 330  0043 a111          	cp	a,#17
 331  0045 2506          	jrult	L05
 332  0047               L64:
 333  0047 ae006d        	ldw	x,#109
 334  004a cd015b        	call	LC001
 335  004d               L05:
 336                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 338  004d 96            	ldw	x,sp
 339  004e 1c000c        	addw	x,#OFST+3
 340  0051 cd0000        	call	c_lzmp
 342  0054 270f          	jreq	L45
 343  0056 96            	ldw	x,sp
 344  0057 1c000c        	addw	x,#OFST+3
 345  005a cd0000        	call	c_ltor
 347  005d ae0000        	ldw	x,#L65
 348  0060 cd0000        	call	c_lcmp
 350  0063 2506          	jrult	L06
 351  0065               L45:
 352  0065 ae006e        	ldw	x,#110
 353  0068 cd015b        	call	LC001
 354  006b               L06:
 355                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 357  006b c65212        	ld	a,21010
 358  006e a4c0          	and	a,#192
 359  0070 c75212        	ld	21010,a
 360                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 362  0073 c65212        	ld	a,21010
 363  0076 1a15          	or	a,(OFST+12,sp)
 364  0078 c75212        	ld	21010,a
 365                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 367  007b 72115210      	bres	21008,#0
 368                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 370  007f c6521c        	ld	a,21020
 371  0082 a430          	and	a,#48
 372  0084 c7521c        	ld	21020,a
 373                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 375  0087 725f521b      	clr	21019
 376                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 378  008b 96            	ldw	x,sp
 379  008c 1c000c        	addw	x,#OFST+3
 380  008f cd0000        	call	c_ltor
 382  0092 ae0004        	ldw	x,#L46
 383  0095 cd0000        	call	c_lcmp
 385  0098 2560          	jrult	L331
 386                     ; 131     tmpccrh = I2C_CCRH_FS;
 388  009a a680          	ld	a,#128
 389  009c 6b07          	ld	(OFST-2,sp),a
 390                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 392  009e 96            	ldw	x,sp
 393  009f 0d12          	tnz	(OFST+9,sp)
 394  00a1 261d          	jrne	L531
 395                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 397  00a3 1c000c        	addw	x,#OFST+3
 398  00a6 cd0000        	call	c_ltor
 400  00a9 a603          	ld	a,#3
 401  00ab cd0000        	call	c_smul
 403  00ae 96            	ldw	x,sp
 404  00af 5c            	incw	x
 405  00b0 cd0000        	call	c_rtol
 407  00b3 7b15          	ld	a,(OFST+12,sp)
 408  00b5 cd0167        	call	LC002
 410  00b8 96            	ldw	x,sp
 411  00b9 cd0175        	call	LC003
 412  00bc 1f08          	ldw	(OFST-1,sp),x
 414  00be 2021          	jra	L731
 415  00c0               L531:
 416                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 418  00c0 1c000c        	addw	x,#OFST+3
 419  00c3 cd0000        	call	c_ltor
 421  00c6 a619          	ld	a,#25
 422  00c8 cd0000        	call	c_smul
 424  00cb 96            	ldw	x,sp
 425  00cc 5c            	incw	x
 426  00cd cd0000        	call	c_rtol
 428  00d0 7b15          	ld	a,(OFST+12,sp)
 429  00d2 cd0167        	call	LC002
 431  00d5 96            	ldw	x,sp
 432  00d6 cd0175        	call	LC003
 433  00d9 1f08          	ldw	(OFST-1,sp),x
 434                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 436  00db 7b07          	ld	a,(OFST-2,sp)
 437  00dd aa40          	or	a,#64
 438  00df 6b07          	ld	(OFST-2,sp),a
 439  00e1               L731:
 440                     ; 147     if (result < (uint16_t)0x01)
 442  00e1 1e08          	ldw	x,(OFST-1,sp)
 443  00e3 2603          	jrne	L141
 444                     ; 150       result = (uint16_t)0x0001;
 446  00e5 5c            	incw	x
 447  00e6 1f08          	ldw	(OFST-1,sp),x
 448  00e8               L141:
 449                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 451  00e8 7b15          	ld	a,(OFST+12,sp)
 452  00ea 97            	ld	xl,a
 453  00eb a603          	ld	a,#3
 454  00ed 42            	mul	x,a
 455  00ee a60a          	ld	a,#10
 456  00f0 cd0000        	call	c_sdivx
 458  00f3 5c            	incw	x
 459  00f4 1f05          	ldw	(OFST-4,sp),x
 460                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 462  00f6 7b06          	ld	a,(OFST-3,sp)
 464  00f8 2028          	jra	L341
 465  00fa               L331:
 466                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 468  00fa 96            	ldw	x,sp
 469  00fb 1c000c        	addw	x,#OFST+3
 470  00fe cd0000        	call	c_ltor
 472  0101 3803          	sll	c_lreg+3
 473  0103 3902          	rlc	c_lreg+2
 474  0105 3901          	rlc	c_lreg+1
 475  0107 96            	ldw	x,sp
 476  0108 3900          	rlc	c_lreg
 477  010a 5c            	incw	x
 478  010b cd0000        	call	c_rtol
 480  010e 7b15          	ld	a,(OFST+12,sp)
 481  0110 ad55          	call	LC002
 483  0112 96            	ldw	x,sp
 484  0113 ad60          	call	LC003
 485                     ; 167     if (result < (uint16_t)0x0004)
 487  0115 a30004        	cpw	x,#4
 488  0118 2403          	jruge	L541
 489                     ; 170       result = (uint16_t)0x0004;
 491  011a ae0004        	ldw	x,#4
 492  011d               L541:
 493  011d 1f08          	ldw	(OFST-1,sp),x
 494                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 496  011f 7b15          	ld	a,(OFST+12,sp)
 497  0121 4c            	inc	a
 498  0122               L341:
 499  0122 c7521d        	ld	21021,a
 500                     ; 181   I2C->CCRL = (uint8_t)result;
 502  0125 7b09          	ld	a,(OFST+0,sp)
 503  0127 c7521b        	ld	21019,a
 504                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 506  012a 7b08          	ld	a,(OFST-1,sp)
 507  012c a40f          	and	a,#15
 508  012e 1a07          	or	a,(OFST-2,sp)
 509  0130 c7521c        	ld	21020,a
 510                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 512  0133 72105210      	bset	21008,#0
 513                     ; 188   I2C_AcknowledgeConfig(Ack);
 515  0137 7b13          	ld	a,(OFST+10,sp)
 516  0139 cd0000        	call	_I2C_AcknowledgeConfig
 518                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 520  013c 7b11          	ld	a,(OFST+8,sp)
 521  013e c75213        	ld	21011,a
 522                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 522                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 524  0141 7b10          	ld	a,(OFST+7,sp)
 525  0143 a403          	and	a,#3
 526  0145 97            	ld	xl,a
 527  0146 4f            	clr	a
 528  0147 02            	rlwa	x,a
 529  0148 4f            	clr	a
 530  0149 01            	rrwa	x,a
 531  014a 48            	sll	a
 532  014b 59            	rlcw	x
 533  014c 9f            	ld	a,xl
 534  014d 6b04          	ld	(OFST-5,sp),a
 535  014f 7b14          	ld	a,(OFST+11,sp)
 536  0151 aa40          	or	a,#64
 537  0153 1a04          	or	a,(OFST-5,sp)
 538  0155 c75214        	ld	21012,a
 539                     ; 194 }
 542  0158 5b09          	addw	sp,#9
 543  015a 81            	ret	
 544  015b               LC001:
 545  015b 89            	pushw	x
 546  015c 5f            	clrw	x
 547  015d 89            	pushw	x
 548  015e ae000c        	ldw	x,#L131
 549  0161 cd0000        	call	_assert_failed
 551  0164 5b04          	addw	sp,#4
 552  0166 81            	ret	
 553  0167               LC002:
 554  0167 b703          	ld	c_lreg+3,a
 555  0169 3f02          	clr	c_lreg+2
 556  016b 3f01          	clr	c_lreg+1
 557  016d 3f00          	clr	c_lreg
 558  016f ae0008        	ldw	x,#L66
 559  0172 cc0000        	jp	c_lmul
 560  0175               LC003:
 561  0175 5c            	incw	x
 562  0176 cd0000        	call	c_ludv
 564  0179 be02          	ldw	x,c_lreg+2
 565  017b 81            	ret	
 621                     ; 202 void I2C_Cmd(FunctionalState NewState)
 621                     ; 203 {
 622                     .text:	section	.text,new
 623  0000               _I2C_Cmd:
 625  0000 88            	push	a
 626       00000000      OFST:	set	0
 629                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 631  0001 4d            	tnz	a
 632  0002 2711          	jreq	L001
 633  0004 4a            	dec	a
 634  0005 270e          	jreq	L001
 635  0007 ae00cd        	ldw	x,#205
 636  000a 89            	pushw	x
 637  000b 5f            	clrw	x
 638  000c 89            	pushw	x
 639  000d ae000c        	ldw	x,#L131
 640  0010 cd0000        	call	_assert_failed
 642  0013 5b04          	addw	sp,#4
 643  0015               L001:
 644                     ; 207   if (NewState != DISABLE)
 646  0015 7b01          	ld	a,(OFST+1,sp)
 647  0017 2706          	jreq	L571
 648                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 650  0019 72105210      	bset	21008,#0
 652  001d 2004          	jra	L771
 653  001f               L571:
 654                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 656  001f 72115210      	bres	21008,#0
 657  0023               L771:
 658                     ; 217 }
 661  0023 84            	pop	a
 662  0024 81            	ret	
 698                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 698                     ; 226 {
 699                     .text:	section	.text,new
 700  0000               _I2C_GeneralCallCmd:
 702  0000 88            	push	a
 703       00000000      OFST:	set	0
 706                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 708  0001 4d            	tnz	a
 709  0002 2711          	jreq	L211
 710  0004 4a            	dec	a
 711  0005 270e          	jreq	L211
 712  0007 ae00e4        	ldw	x,#228
 713  000a 89            	pushw	x
 714  000b 5f            	clrw	x
 715  000c 89            	pushw	x
 716  000d ae000c        	ldw	x,#L131
 717  0010 cd0000        	call	_assert_failed
 719  0013 5b04          	addw	sp,#4
 720  0015               L211:
 721                     ; 230   if (NewState != DISABLE)
 723  0015 7b01          	ld	a,(OFST+1,sp)
 724  0017 2706          	jreq	L712
 725                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 727  0019 721c5210      	bset	21008,#6
 729  001d 2004          	jra	L122
 730  001f               L712:
 731                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 733  001f 721d5210      	bres	21008,#6
 734  0023               L122:
 735                     ; 240 }
 738  0023 84            	pop	a
 739  0024 81            	ret	
 775                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 775                     ; 251 {
 776                     .text:	section	.text,new
 777  0000               _I2C_GenerateSTART:
 779  0000 88            	push	a
 780       00000000      OFST:	set	0
 783                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 785  0001 4d            	tnz	a
 786  0002 2711          	jreq	L421
 787  0004 4a            	dec	a
 788  0005 270e          	jreq	L421
 789  0007 ae00fd        	ldw	x,#253
 790  000a 89            	pushw	x
 791  000b 5f            	clrw	x
 792  000c 89            	pushw	x
 793  000d ae000c        	ldw	x,#L131
 794  0010 cd0000        	call	_assert_failed
 796  0013 5b04          	addw	sp,#4
 797  0015               L421:
 798                     ; 255   if (NewState != DISABLE)
 800  0015 7b01          	ld	a,(OFST+1,sp)
 801  0017 2706          	jreq	L142
 802                     ; 258     I2C->CR2 |= I2C_CR2_START;
 804  0019 72105211      	bset	21009,#0
 806  001d 2004          	jra	L342
 807  001f               L142:
 808                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 810  001f 72115211      	bres	21009,#0
 811  0023               L342:
 812                     ; 265 }
 815  0023 84            	pop	a
 816  0024 81            	ret	
 852                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 852                     ; 274 {
 853                     .text:	section	.text,new
 854  0000               _I2C_GenerateSTOP:
 856  0000 88            	push	a
 857       00000000      OFST:	set	0
 860                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 862  0001 4d            	tnz	a
 863  0002 2711          	jreq	L631
 864  0004 4a            	dec	a
 865  0005 270e          	jreq	L631
 866  0007 ae0114        	ldw	x,#276
 867  000a 89            	pushw	x
 868  000b 5f            	clrw	x
 869  000c 89            	pushw	x
 870  000d ae000c        	ldw	x,#L131
 871  0010 cd0000        	call	_assert_failed
 873  0013 5b04          	addw	sp,#4
 874  0015               L631:
 875                     ; 278   if (NewState != DISABLE)
 877  0015 7b01          	ld	a,(OFST+1,sp)
 878  0017 2706          	jreq	L362
 879                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 881  0019 72125211      	bset	21009,#1
 883  001d 2004          	jra	L562
 884  001f               L362:
 885                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 887  001f 72135211      	bres	21009,#1
 888  0023               L562:
 889                     ; 288 }
 892  0023 84            	pop	a
 893  0024 81            	ret	
 930                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
 930                     ; 297 {
 931                     .text:	section	.text,new
 932  0000               _I2C_SoftwareResetCmd:
 934  0000 88            	push	a
 935       00000000      OFST:	set	0
 938                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 940  0001 4d            	tnz	a
 941  0002 2711          	jreq	L051
 942  0004 4a            	dec	a
 943  0005 270e          	jreq	L051
 944  0007 ae012b        	ldw	x,#299
 945  000a 89            	pushw	x
 946  000b 5f            	clrw	x
 947  000c 89            	pushw	x
 948  000d ae000c        	ldw	x,#L131
 949  0010 cd0000        	call	_assert_failed
 951  0013 5b04          	addw	sp,#4
 952  0015               L051:
 953                     ; 301   if (NewState != DISABLE)
 955  0015 7b01          	ld	a,(OFST+1,sp)
 956  0017 2706          	jreq	L503
 957                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
 959  0019 721e5211      	bset	21009,#7
 961  001d 2004          	jra	L703
 962  001f               L503:
 963                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 965  001f 721f5211      	bres	21009,#7
 966  0023               L703:
 967                     ; 311 }
 970  0023 84            	pop	a
 971  0024 81            	ret	
1008                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1008                     ; 321 {
1009                     .text:	section	.text,new
1010  0000               _I2C_StretchClockCmd:
1012  0000 88            	push	a
1013       00000000      OFST:	set	0
1016                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1018  0001 4d            	tnz	a
1019  0002 2711          	jreq	L261
1020  0004 4a            	dec	a
1021  0005 270e          	jreq	L261
1022  0007 ae0143        	ldw	x,#323
1023  000a 89            	pushw	x
1024  000b 5f            	clrw	x
1025  000c 89            	pushw	x
1026  000d ae000c        	ldw	x,#L131
1027  0010 cd0000        	call	_assert_failed
1029  0013 5b04          	addw	sp,#4
1030  0015               L261:
1031                     ; 325   if (NewState != DISABLE)
1033  0015 7b01          	ld	a,(OFST+1,sp)
1034  0017 2706          	jreq	L723
1035                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1037  0019 721f5210      	bres	21008,#7
1039  001d 2004          	jra	L133
1040  001f               L723:
1041                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1043  001f 721e5210      	bset	21008,#7
1044  0023               L133:
1045                     ; 336 }
1048  0023 84            	pop	a
1049  0024 81            	ret	
1086                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1086                     ; 346 {
1087                     .text:	section	.text,new
1088  0000               _I2C_AcknowledgeConfig:
1090  0000 88            	push	a
1091       00000000      OFST:	set	0
1094                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1096  0001 4d            	tnz	a
1097  0002 2716          	jreq	L471
1098  0004 a101          	cp	a,#1
1099  0006 2712          	jreq	L471
1100  0008 a102          	cp	a,#2
1101  000a 270e          	jreq	L471
1102  000c ae015c        	ldw	x,#348
1103  000f 89            	pushw	x
1104  0010 5f            	clrw	x
1105  0011 89            	pushw	x
1106  0012 ae000c        	ldw	x,#L131
1107  0015 cd0000        	call	_assert_failed
1109  0018 5b04          	addw	sp,#4
1110  001a               L471:
1111                     ; 350   if (Ack == I2C_ACK_NONE)
1113  001a 7b01          	ld	a,(OFST+1,sp)
1114  001c 2606          	jrne	L153
1115                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1117  001e 72155211      	bres	21009,#2
1119  0022 2011          	jra	L353
1120  0024               L153:
1121                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1123  0024 72145211      	bset	21009,#2
1124                     ; 360     if (Ack == I2C_ACK_CURR)
1126  0028 4a            	dec	a
1127  0029 2606          	jrne	L553
1128                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1130  002b 72175211      	bres	21009,#3
1132  002f 2004          	jra	L353
1133  0031               L553:
1134                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1136  0031 72165211      	bset	21009,#3
1137  0035               L353:
1138                     ; 371 }
1141  0035 84            	pop	a
1142  0036 81            	ret	
1215                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1215                     ; 382 {
1216                     .text:	section	.text,new
1217  0000               _I2C_ITConfig:
1219  0000 89            	pushw	x
1220       00000000      OFST:	set	0
1223                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1225  0001 9e            	ld	a,xh
1226  0002 4a            	dec	a
1227  0003 2723          	jreq	L602
1228  0005 9e            	ld	a,xh
1229  0006 a102          	cp	a,#2
1230  0008 271e          	jreq	L602
1231  000a 9e            	ld	a,xh
1232  000b a104          	cp	a,#4
1233  000d 2719          	jreq	L602
1234  000f 9e            	ld	a,xh
1235  0010 a103          	cp	a,#3
1236  0012 2714          	jreq	L602
1237  0014 9e            	ld	a,xh
1238  0015 a105          	cp	a,#5
1239  0017 270f          	jreq	L602
1240  0019 9e            	ld	a,xh
1241  001a a106          	cp	a,#6
1242  001c 270a          	jreq	L602
1243  001e 9e            	ld	a,xh
1244  001f a107          	cp	a,#7
1245  0021 2705          	jreq	L602
1246  0023 ae0180        	ldw	x,#384
1247  0026 ad22          	call	LC004
1248  0028               L602:
1249                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1251  0028 7b02          	ld	a,(OFST+2,sp)
1252  002a 2708          	jreq	L612
1253  002c 4a            	dec	a
1254  002d 2705          	jreq	L612
1255  002f ae0181        	ldw	x,#385
1256  0032 ad16          	call	LC004
1257  0034               L612:
1258                     ; 387   if (NewState != DISABLE)
1260  0034 7b02          	ld	a,(OFST+2,sp)
1261  0036 2707          	jreq	L514
1262                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1264  0038 c6521a        	ld	a,21018
1265  003b 1a01          	or	a,(OFST+1,sp)
1267  003d 2006          	jra	L714
1268  003f               L514:
1269                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1271  003f 7b01          	ld	a,(OFST+1,sp)
1272  0041 43            	cpl	a
1273  0042 c4521a        	and	a,21018
1274  0045               L714:
1275  0045 c7521a        	ld	21018,a
1276                     ; 397 }
1279  0048 85            	popw	x
1280  0049 81            	ret	
1281  004a               LC004:
1282  004a 89            	pushw	x
1283  004b 5f            	clrw	x
1284  004c 89            	pushw	x
1285  004d ae000c        	ldw	x,#L131
1286  0050 cd0000        	call	_assert_failed
1288  0053 5b04          	addw	sp,#4
1289  0055 81            	ret	
1326                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1326                     ; 406 {
1327                     .text:	section	.text,new
1328  0000               _I2C_FastModeDutyCycleConfig:
1330  0000 88            	push	a
1331       00000000      OFST:	set	0
1334                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1336  0001 4d            	tnz	a
1337  0002 2712          	jreq	L032
1338  0004 a140          	cp	a,#64
1339  0006 270e          	jreq	L032
1340  0008 ae0198        	ldw	x,#408
1341  000b 89            	pushw	x
1342  000c 5f            	clrw	x
1343  000d 89            	pushw	x
1344  000e ae000c        	ldw	x,#L131
1345  0011 cd0000        	call	_assert_failed
1347  0014 5b04          	addw	sp,#4
1348  0016               L032:
1349                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1351  0016 7b01          	ld	a,(OFST+1,sp)
1352  0018 a140          	cp	a,#64
1353  001a 2606          	jrne	L734
1354                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1356  001c 721c521c      	bset	21020,#6
1358  0020 2004          	jra	L144
1359  0022               L734:
1360                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1362  0022 721d521c      	bres	21020,#6
1363  0026               L144:
1364                     ; 420 }
1367  0026 84            	pop	a
1368  0027 81            	ret	
1391                     ; 427 uint8_t I2C_ReceiveData(void)
1391                     ; 428 {
1392                     .text:	section	.text,new
1393  0000               _I2C_ReceiveData:
1397                     ; 430   return ((uint8_t)I2C->DR);
1399  0000 c65216        	ld	a,21014
1402  0003 81            	ret	
1468                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1468                     ; 441 {
1469                     .text:	section	.text,new
1470  0000               _I2C_Send7bitAddress:
1472  0000 89            	pushw	x
1473       00000000      OFST:	set	0
1476                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1478  0001 9e            	ld	a,xh
1479  0002 a501          	bcp	a,#1
1480  0004 2705          	jreq	L242
1481  0006 ae01bb        	ldw	x,#443
1482  0009 ad19          	call	LC005
1483  000b               L242:
1484                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1486  000b 7b02          	ld	a,(OFST+2,sp)
1487  000d 2708          	jreq	L252
1488  000f 4a            	dec	a
1489  0010 2705          	jreq	L252
1490  0012 ae01bc        	ldw	x,#444
1491  0015 ad0d          	call	LC005
1492  0017               L252:
1493                     ; 447   Address &= (uint8_t)0xFE;
1495  0017 7b01          	ld	a,(OFST+1,sp)
1496  0019 a4fe          	and	a,#254
1497  001b 6b01          	ld	(OFST+1,sp),a
1498                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1500  001d 1a02          	or	a,(OFST+2,sp)
1501  001f c75216        	ld	21014,a
1502                     ; 451 }
1505  0022 85            	popw	x
1506  0023 81            	ret	
1507  0024               LC005:
1508  0024 89            	pushw	x
1509  0025 5f            	clrw	x
1510  0026 89            	pushw	x
1511  0027 ae000c        	ldw	x,#L131
1512  002a cd0000        	call	_assert_failed
1514  002d 5b04          	addw	sp,#4
1515  002f 81            	ret	
1549                     ; 458 void I2C_SendData(uint8_t Data)
1549                     ; 459 {
1550                     .text:	section	.text,new
1551  0000               _I2C_SendData:
1555                     ; 461   I2C->DR = Data;
1557  0000 c75216        	ld	21014,a
1558                     ; 462 }
1561  0003 81            	ret	
1786                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1786                     ; 579 {
1787                     .text:	section	.text,new
1788  0000               _I2C_CheckEvent:
1790  0000 89            	pushw	x
1791  0001 5206          	subw	sp,#6
1792       00000006      OFST:	set	6
1795                     ; 580   __IO uint16_t lastevent = 0x00;
1797  0003 5f            	clrw	x
1798  0004 1f04          	ldw	(OFST-2,sp),x
1799                     ; 581   uint8_t flag1 = 0x00 ;
1801                     ; 582   uint8_t flag2 = 0x00;
1803                     ; 583   ErrorStatus status = ERROR;
1805                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1807  0006 1e07          	ldw	x,(OFST+1,sp)
1808  0008 a30682        	cpw	x,#1666
1809  000b 275b          	jreq	L662
1810  000d a30202        	cpw	x,#514
1811  0010 2756          	jreq	L662
1812  0012 a31200        	cpw	x,#4608
1813  0015 2751          	jreq	L662
1814  0017 a30240        	cpw	x,#576
1815  001a 274c          	jreq	L662
1816  001c a30350        	cpw	x,#848
1817  001f 2747          	jreq	L662
1818  0021 a30684        	cpw	x,#1668
1819  0024 2742          	jreq	L662
1820  0026 a30794        	cpw	x,#1940
1821  0029 273d          	jreq	L662
1822  002b a30004        	cpw	x,#4
1823  002e 2738          	jreq	L662
1824  0030 a30010        	cpw	x,#16
1825  0033 2733          	jreq	L662
1826  0035 a30301        	cpw	x,#769
1827  0038 272e          	jreq	L662
1828  003a a30782        	cpw	x,#1922
1829  003d 2729          	jreq	L662
1830  003f a30302        	cpw	x,#770
1831  0042 2724          	jreq	L662
1832  0044 a30340        	cpw	x,#832
1833  0047 271f          	jreq	L662
1834  0049 a30784        	cpw	x,#1924
1835  004c 271a          	jreq	L662
1836  004e a30780        	cpw	x,#1920
1837  0051 2715          	jreq	L662
1838  0053 a30308        	cpw	x,#776
1839  0056 2710          	jreq	L662
1840  0058 ae024a        	ldw	x,#586
1841  005b 89            	pushw	x
1842  005c 5f            	clrw	x
1843  005d 89            	pushw	x
1844  005e ae000c        	ldw	x,#L131
1845  0061 cd0000        	call	_assert_failed
1847  0064 5b04          	addw	sp,#4
1848  0066 1e07          	ldw	x,(OFST+1,sp)
1849  0068               L662:
1850                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1852  0068 a30004        	cpw	x,#4
1853  006b 2609          	jrne	L336
1854                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1856  006d c65218        	ld	a,21016
1857  0070 a404          	and	a,#4
1858  0072 5f            	clrw	x
1859  0073 97            	ld	xl,a
1861  0074 201a          	jra	L536
1862  0076               L336:
1863                     ; 594     flag1 = I2C->SR1;
1865  0076 c65217        	ld	a,21015
1866  0079 6b03          	ld	(OFST-3,sp),a
1867                     ; 595     flag2 = I2C->SR3;
1869  007b c65219        	ld	a,21017
1870  007e 6b06          	ld	(OFST+0,sp),a
1871                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1873  0080 5f            	clrw	x
1874  0081 7b03          	ld	a,(OFST-3,sp)
1875  0083 97            	ld	xl,a
1876  0084 1f01          	ldw	(OFST-5,sp),x
1877  0086 5f            	clrw	x
1878  0087 7b06          	ld	a,(OFST+0,sp)
1879  0089 97            	ld	xl,a
1880  008a 7b02          	ld	a,(OFST-4,sp)
1881  008c 01            	rrwa	x,a
1882  008d 1a01          	or	a,(OFST-5,sp)
1883  008f 01            	rrwa	x,a
1884  0090               L536:
1885  0090 1f04          	ldw	(OFST-2,sp),x
1886                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1888  0092 1e04          	ldw	x,(OFST-2,sp)
1889  0094 01            	rrwa	x,a
1890  0095 1408          	and	a,(OFST+2,sp)
1891  0097 01            	rrwa	x,a
1892  0098 1407          	and	a,(OFST+1,sp)
1893  009a 01            	rrwa	x,a
1894  009b 1307          	cpw	x,(OFST+1,sp)
1895  009d 2604          	jrne	L736
1896                     ; 602     status = SUCCESS;
1898  009f a601          	ld	a,#1
1900  00a1 2001          	jra	L146
1901  00a3               L736:
1902                     ; 607     status = ERROR;
1904  00a3 4f            	clr	a
1905  00a4               L146:
1906                     ; 611   return status;
1910  00a4 5b08          	addw	sp,#8
1911  00a6 81            	ret	
1964                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
1964                     ; 629 {
1965                     .text:	section	.text,new
1966  0000               _I2C_GetLastEvent:
1968  0000 5206          	subw	sp,#6
1969       00000006      OFST:	set	6
1972                     ; 630   __IO uint16_t lastevent = 0;
1974  0002 5f            	clrw	x
1975  0003 1f05          	ldw	(OFST-1,sp),x
1976                     ; 631   uint16_t flag1 = 0;
1978                     ; 632   uint16_t flag2 = 0;
1980                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1982  0005 7205521805    	btjf	21016,#2,L176
1983                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1985  000a ae0004        	ldw	x,#4
1987  000d 2013          	jra	L376
1988  000f               L176:
1989                     ; 641     flag1 = I2C->SR1;
1991  000f c65217        	ld	a,21015
1992  0012 97            	ld	xl,a
1993  0013 1f01          	ldw	(OFST-5,sp),x
1994                     ; 642     flag2 = I2C->SR3;
1996  0015 5f            	clrw	x
1997  0016 c65219        	ld	a,21017
1998  0019 97            	ld	xl,a
1999  001a 1f03          	ldw	(OFST-3,sp),x
2000                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2002  001c 7b02          	ld	a,(OFST-4,sp)
2003  001e 01            	rrwa	x,a
2004  001f 1a01          	or	a,(OFST-5,sp)
2005  0021 01            	rrwa	x,a
2006  0022               L376:
2007  0022 1f05          	ldw	(OFST-1,sp),x
2008                     ; 648   return (I2C_Event_TypeDef)lastevent;
2010  0024 1e05          	ldw	x,(OFST-1,sp)
2013  0026 5b06          	addw	sp,#6
2014  0028 81            	ret	
2230                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2230                     ; 680 {
2231                     .text:	section	.text,new
2232  0000               _I2C_GetFlagStatus:
2234  0000 89            	pushw	x
2235  0001 89            	pushw	x
2236       00000002      OFST:	set	2
2239                     ; 681   uint8_t tempreg = 0;
2241  0002 0f02          	clr	(OFST+0,sp)
2242                     ; 682   uint8_t regindex = 0;
2244                     ; 683   FlagStatus bitstatus = RESET;
2246                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2248  0004 a30180        	cpw	x,#384
2249  0007 2759          	jreq	L203
2250  0009 a30140        	cpw	x,#320
2251  000c 2754          	jreq	L203
2252  000e a30110        	cpw	x,#272
2253  0011 274f          	jreq	L203
2254  0013 a30108        	cpw	x,#264
2255  0016 274a          	jreq	L203
2256  0018 a30104        	cpw	x,#260
2257  001b 2745          	jreq	L203
2258  001d a30102        	cpw	x,#258
2259  0020 2740          	jreq	L203
2260  0022 a30101        	cpw	x,#257
2261  0025 273b          	jreq	L203
2262  0027 a30220        	cpw	x,#544
2263  002a 2736          	jreq	L203
2264  002c a30208        	cpw	x,#520
2265  002f 2731          	jreq	L203
2266  0031 a30204        	cpw	x,#516
2267  0034 272c          	jreq	L203
2268  0036 a30202        	cpw	x,#514
2269  0039 2727          	jreq	L203
2270  003b a30201        	cpw	x,#513
2271  003e 2722          	jreq	L203
2272  0040 a30310        	cpw	x,#784
2273  0043 271d          	jreq	L203
2274  0045 a30304        	cpw	x,#772
2275  0048 2718          	jreq	L203
2276  004a a30302        	cpw	x,#770
2277  004d 2713          	jreq	L203
2278  004f a30301        	cpw	x,#769
2279  0052 270e          	jreq	L203
2280  0054 ae02ae        	ldw	x,#686
2281  0057 89            	pushw	x
2282  0058 5f            	clrw	x
2283  0059 89            	pushw	x
2284  005a ae000c        	ldw	x,#L131
2285  005d cd0000        	call	_assert_failed
2287  0060 5b04          	addw	sp,#4
2288  0062               L203:
2289                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2291  0062 7b03          	ld	a,(OFST+1,sp)
2292  0064 6b01          	ld	(OFST-1,sp),a
2293                     ; 691   switch (regindex)
2296                     ; 708     default:
2296                     ; 709       break;
2297  0066 4a            	dec	a
2298  0067 2708          	jreq	L576
2299  0069 4a            	dec	a
2300  006a 270a          	jreq	L776
2301  006c 4a            	dec	a
2302  006d 270c          	jreq	L107
2303  006f 200f          	jra	L5101
2304  0071               L576:
2305                     ; 694     case 0x01:
2305                     ; 695       tempreg = (uint8_t)I2C->SR1;
2307  0071 c65217        	ld	a,21015
2308                     ; 696       break;
2310  0074 2008          	jp	LC006
2311  0076               L776:
2312                     ; 699     case 0x02:
2312                     ; 700       tempreg = (uint8_t)I2C->SR2;
2314  0076 c65218        	ld	a,21016
2315                     ; 701       break;
2317  0079 2003          	jp	LC006
2318  007b               L107:
2319                     ; 704     case 0x03:
2319                     ; 705       tempreg = (uint8_t)I2C->SR3;
2321  007b c65219        	ld	a,21017
2322  007e               LC006:
2323  007e 6b02          	ld	(OFST+0,sp),a
2324                     ; 706       break;
2326                     ; 708     default:
2326                     ; 709       break;
2328  0080               L5101:
2329                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2331  0080 7b04          	ld	a,(OFST+2,sp)
2332  0082 1502          	bcp	a,(OFST+0,sp)
2333  0084 2704          	jreq	L7101
2334                     ; 716     bitstatus = SET;
2336  0086 a601          	ld	a,#1
2338  0088 2001          	jra	L1201
2339  008a               L7101:
2340                     ; 721     bitstatus = RESET;
2342  008a 4f            	clr	a
2343  008b               L1201:
2344                     ; 724   return bitstatus;
2348  008b 5b04          	addw	sp,#4
2349  008d 81            	ret	
2394                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2394                     ; 760 {
2395                     .text:	section	.text,new
2396  0000               _I2C_ClearFlag:
2398  0000 89            	pushw	x
2399  0001 89            	pushw	x
2400       00000002      OFST:	set	2
2403                     ; 761   uint16_t flagpos = 0;
2405                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2407  0002 01            	rrwa	x,a
2408  0003 9f            	ld	a,xl
2409  0004 a4fd          	and	a,#253
2410  0006 97            	ld	xl,a
2411  0007 4f            	clr	a
2412  0008 02            	rlwa	x,a
2413  0009 5d            	tnzw	x
2414  000a 2604          	jrne	L013
2415  000c 1e03          	ldw	x,(OFST+1,sp)
2416  000e 260e          	jrne	L213
2417  0010               L013:
2418  0010 ae02fb        	ldw	x,#763
2419  0013 89            	pushw	x
2420  0014 5f            	clrw	x
2421  0015 89            	pushw	x
2422  0016 ae000c        	ldw	x,#L131
2423  0019 cd0000        	call	_assert_failed
2425  001c 5b04          	addw	sp,#4
2426  001e               L213:
2427                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2429  001e 7b04          	ld	a,(OFST+2,sp)
2430  0020 5f            	clrw	x
2431  0021 02            	rlwa	x,a
2432  0022 1f01          	ldw	(OFST-1,sp),x
2433                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2435  0024 7b02          	ld	a,(OFST+0,sp)
2436  0026 43            	cpl	a
2437  0027 c75218        	ld	21016,a
2438                     ; 769 }
2441  002a 5b04          	addw	sp,#4
2442  002c 81            	ret	
2609                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2609                     ; 792 {
2610                     .text:	section	.text,new
2611  0000               _I2C_GetITStatus:
2613  0000 89            	pushw	x
2614  0001 5204          	subw	sp,#4
2615       00000004      OFST:	set	4
2618                     ; 793   ITStatus bitstatus = RESET;
2620                     ; 794   __IO uint8_t enablestatus = 0;
2622  0003 0f03          	clr	(OFST-1,sp)
2623                     ; 795   uint16_t tempregister = 0;
2625                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2627  0005 a31680        	cpw	x,#5760
2628  0008 2745          	jreq	L423
2629  000a a31640        	cpw	x,#5696
2630  000d 2740          	jreq	L423
2631  000f a31210        	cpw	x,#4624
2632  0012 273b          	jreq	L423
2633  0014 a31208        	cpw	x,#4616
2634  0017 2736          	jreq	L423
2635  0019 a31204        	cpw	x,#4612
2636  001c 2731          	jreq	L423
2637  001e a31202        	cpw	x,#4610
2638  0021 272c          	jreq	L423
2639  0023 a31201        	cpw	x,#4609
2640  0026 2727          	jreq	L423
2641  0028 a32220        	cpw	x,#8736
2642  002b 2722          	jreq	L423
2643  002d a32108        	cpw	x,#8456
2644  0030 271d          	jreq	L423
2645  0032 a32104        	cpw	x,#8452
2646  0035 2718          	jreq	L423
2647  0037 a32102        	cpw	x,#8450
2648  003a 2713          	jreq	L423
2649  003c a32101        	cpw	x,#8449
2650  003f 270e          	jreq	L423
2651  0041 ae031e        	ldw	x,#798
2652  0044 89            	pushw	x
2653  0045 5f            	clrw	x
2654  0046 89            	pushw	x
2655  0047 ae000c        	ldw	x,#L131
2656  004a cd0000        	call	_assert_failed
2658  004d 5b04          	addw	sp,#4
2659  004f               L423:
2660                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2662  004f 7b05          	ld	a,(OFST+1,sp)
2663  0051 a407          	and	a,#7
2664  0053 97            	ld	xl,a
2665  0054 4f            	clr	a
2666  0055 02            	rlwa	x,a
2667  0056 4f            	clr	a
2668  0057 01            	rrwa	x,a
2669  0058 9f            	ld	a,xl
2670  0059 5f            	clrw	x
2671  005a 97            	ld	xl,a
2672  005b 1f01          	ldw	(OFST-3,sp),x
2673                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2675  005d c6521a        	ld	a,21018
2676  0060 1402          	and	a,(OFST-2,sp)
2677  0062 6b03          	ld	(OFST-1,sp),a
2678                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2680  0064 7b05          	ld	a,(OFST+1,sp)
2681  0066 a430          	and	a,#48
2682  0068 97            	ld	xl,a
2683  0069 4f            	clr	a
2684  006a 02            	rlwa	x,a
2685  006b a30100        	cpw	x,#256
2686  006e 260d          	jrne	L3311
2687                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2689  0070 c65217        	ld	a,21015
2690  0073 1506          	bcp	a,(OFST+2,sp)
2691  0075 2715          	jreq	L3411
2693  0077 0d03          	tnz	(OFST-1,sp)
2694  0079 2711          	jreq	L3411
2695                     ; 811       bitstatus = SET;
2697  007b 200b          	jp	LC008
2698                     ; 816       bitstatus = RESET;
2699  007d               L3311:
2700                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2702  007d c65218        	ld	a,21016
2703  0080 1506          	bcp	a,(OFST+2,sp)
2704  0082 2708          	jreq	L3411
2706  0084 0d03          	tnz	(OFST-1,sp)
2707  0086 2704          	jreq	L3411
2708                     ; 825       bitstatus = SET;
2710  0088               LC008:
2712  0088 a601          	ld	a,#1
2714  008a 2001          	jra	L1411
2715  008c               L3411:
2716                     ; 830       bitstatus = RESET;
2719  008c 4f            	clr	a
2720  008d               L1411:
2721                     ; 834   return  bitstatus;
2725  008d 5b06          	addw	sp,#6
2726  008f 81            	ret	
2772                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2772                     ; 872 {
2773                     .text:	section	.text,new
2774  0000               _I2C_ClearITPendingBit:
2776  0000 89            	pushw	x
2777  0001 89            	pushw	x
2778       00000002      OFST:	set	2
2781                     ; 873   uint16_t flagpos = 0;
2783                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2785  0002 a32220        	cpw	x,#8736
2786  0005 2722          	jreq	L633
2787  0007 a32108        	cpw	x,#8456
2788  000a 271d          	jreq	L633
2789  000c a32104        	cpw	x,#8452
2790  000f 2718          	jreq	L633
2791  0011 a32102        	cpw	x,#8450
2792  0014 2713          	jreq	L633
2793  0016 a32101        	cpw	x,#8449
2794  0019 270e          	jreq	L633
2795  001b ae036c        	ldw	x,#876
2796  001e 89            	pushw	x
2797  001f 5f            	clrw	x
2798  0020 89            	pushw	x
2799  0021 ae000c        	ldw	x,#L131
2800  0024 cd0000        	call	_assert_failed
2802  0027 5b04          	addw	sp,#4
2803  0029               L633:
2804                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2806  0029 7b04          	ld	a,(OFST+2,sp)
2807  002b 5f            	clrw	x
2808  002c 02            	rlwa	x,a
2809  002d 1f01          	ldw	(OFST-1,sp),x
2810                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2812  002f 7b02          	ld	a,(OFST+0,sp)
2813  0031 43            	cpl	a
2814  0032 c75218        	ld	21016,a
2815                     ; 883 }
2818  0035 5b04          	addw	sp,#4
2819  0037 81            	ret	
2832                     	xdef	_I2C_ClearITPendingBit
2833                     	xdef	_I2C_GetITStatus
2834                     	xdef	_I2C_ClearFlag
2835                     	xdef	_I2C_GetFlagStatus
2836                     	xdef	_I2C_GetLastEvent
2837                     	xdef	_I2C_CheckEvent
2838                     	xdef	_I2C_SendData
2839                     	xdef	_I2C_Send7bitAddress
2840                     	xdef	_I2C_ReceiveData
2841                     	xdef	_I2C_ITConfig
2842                     	xdef	_I2C_FastModeDutyCycleConfig
2843                     	xdef	_I2C_AcknowledgeConfig
2844                     	xdef	_I2C_StretchClockCmd
2845                     	xdef	_I2C_SoftwareResetCmd
2846                     	xdef	_I2C_GenerateSTOP
2847                     	xdef	_I2C_GenerateSTART
2848                     	xdef	_I2C_GeneralCallCmd
2849                     	xdef	_I2C_Cmd
2850                     	xdef	_I2C_Init
2851                     	xdef	_I2C_DeInit
2852                     	xref	_assert_failed
2853                     	switch	.const
2854  000c               L131:
2855  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2856  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2857  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2858  0042 5f6932632e63  	dc.b	"_i2c.c",0
2859                     	xref.b	c_lreg
2860                     	xref.b	c_x
2880                     	xref	c_sdivx
2881                     	xref	c_ludv
2882                     	xref	c_rtol
2883                     	xref	c_smul
2884                     	xref	c_lmul
2885                     	xref	c_lcmp
2886                     	xref	c_ltor
2887                     	xref	c_lzmp
2888                     	end
