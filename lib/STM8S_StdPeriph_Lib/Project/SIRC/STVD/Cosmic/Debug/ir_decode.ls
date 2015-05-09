   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _IRFrameReceived:
  24  0000 00            	dc.b	0
  25  0001               _IROnTimeMin:
  26  0001 0000          	dc.w	0
  27  0003               _IROnTimeMax:
  28  0003 0000          	dc.w	0
  29  0005               _IRValueStep:
  30  0005 0000          	dc.w	0
  31  0007               _IRValueMargin:
  32  0007 0000          	dc.w	0
  33  0009               _IRValue00:
  34  0009 0000          	dc.w	0
  35  000b               _IRHeaderLowMin:
  36  000b 0000          	dc.w	0
  37  000d               _IRHeaderLowMax:
  38  000d 0000          	dc.w	0
  39  000f               _IRHeaderWholeMin:
  40  000f 0000          	dc.w	0
  41  0011               _IRHeaderWholeMax:
  42  0011 0000          	dc.w	0
  43  0013               _cnt:
  44  0013 0000          	dc.w	0
  75                     ; 138 void IR_DeInit(void)
  75                     ; 139 { 
  77                     .text:	section	.text,new
  78  0000               _IR_DeInit:
  82                     ; 140   TIM1_DeInit();
  84  0000 cd0000        	call	_TIM1_DeInit
  86                     ; 141   GPIO_DeInit(IR_GPIO_PORT);
  88  0003 ae500a        	ldw	x,#20490
  90                     ; 142 }
  93  0006 cc0000        	jp	_GPIO_DeInit
 161                     .const:	section	.text
 162  0000               L04:
 163  0000 000003e8      	dc.l	1000
 164  0004               L06:
 165  0004 000008fc      	dc.l	2300
 166  0008               L26:
 167  0008 000009c4      	dc.l	2500
 168  000c               L46:
 169  000c 00000b54      	dc.l	2900
 170  0010               L66:
 171  0010 00000c1c      	dc.l	3100
 172  0014               L07:
 173  0014 000004e2      	dc.l	1250
 174  0018               L27:
 175  0018 00000226      	dc.l	550
 176  001c               L47:
 177  001c 00000258      	dc.l	600
 178  0020               L67:
 179  0020 000004b0      	dc.l	1200
 180                     ; 149 void IR_Init(void)
 180                     ; 150 { 
 181                     .text:	section	.text,new
 182  0000               _IR_Init:
 184  0000 5206          	subw	sp,#6
 185       00000006      OFST:	set	6
 188                     ; 151 	uint16_t IRTimeOut = 0;
 190                     ; 152 	__IO uint32_t TIMCLKValueKHz = 0;/*!< Timer clock */
 192  0002 5f            	clrw	x
 193  0003 1f05          	ldw	(OFST-1,sp),x
 194  0005 1f03          	ldw	(OFST-3,sp),x
 195                     ; 162 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV2);
 197  0007 a608          	ld	a,#8
 198  0009 cd0000        	call	_CLK_HSIPrescalerConfig
 200                     ; 172 	GPIO_Init(IR_GPIO_PORT, (GPIO_Pin_TypeDef)IR_GPIO_PIN, GPIO_MODE_IN_FL_IT);
 202  000c 4b20          	push	#32
 203  000e 4b40          	push	#64
 204  0010 ae500a        	ldw	x,#20490
 205  0013 cd0000        	call	_GPIO_Init
 207  0016 85            	popw	x
 208                     ; 179 	GPIO_Init(IR_LED_PORT, (GPIO_Pin_TypeDef)IR_LED_PIN, GPIO_MODE_OUT_PP_HIGH_SLOW);
 210  0017 4bd0          	push	#208
 211  0019 4b20          	push	#32
 212  001b ae5005        	ldw	x,#20485
 213  001e cd0000        	call	_GPIO_Init
 215  0021 85            	popw	x
 216                     ; 193 	ITC_SetSoftwarePriority(IR_GPIO_PORT_IRQ, ITC_PRIORITYLEVEL_0);
 218  0022 ae0502        	ldw	x,#1282
 219  0025 cd0000        	call	_ITC_SetSoftwarePriority
 221                     ; 202 	TIM1_PWMIConfig(IR_TIM_Channel, TIM1_ICPOLARITY_FALLING, 
 221                     ; 203 									TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x3);
 223  0028 4b03          	push	#3
 224  002a 4b00          	push	#0
 225  002c 4b01          	push	#1
 226  002e ae0001        	ldw	x,#1
 227  0031 cd0000        	call	_TIM1_PWMIConfig
 229  0034 5b03          	addw	sp,#3
 230                     ; 207   TIM1_SelectInputTrigger(TIM1_TS_TI1FP1);
 232  0036 a650          	ld	a,#80
 233  0038 cd0000        	call	_TIM1_SelectInputTrigger
 235                     ; 210   TIM1_SelectSlaveMode(TIM1_SLAVEMODE_RESET);
 237  003b a604          	ld	a,#4
 238  003d cd0000        	call	_TIM1_SelectSlaveMode
 240                     ; 213   TIM1_SelectMasterSlaveMode(ENABLE);
 242  0040 a601          	ld	a,#1
 243  0042 cd0000        	call	_TIM1_SelectMasterSlaveMode
 245                     ; 216   TIM1_UpdateRequestConfig(TIM1_UPDATESOURCE_REGULAR);
 247  0045 a601          	ld	a,#1
 248  0047 cd0000        	call	_TIM1_UpdateRequestConfig
 250                     ; 219   TIMCLKValueKHz = TIM_GetCounterCLKValue()/1000; 
 252  004a cd0000        	call	L7_TIM_GetCounterCLKValue
 254  004d ae0000        	ldw	x,#L04
 255  0050 cd0000        	call	c_ludv
 257  0053 96            	ldw	x,sp
 258  0054 1c0003        	addw	x,#OFST-3
 259  0057 cd0000        	call	c_rtol
 261                     ; 221   IRTimeOut = TIMCLKValueKHz * IR_TIME_OUT_US/1000;
 263  005a 1e05          	ldw	x,(OFST-1,sp)
 264  005c 58            	sllw	x
 265  005d 58            	sllw	x
 266  005e 1f01          	ldw	(OFST-5,sp),x
 267                     ; 225 	TIM1_TimeBaseInit(TIM_PRESCALER, TIM1_COUNTERMODE_UP, IRTimeOut, 0x0);
 269  0060 4b00          	push	#0
 270  0062 1e02          	ldw	x,(OFST-4,sp)
 271  0064 89            	pushw	x
 272  0065 4b00          	push	#0
 273  0067 ae0003        	ldw	x,#3
 274  006a cd0000        	call	_TIM1_TimeBaseInit
 276  006d 5b04          	addw	sp,#4
 277                     ; 228   TIM1_PrescalerConfig(TIM_PRESCALER, TIM1_PSCRELOADMODE_IMMEDIATE);
 279  006f 4b01          	push	#1
 280  0071 ae0003        	ldw	x,#3
 281  0074 cd0000        	call	_TIM1_PrescalerConfig
 283  0077 ae0001        	ldw	x,#1
 284  007a 84            	pop	a
 285                     ; 235   TIM1_ClearFlag(TIM1_FLAG_UPDATE);
 287  007b cd0000        	call	_TIM1_ClearFlag
 289                     ; 238   TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
 291  007e ae0101        	ldw	x,#257
 292  0081 cd0000        	call	_TIM1_ITConfig
 294                     ; 241   TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
 296  0084 ae0401        	ldw	x,#1025
 297  0087 cd0000        	call	_TIM1_ITConfig
 299                     ; 242   TIM1_ITConfig(TIM1_IT_CC1, ENABLE);
 301  008a ae0201        	ldw	x,#513
 302  008d cd0000        	call	_TIM1_ITConfig
 304                     ; 245   TIM1_Cmd(ENABLE);
 306  0090 a601          	ld	a,#1
 307  0092 cd0000        	call	_TIM1_Cmd
 309                     ; 261   IRHeaderLowMin = TIMCLKValueKHz * IR_HEADER_LOW_MIN_US/1000;
 311  0095 96            	ldw	x,sp
 312  0096 1c0003        	addw	x,#OFST-3
 313  0099 cd0000        	call	c_ltor
 315  009c ae0004        	ldw	x,#L06
 316  009f cd0125        	call	LC001
 317  00a2 bf0b          	ldw	_IRHeaderLowMin,x
 318                     ; 262   IRHeaderLowMax = TIMCLKValueKHz * IR_HEADER_LOW_MAX_US/1000;
 320  00a4 96            	ldw	x,sp
 321  00a5 1c0003        	addw	x,#OFST-3
 322  00a8 cd0000        	call	c_ltor
 324  00ab ae0008        	ldw	x,#L26
 325  00ae ad75          	call	LC001
 326  00b0 bf0d          	ldw	_IRHeaderLowMax,x
 327                     ; 263   IRHeaderWholeMin = TIMCLKValueKHz * IR_HEADER_WHOLE_MIN_US/1000;
 329  00b2 96            	ldw	x,sp
 330  00b3 1c0003        	addw	x,#OFST-3
 331  00b6 cd0000        	call	c_ltor
 333  00b9 ae000c        	ldw	x,#L46
 334  00bc ad67          	call	LC001
 335  00be bf0f          	ldw	_IRHeaderWholeMin,x
 336                     ; 264   IRHeaderWholeMax = TIMCLKValueKHz * IR_HEADER_WHOLE_MAX_US/1000;
 338  00c0 96            	ldw	x,sp
 339  00c1 1c0003        	addw	x,#OFST-3
 340  00c4 cd0000        	call	c_ltor
 342  00c7 ae0010        	ldw	x,#L66
 343  00ca ad59          	call	LC001
 344  00cc bf11          	ldw	_IRHeaderWholeMax,x
 345                     ; 267   IROnTimeMax = TIMCLKValueKHz * IR_ONTIME_MAX_US /1000;
 347  00ce 96            	ldw	x,sp
 348  00cf 1c0003        	addw	x,#OFST-3
 349  00d2 cd0000        	call	c_ltor
 351  00d5 ae0014        	ldw	x,#L07
 352  00d8 ad4b          	call	LC001
 353  00da bf03          	ldw	_IROnTimeMax,x
 354                     ; 268   IROnTimeMin = TIMCLKValueKHz * IR_ONTIME_MIN_US/1000; 
 356  00dc 96            	ldw	x,sp
 357  00dd 1c0003        	addw	x,#OFST-3
 358  00e0 cd0000        	call	c_ltor
 360  00e3 ae0018        	ldw	x,#L27
 361  00e6 ad3d          	call	LC001
 362  00e8 bf01          	ldw	_IROnTimeMin,x
 363                     ; 269   IRValueStep = TIMCLKValueKHz * IR_VALUE_STEP_US/1000;
 365  00ea 96            	ldw	x,sp
 366  00eb 1c0003        	addw	x,#OFST-3
 367  00ee cd0000        	call	c_ltor
 369  00f1 ae001c        	ldw	x,#L47
 370  00f4 ad2f          	call	LC001
 371  00f6 bf05          	ldw	_IRValueStep,x
 372                     ; 270   IRValueMargin = TIMCLKValueKHz * IR_VALUE_MARGIN_US/1000;
 374  00f8 96            	ldw	x,sp
 375  00f9 1c0003        	addw	x,#OFST-3
 376  00fc cd0000        	call	c_ltor
 378  00ff a664          	ld	a,#100
 379  0101 cd0000        	call	c_smul
 381  0104 ae0000        	ldw	x,#L04
 382  0107 cd0000        	call	c_ludv
 384  010a be02          	ldw	x,c_lreg+2
 385  010c bf07          	ldw	_IRValueMargin,x
 386                     ; 271   IRValue00 = TIMCLKValueKHz * IR_VALUE_00_US/1000;
 388  010e 96            	ldw	x,sp
 389  010f 1c0003        	addw	x,#OFST-3
 390  0112 cd0000        	call	c_ltor
 392  0115 ae0020        	ldw	x,#L67
 393  0118 ad0b          	call	LC001
 394  011a bf09          	ldw	_IRValue00,x
 395                     ; 273 	cnt = 0;
 397  011c 5f            	clrw	x
 398  011d bf13          	ldw	_cnt,x
 399                     ; 275   IR_ResetPacket();
 401  011f cd0000        	call	_IR_ResetPacket
 403                     ; 276 }
 406  0122 5b06          	addw	sp,#6
 407  0124 81            	ret	
 408  0125               LC001:
 409  0125 cd0000        	call	c_lmul
 411  0128 ae0000        	ldw	x,#L04
 412  012b cd0000        	call	c_ludv
 414  012e be02          	ldw	x,c_lreg+2
 415  0130 81            	ret	
 530                     ; 292 StatusYesOrNo IR_Decode(IR_Frame_TypeDef *ir_frame)
 530                     ; 293 {  
 531                     .text:	section	.text,new
 532  0000               _IR_Decode:
 534  0000 89            	pushw	x
 535  0001 5205          	subw	sp,#5
 536       00000005      OFST:	set	5
 539                     ; 297 	res = IRFrameReceived;
 541  0003 b600          	ld	a,_IRFrameReceived
 542  0005 6b01          	ld	(OFST-4,sp),a
 543                     ; 299   if(IRFrameReceived != NO) 
 545  0007 3d00          	tnz	_IRFrameReceived
 546  0009 273f          	jreq	L131
 547                     ; 302 		org_data = IRTmpPacket.data;
 549  000b be0c          	ldw	x,_IRTmpPacket+4
 550  000d 1f04          	ldw	(OFST-1,sp),x
 551  000f be0a          	ldw	x,_IRTmpPacket+2
 552  0011 1f02          	ldw	(OFST-3,sp),x
 553                     ; 303 		rev_data = org_data;
 555                     ; 304 		rev_data = reverse_bit(rev_data);
 557  0013 1e04          	ldw	x,(OFST-1,sp)
 558  0015 89            	pushw	x
 559  0016 1e04          	ldw	x,(OFST-1,sp)
 560  0018 89            	pushw	x
 561  0019 cd0000        	call	_reverse_bit
 563  001c 5b04          	addw	sp,#4
 564  001e 96            	ldw	x,sp
 565  001f 1c0002        	addw	x,#OFST-3
 566  0022 cd0000        	call	c_rtol
 568                     ; 305 		IRTmpPacket.data = rev_data;
 570  0025 1e04          	ldw	x,(OFST-1,sp)
 571  0027 bf0c          	ldw	_IRTmpPacket+4,x
 572  0029 1e02          	ldw	x,(OFST-3,sp)
 573  002b bf0a          	ldw	_IRTmpPacket+2,x
 574                     ; 310     ir_frame->Command = (IRTmpPacket.data >> 20)& 0x7F;
 576  002d 54            	srlw	x
 577  002e 54            	srlw	x
 578  002f 54            	srlw	x
 579  0030 54            	srlw	x
 580  0031 9f            	ld	a,xl
 581  0032 1e06          	ldw	x,(OFST+1,sp)
 582  0034 a47f          	and	a,#127
 583  0036 f7            	ld	(x),a
 584                     ; 311     ir_frame->Address = (IRTmpPacket.data >> 27) & 0x1F;
 586  0037 4f            	clr	a
 587  0038 be0a          	ldw	x,_IRTmpPacket+2
 588  003a 01            	rrwa	x,a
 589  003b 54            	srlw	x
 590  003c 54            	srlw	x
 591  003d 54            	srlw	x
 592  003e 9f            	ld	a,xl
 593  003f 1e06          	ldw	x,(OFST+1,sp)
 594                     ; 315     IRFrameReceived = NO; 
 596  0041 3f00          	clr	_IRFrameReceived
 597  0043 e701          	ld	(1,x),a
 598                     ; 316     IR_ResetPacket();
 600  0045 cd0000        	call	_IR_ResetPacket
 602  0048 7b01          	ld	a,(OFST-4,sp)
 603  004a               L131:
 604                     ; 324 	return res;
 608  004a 5b07          	addw	sp,#7
 609  004c 81            	ret	
 633                     ; 334 void IR_ResetPacket(void)
 633                     ; 335 {
 634                     .text:	section	.text,new
 635  0000               _IR_ResetPacket:
 639                     ; 336   IRTmpPacket.count = 0;
 641  0000 3f08          	clr	_IRTmpPacket
 642                     ; 337   IRTmpPacket.status = INITIAL_STATUS;
 644  0002 35020009      	mov	_IRTmpPacket+1,#2
 645                     ; 338   IRTmpPacket.data = 0;
 647  0006 5f            	clrw	x
 648  0007 bf0c          	ldw	_IRTmpPacket+4,x
 649  0009 bf0a          	ldw	_IRTmpPacket+2,x
 650                     ; 339 }
 653  000b 81            	ret	
 656                     	switch	.ubsct
 657  0000               L541_ICValue2:
 658  0000 00000000      	ds.b	4
 659  0004               L341_ICValue1:
 660  0004 00000000      	ds.b	4
 707                     ; 365 void TIM3_IRQHandler (void)
 707                     ; 366 {
 708                     .text:	section	.text,new
 709  0000               _TIM3_IRQHandler:
 713                     ; 373   if((TIM1_GetFlagStatus(TIM1_FLAG_CC1) != RESET))
 715  0000 ae0002        	ldw	x,#2
 716  0003 cd0000        	call	_TIM1_GetFlagStatus
 718  0006 4d            	tnz	a
 719  0007 2724          	jreq	L171
 720                     ; 376     TIM1_ClearFlag(TIM1_FLAG_CC1);
 722  0009 ae0002        	ldw	x,#2
 723  000c cd0000        	call	_TIM1_ClearFlag
 725                     ; 378     ICValue2 = TIM1_GetCapture1();
 727  000f cd0000        	call	_TIM1_GetCapture1
 729  0012 cd0000        	call	c_uitolx
 731  0015 ae0000        	ldw	x,#L541_ICValue2
 732  0018 cd0000        	call	c_rtol
 734                     ; 379     IR_DataSampling(ICValue1, ICValue2); 
 736  001b be02          	ldw	x,L541_ICValue2+2
 737  001d 89            	pushw	x
 738  001e be00          	ldw	x,L541_ICValue2
 739  0020 89            	pushw	x
 740  0021 be06          	ldw	x,L341_ICValue1+2
 741  0023 89            	pushw	x
 742  0024 be04          	ldw	x,L341_ICValue1
 743  0026 89            	pushw	x
 744  0027 cd0000        	call	_IR_DataSampling
 746  002a 5b08          	addw	sp,#8
 749  002c 81            	ret	
 750  002d               L171:
 751                     ; 381   else  if((TIM1_GetFlagStatus(TIM1_FLAG_CC2) != RESET))
 753  002d ae0004        	ldw	x,#4
 754  0030 cd0000        	call	_TIM1_GetFlagStatus
 756  0033 4d            	tnz	a
 757  0034 2712          	jreq	L571
 758                     ; 384     TIM1_ClearFlag(TIM1_FLAG_CC2);
 760  0036 ae0004        	ldw	x,#4
 761  0039 cd0000        	call	_TIM1_ClearFlag
 763                     ; 386     ICValue1 = TIM1_GetCapture2();
 765  003c cd0000        	call	_TIM1_GetCapture2
 767  003f cd0000        	call	c_uitolx
 769  0042 ae0004        	ldw	x,#L341_ICValue1
 773  0045 cc0000        	jp	c_rtol
 774  0048               L571:
 775                     ; 389   else if ((TIM1_GetFlagStatus(TIM1_FLAG_UPDATE) != RESET))
 777  0048 ae0001        	ldw	x,#1
 778  004b cd0000        	call	_TIM1_GetFlagStatus
 780  004e 4d            	tnz	a
 781  004f 2709          	jreq	L371
 782                     ; 392     TIM1_ClearFlag(TIM1_FLAG_UPDATE);
 784  0051 ae0001        	ldw	x,#1
 785  0054 cd0000        	call	_TIM1_ClearFlag
 787                     ; 396     IR_ResetPacket();
 789  0057 cd0000        	call	_IR_ResetPacket
 791  005a               L371:
 792                     ; 398 }
 795  005a 81            	ret	
 856                     ; 407 void IR_DataSampling(uint32_t lowPulseLength, uint32_t wholePulseLength)
 856                     ; 408 {
 857                     .text:	section	.text,new
 858  0000               _IR_DataSampling:
 860  0000 88            	push	a
 861       00000001      OFST:	set	1
 864                     ; 409   uint8_t  tmpBit = 0;
 866                     ; 412 	cnt++;
 868  0001 be13          	ldw	x,_cnt
 869  0003 5c            	incw	x
 870  0004 bf13          	ldw	_cnt,x
 871                     ; 413 	if(cnt==1) {
 873  0006 a30001        	cpw	x,#1
 874  0009 2601          	jrne	L132
 875                     ; 414 		nop();
 878  000b 9d            	nop	
 881  000c               L132:
 882                     ; 417 	if (cnt > 1) {
 884  000c a30002        	cpw	x,#2
 885  000f 2502          	jrult	L332
 886                     ; 418 		nop();
 889  0011 9d            	nop	
 891                     ; 419 		nop();
 895  0012 9d            	nop	
 898  0013               L332:
 899                     ; 423   if ((IRTmpPacket.status == IR_STATUS_RX)) 
 901  0013 b609          	ld	a,_IRTmpPacket+1
 902  0015 a101          	cp	a,#1
 903  0017 2645          	jrne	L532
 904                     ; 426     tmpBit = IR_DecodeBit(lowPulseLength, wholePulseLength); 
 906  0019 1e0a          	ldw	x,(OFST+9,sp)
 907  001b 89            	pushw	x
 908  001c 1e0a          	ldw	x,(OFST+9,sp)
 909  001e 89            	pushw	x
 910  001f 1e0a          	ldw	x,(OFST+9,sp)
 911  0021 89            	pushw	x
 912  0022 1e0a          	ldw	x,(OFST+9,sp)
 913  0024 89            	pushw	x
 914  0025 cd0000        	call	L5_IR_DecodeBit
 916  0028 5b08          	addw	sp,#8
 917  002a 6b01          	ld	(OFST+0,sp),a
 918                     ; 427     if (tmpBit != IR_BIT_ERROR) /* If the pulse timing is correct */
 920  002c a1ff          	cp	a,#255
 921  002e 2718          	jreq	L732
 922                     ; 431       IRTmpPacket.data |= tmpBit;
 924  0030 b703          	ld	c_lreg+3,a
 925  0032 3f02          	clr	c_lreg+2
 926  0034 3f01          	clr	c_lreg+1
 927  0036 3f00          	clr	c_lreg
 928  0038 ae000a        	ldw	x,#_IRTmpPacket+2
 929  003b cd0000        	call	c_lgor
 931                     ; 432       IRTmpPacket.data <<= 1;
 933  003e 380d          	sll	_IRTmpPacket+5
 934  0040 390c          	rlc	_IRTmpPacket+4
 935  0042 390b          	rlc	_IRTmpPacket+3
 936  0044 390a          	rlc	_IRTmpPacket+2
 937                     ; 434       IRTmpPacket.count++;
 939  0046 3c08          	inc	_IRTmpPacket
 940  0048               L732:
 941                     ; 437     if (IRTmpPacket.count == IR_TOTAL_BITS_COUNT)
 943  0048 b608          	ld	a,_IRTmpPacket
 944  004a a10b          	cp	a,#11
 945  004c 2606          	jrne	L142
 946                     ; 440       IRFrameReceived = YES;
 948  004e 35010000      	mov	_IRFrameReceived,#1
 950  0052 202d          	jra	L742
 951  0054               L142:
 952                     ; 443     else if (IRTmpPacket.count == IR_BITS_COUNT)
 954  0054 a10b          	cp	a,#11
 955  0056 2629          	jrne	L742
 956                     ; 445       IRTmpPacket.status = IR_STATUS_HEADER; 
 958  0058 35020009      	mov	_IRTmpPacket+1,#2
 959  005c 2023          	jra	L742
 960  005e               L532:
 961                     ; 448   else if ((IRTmpPacket.status == IR_STATUS_HEADER))
 963  005e a102          	cp	a,#2
 964  0060 261f          	jrne	L742
 965                     ; 451     tmpBit = IR_DecodeHeader(lowPulseLength, wholePulseLength);
 967  0062 1e0a          	ldw	x,(OFST+9,sp)
 968  0064 89            	pushw	x
 969  0065 1e0a          	ldw	x,(OFST+9,sp)
 970  0067 89            	pushw	x
 971  0068 1e0a          	ldw	x,(OFST+9,sp)
 972  006a 89            	pushw	x
 973  006b 1e0a          	ldw	x,(OFST+9,sp)
 974  006d 89            	pushw	x
 975  006e cd0000        	call	L3_IR_DecodeHeader
 977  0071 5b08          	addw	sp,#8
 978  0073 6b01          	ld	(OFST+0,sp),a
 979                     ; 454     if ( tmpBit!= IR_HEADER_ERROR)
 981  0075 4c            	inc	a
 982  0076 2706          	jreq	L352
 983                     ; 457       IRTmpPacket.status = IR_STATUS_RX; 
 985  0078 35010009      	mov	_IRTmpPacket+1,#1
 987  007c 2003          	jra	L742
 988  007e               L352:
 989                     ; 462       IR_ResetPacket();  
 991  007e cd0000        	call	_IR_ResetPacket
 993  0081               L742:
 994                     ; 465 }
 997  0081 84            	pop	a
 998  0082 81            	ret	
1045                     ; 473 static uint8_t IR_DecodeHeader(uint32_t lowPulseLength, uint32_t wholePulseLength)
1045                     ; 474 {
1046                     .text:	section	.text,new
1047  0000               L3_IR_DecodeHeader:
1049       00000000      OFST:	set	0
1052                     ; 476   if ((lowPulseLength >= IRHeaderLowMin) && (lowPulseLength <= IRHeaderLowMax)) 
1054  0000 be0b          	ldw	x,_IRHeaderLowMin
1055  0002 cd0000        	call	c_uitolx
1057  0005 96            	ldw	x,sp
1058  0006 1c0003        	addw	x,#OFST+3
1059  0009 cd0000        	call	c_lcmp
1061  000c 222c          	jrugt	L103
1063  000e be0d          	ldw	x,_IRHeaderLowMax
1064  0010 cd0000        	call	c_uitolx
1066  0013 96            	ldw	x,sp
1067  0014 1c0003        	addw	x,#OFST+3
1068  0017 cd0000        	call	c_lcmp
1070  001a 251e          	jrult	L103
1071                     ; 479     if ((wholePulseLength >= IRHeaderWholeMin) && (wholePulseLength <= IRHeaderWholeMax))
1073  001c be0f          	ldw	x,_IRHeaderWholeMin
1074  001e cd0000        	call	c_uitolx
1076  0021 96            	ldw	x,sp
1077  0022 1c0007        	addw	x,#OFST+7
1078  0025 cd0000        	call	c_lcmp
1080  0028 2210          	jrugt	L103
1082  002a be11          	ldw	x,_IRHeaderWholeMax
1083  002c cd0000        	call	c_uitolx
1085  002f 96            	ldw	x,sp
1086  0030 1c0007        	addw	x,#OFST+7
1087  0033 cd0000        	call	c_lcmp
1089  0036 2502          	jrult	L103
1090                     ; 481       return IR_HEADER_OK; /* Valid Header */
1092  0038 4f            	clr	a
1095  0039 81            	ret	
1096  003a               L103:
1097                     ; 484   return IR_HEADER_ERROR;  /* Wrong Header */
1099  003a a6ff          	ld	a,#255
1102  003c 81            	ret	
1159                     ; 493 static uint8_t IR_DecodeBit(uint32_t lowPulseLength , uint32_t wholePulseLength)
1159                     ; 494 {
1160                     .text:	section	.text,new
1161  0000               L5_IR_DecodeBit:
1163  0000 88            	push	a
1164       00000001      OFST:	set	1
1167                     ; 495   uint8_t i = 0;
1169                     ; 498   if ((lowPulseLength >= IROnTimeMin) && (lowPulseLength <= IROnTimeMax))
1171  0001 be01          	ldw	x,_IROnTimeMin
1172  0003 cd0000        	call	c_uitolx
1174  0006 96            	ldw	x,sp
1175  0007 1c0004        	addw	x,#OFST+3
1176  000a cd0000        	call	c_lcmp
1178  000d 2248          	jrugt	L333
1180  000f be03          	ldw	x,_IROnTimeMax
1181  0011 cd0000        	call	c_uitolx
1183  0014 96            	ldw	x,sp
1184  0015 1c0004        	addw	x,#OFST+3
1185  0018 cd0000        	call	c_lcmp
1187  001b 253a          	jrult	L333
1188                     ; 500     for (i = 0; i < 2; i++) /* There are data0 to data1 */
1190  001d 4f            	clr	a
1191  001e 6b01          	ld	(OFST+0,sp),a
1192  0020               L533:
1193                     ; 503       if ((wholePulseLength >= IRValue00 + (IRValueStep * i) - IRValueMargin) 
1193                     ; 504           && (wholePulseLength <= IRValue00 + (IRValueStep * i) + IRValueMargin))
1195  0020 be05          	ldw	x,_IRValueStep
1196  0022 ad38          	call	LC002
1197  0024 72b00007      	subw	x,_IRValueMargin
1198  0028 cd0000        	call	c_uitolx
1200  002b 96            	ldw	x,sp
1201  002c 1c0008        	addw	x,#OFST+7
1202  002f cd0000        	call	c_lcmp
1204  0032 221b          	jrugt	L343
1206  0034 be05          	ldw	x,_IRValueStep
1207  0036 7b01          	ld	a,(OFST+0,sp)
1208  0038 ad22          	call	LC002
1209  003a 72bb0007      	addw	x,_IRValueMargin
1210  003e cd0000        	call	c_uitolx
1212  0041 96            	ldw	x,sp
1213  0042 1c0008        	addw	x,#OFST+7
1214  0045 cd0000        	call	c_lcmp
1216  0048 2505          	jrult	L343
1217                     ; 505         return i; /* Return bit value */
1219  004a 7b01          	ld	a,(OFST+0,sp)
1222  004c 5b01          	addw	sp,#1
1223  004e 81            	ret	
1224  004f               L343:
1225                     ; 500     for (i = 0; i < 2; i++) /* There are data0 to data1 */
1227  004f 0c01          	inc	(OFST+0,sp)
1230  0051 7b01          	ld	a,(OFST+0,sp)
1231  0053 a102          	cp	a,#2
1232  0055 25c9          	jrult	L533
1233  0057               L333:
1234                     ; 508   return IR_BIT_ERROR; /* No correct pulse length was found */
1236  0057 a6ff          	ld	a,#255
1239  0059 5b01          	addw	sp,#1
1240  005b 81            	ret	
1241  005c               LC002:
1242  005c 905f          	clrw	y
1243  005e 9097          	ld	yl,a
1244  0060 cd0000        	call	c_imul
1246  0063 72bb0009      	addw	x,_IRValue00
1247  0067 81            	ret	
1292                     ; 516 static uint32_t TIM_GetCounterCLKValue(void)
1292                     ; 517 {
1293                     .text:	section	.text,new
1294  0000               L7_TIM_GetCounterCLKValue:
1296  0000 5208          	subw	sp,#8
1297       00000008      OFST:	set	8
1300                     ; 518   uint32_t timprescaler = 0;
1302                     ; 519   uint32_t fmaster = 0;
1304                     ; 521 	fmaster = CLK_GetClockFreq();
1306  0002 cd0000        	call	_CLK_GetClockFreq
1308  0005 96            	ldw	x,sp
1309  0006 1c0005        	addw	x,#OFST-3
1310  0009 cd0000        	call	c_rtol
1312                     ; 523 	timprescaler = (TIM_PRESCALER + 1);
1314                     ; 525 	return (fmaster / timprescaler);
1316  000c 96            	ldw	x,sp
1317  000d 1c0005        	addw	x,#OFST-3
1318  0010 cd0000        	call	c_ltor
1320  0013 a602          	ld	a,#2
1321  0015 cd0000        	call	c_lursh
1325  0018 5b08          	addw	sp,#8
1326  001a 81            	ret	
1360                     ; 528 uint32_t reverse_bit(uint32_t x)
1360                     ; 529 {
1361                     .text:	section	.text,new
1362  0000               _reverse_bit:
1364  0000 5204          	subw	sp,#4
1365       00000004      OFST:	set	4
1368                     ; 530   x = (((x & 0xaaaaaaaa) >> 1) | ((x & 0x55555555) << 1));
1370  0002 96            	ldw	x,sp
1371  0003 cd013d        	call	LC003
1372  0006 a455          	and	a,#85
1373  0008 b703          	ld	c_lreg+3,a
1374  000a b602          	ld	a,c_lreg+2
1375  000c a455          	and	a,#85
1376  000e b702          	ld	c_lreg+2,a
1377  0010 b601          	ld	a,c_lreg+1
1378  0012 a455          	and	a,#85
1379  0014 b701          	ld	c_lreg+1,a
1380  0016 b600          	ld	a,c_lreg
1381  0018 a455          	and	a,#85
1382  001a b700          	ld	c_lreg,a
1383  001c 3803          	sll	c_lreg+3
1384  001e 3902          	rlc	c_lreg+2
1385  0020 3901          	rlc	c_lreg+1
1386  0022 96            	ldw	x,sp
1387  0023 3900          	rlc	c_lreg
1388  0025 5c            	incw	x
1389  0026 cd0000        	call	c_rtol
1391  0029 96            	ldw	x,sp
1392  002a cd013d        	call	LC003
1393  002d a4aa          	and	a,#170
1394  002f b703          	ld	c_lreg+3,a
1395  0031 b602          	ld	a,c_lreg+2
1396  0033 a4aa          	and	a,#170
1397  0035 b702          	ld	c_lreg+2,a
1398  0037 b601          	ld	a,c_lreg+1
1399  0039 a4aa          	and	a,#170
1400  003b b701          	ld	c_lreg+1,a
1401  003d b600          	ld	a,c_lreg
1402  003f a4aa          	and	a,#170
1403  0041 44            	srl	a
1404  0042 b700          	ld	c_lreg,a
1405  0044 3601          	rrc	c_lreg+1
1406  0046 3602          	rrc	c_lreg+2
1407  0048 96            	ldw	x,sp
1408  0049 3603          	rrc	c_lreg+3
1409  004b 5c            	incw	x
1410  004c cd0000        	call	c_lor
1412  004f 96            	ldw	x,sp
1413  0050 1c0007        	addw	x,#OFST+3
1414  0053 cd0000        	call	c_rtol
1416                     ; 531   x = (((x & 0xcccccccc) >> 2) | ((x & 0x33333333) << 2));
1418  0056 96            	ldw	x,sp
1419  0057 cd013d        	call	LC003
1420  005a a433          	and	a,#51
1421  005c b703          	ld	c_lreg+3,a
1422  005e b602          	ld	a,c_lreg+2
1423  0060 a433          	and	a,#51
1424  0062 b702          	ld	c_lreg+2,a
1425  0064 b601          	ld	a,c_lreg+1
1426  0066 a433          	and	a,#51
1427  0068 b701          	ld	c_lreg+1,a
1428  006a b600          	ld	a,c_lreg
1429  006c a433          	and	a,#51
1430  006e b700          	ld	c_lreg,a
1431  0070 a602          	ld	a,#2
1432  0072 cd0000        	call	c_llsh
1434  0075 96            	ldw	x,sp
1435  0076 5c            	incw	x
1436  0077 cd0000        	call	c_rtol
1438  007a 96            	ldw	x,sp
1439  007b cd013d        	call	LC003
1440  007e a4cc          	and	a,#204
1441  0080 b703          	ld	c_lreg+3,a
1442  0082 b602          	ld	a,c_lreg+2
1443  0084 a4cc          	and	a,#204
1444  0086 b702          	ld	c_lreg+2,a
1445  0088 b601          	ld	a,c_lreg+1
1446  008a a4cc          	and	a,#204
1447  008c b701          	ld	c_lreg+1,a
1448  008e b600          	ld	a,c_lreg
1449  0090 a4cc          	and	a,#204
1450  0092 b700          	ld	c_lreg,a
1451  0094 a602          	ld	a,#2
1452  0096 cd0000        	call	c_lursh
1454  0099 96            	ldw	x,sp
1455  009a 5c            	incw	x
1456  009b cd0000        	call	c_lor
1458  009e 96            	ldw	x,sp
1459  009f 1c0007        	addw	x,#OFST+3
1460  00a2 cd0000        	call	c_rtol
1462                     ; 532   x = (((x & 0xf0f0f0f0) >> 4) | ((x & 0x0f0f0f0f) << 4));
1464  00a5 96            	ldw	x,sp
1465  00a6 cd013d        	call	LC003
1466  00a9 a40f          	and	a,#15
1467  00ab b703          	ld	c_lreg+3,a
1468  00ad b602          	ld	a,c_lreg+2
1469  00af a40f          	and	a,#15
1470  00b1 b702          	ld	c_lreg+2,a
1471  00b3 b601          	ld	a,c_lreg+1
1472  00b5 a40f          	and	a,#15
1473  00b7 b701          	ld	c_lreg+1,a
1474  00b9 b600          	ld	a,c_lreg
1475  00bb a40f          	and	a,#15
1476  00bd b700          	ld	c_lreg,a
1477  00bf a604          	ld	a,#4
1478  00c1 cd0000        	call	c_llsh
1480  00c4 96            	ldw	x,sp
1481  00c5 5c            	incw	x
1482  00c6 cd0000        	call	c_rtol
1484  00c9 96            	ldw	x,sp
1485  00ca ad71          	call	LC003
1486  00cc a4f0          	and	a,#240
1487  00ce b703          	ld	c_lreg+3,a
1488  00d0 b602          	ld	a,c_lreg+2
1489  00d2 a4f0          	and	a,#240
1490  00d4 b702          	ld	c_lreg+2,a
1491  00d6 b601          	ld	a,c_lreg+1
1492  00d8 a4f0          	and	a,#240
1493  00da b701          	ld	c_lreg+1,a
1494  00dc b600          	ld	a,c_lreg
1495  00de a4f0          	and	a,#240
1496  00e0 b700          	ld	c_lreg,a
1497  00e2 a604          	ld	a,#4
1498  00e4 cd0000        	call	c_lursh
1500  00e7 96            	ldw	x,sp
1501  00e8 5c            	incw	x
1502  00e9 cd0000        	call	c_lor
1504  00ec 96            	ldw	x,sp
1505  00ed 1c0007        	addw	x,#OFST+3
1506  00f0 cd0000        	call	c_rtol
1508                     ; 533   x = (((x & 0xff00ff00) >> 8) | ((x & 0x00ff00ff) << 8));
1510  00f3 96            	ldw	x,sp
1511  00f4 1c0007        	addw	x,#OFST+3
1512  00f7 cd0000        	call	c_ltor
1514  00fa 3f02          	clr	c_lreg+2
1515  00fc 3f00          	clr	c_lreg
1516  00fe a608          	ld	a,#8
1517  0100 cd0000        	call	c_llsh
1519  0103 96            	ldw	x,sp
1520  0104 5c            	incw	x
1521  0105 cd0000        	call	c_rtol
1523  0108 96            	ldw	x,sp
1524  0109 1c0007        	addw	x,#OFST+3
1525  010c cd0000        	call	c_ltor
1527  010f 3f03          	clr	c_lreg+3
1528  0111 3f01          	clr	c_lreg+1
1529  0113 a608          	ld	a,#8
1530  0115 cd0000        	call	c_lursh
1532  0118 96            	ldw	x,sp
1533  0119 5c            	incw	x
1534  011a cd0000        	call	c_lor
1536  011d 96            	ldw	x,sp
1537  011e 1c0007        	addw	x,#OFST+3
1538  0121 cd0000        	call	c_rtol
1540                     ; 534   return((x >> 16) | (x << 16));
1542  0124 96            	ldw	x,sp
1543  0125 ad1f          	call	LC004
1544  0127 cd0000        	call	c_llsh
1546  012a 96            	ldw	x,sp
1547  012b 5c            	incw	x
1548  012c cd0000        	call	c_rtol
1550  012f 96            	ldw	x,sp
1551  0130 ad14          	call	LC004
1552  0132 cd0000        	call	c_lursh
1554  0135 96            	ldw	x,sp
1555  0136 5c            	incw	x
1556  0137 cd0000        	call	c_lor
1560  013a 5b04          	addw	sp,#4
1561  013c 81            	ret	
1562  013d               LC003:
1563  013d 1c0007        	addw	x,#OFST+3
1564  0140 cd0000        	call	c_ltor
1566  0143 b603          	ld	a,c_lreg+3
1567  0145 81            	ret	
1568  0146               LC004:
1569  0146 1c0007        	addw	x,#OFST+3
1570  0149 cd0000        	call	c_ltor
1572  014c a610          	ld	a,#16
1573  014e 81            	ret	
1726                     	xdef	_TIM3_IRQHandler
1727                     	xdef	_reverse_bit
1728                     	xdef	_cnt
1729                     	switch	.ubsct
1730  0008               _IRTmpPacket:
1731  0008 000000000000  	ds.b	6
1732                     	xdef	_IRTmpPacket
1733                     	xdef	_IRHeaderWholeMax
1734                     	xdef	_IRHeaderWholeMin
1735                     	xdef	_IRHeaderLowMax
1736                     	xdef	_IRHeaderLowMin
1737                     	xdef	_IRValue00
1738                     	xdef	_IRValueMargin
1739                     	xdef	_IRValueStep
1740                     	xdef	_IROnTimeMax
1741                     	xdef	_IROnTimeMin
1742                     	xdef	_IRFrameReceived
1743                     	xdef	_IR_DataSampling
1744                     	xdef	_IR_ResetPacket
1745                     	xdef	_IR_Decode
1746                     	xdef	_IR_Init
1747                     	xdef	_IR_DeInit
1748                     	xref	_TIM1_ClearFlag
1749                     	xref	_TIM1_GetFlagStatus
1750                     	xref	_TIM1_GetCapture2
1751                     	xref	_TIM1_GetCapture1
1752                     	xref	_TIM1_PrescalerConfig
1753                     	xref	_TIM1_SelectMasterSlaveMode
1754                     	xref	_TIM1_SelectSlaveMode
1755                     	xref	_TIM1_UpdateRequestConfig
1756                     	xref	_TIM1_SelectInputTrigger
1757                     	xref	_TIM1_ITConfig
1758                     	xref	_TIM1_Cmd
1759                     	xref	_TIM1_PWMIConfig
1760                     	xref	_TIM1_TimeBaseInit
1761                     	xref	_TIM1_DeInit
1762                     	xref	_ITC_SetSoftwarePriority
1763                     	xref	_GPIO_Init
1764                     	xref	_GPIO_DeInit
1765                     	xref	_CLK_GetClockFreq
1766                     	xref	_CLK_HSIPrescalerConfig
1767                     	xref.b	c_lreg
1768                     	xref.b	c_x
1788                     	xref	c_llsh
1789                     	xref	c_lor
1790                     	xref	c_lursh
1791                     	xref	c_imul
1792                     	xref	c_lcmp
1793                     	xref	c_lgor
1794                     	xref	c_uitolx
1795                     	xref	c_smul
1796                     	xref	c_lmul
1797                     	xref	c_ltor
1798                     	xref	c_rtol
1799                     	xref	c_ludv
1800                     	end
