   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 52 void TIM2_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _TIM2_DeInit:
  57                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  59  0000 725f5300      	clr	21248
  60                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  62  0004 725f5303      	clr	21251
  63                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  65  0008 725f5305      	clr	21253
  66                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  68  000c 725f530a      	clr	21258
  69                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  71  0010 725f530b      	clr	21259
  72                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  74  0014 725f530a      	clr	21258
  75                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  77  0018 725f530b      	clr	21259
  78                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  80  001c 725f5307      	clr	21255
  81                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  83  0020 725f5308      	clr	21256
  84                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  86  0024 725f5309      	clr	21257
  87                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  89  0028 725f530c      	clr	21260
  90                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  92  002c 725f530d      	clr	21261
  93                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  95  0030 725f530e      	clr	21262
  96                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  98  0034 35ff530f      	mov	21263,#255
  99                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 101  0038 35ff5310      	mov	21264,#255
 102                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 104  003c 725f5311      	clr	21265
 105                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 107  0040 725f5312      	clr	21266
 108                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 110  0044 725f5313      	clr	21267
 111                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 113  0048 725f5314      	clr	21268
 114                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 116  004c 725f5315      	clr	21269
 117                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 119  0050 725f5316      	clr	21270
 120                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 122  0054 725f5304      	clr	21252
 123                     ; 81 }
 126  0058 81            	ret	
 294                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 294                     ; 90                         uint16_t TIM2_Period)
 294                     ; 91 {
 295                     .text:	section	.text,new
 296  0000               _TIM2_TimeBaseInit:
 298       00000000      OFST:	set	0
 301                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 303  0000 c7530e        	ld	21262,a
 304  0003 88            	push	a
 305                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 307  0004 7b04          	ld	a,(OFST+4,sp)
 308  0006 c7530f        	ld	21263,a
 309                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 311  0009 7b05          	ld	a,(OFST+5,sp)
 312  000b c75310        	ld	21264,a
 313                     ; 97 }
 316  000e 84            	pop	a
 317  000f 81            	ret	
 475                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 475                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 475                     ; 110                   uint16_t TIM2_Pulse,
 475                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 475                     ; 112 {
 476                     .text:	section	.text,new
 477  0000               _TIM2_OC1Init:
 479  0000 89            	pushw	x
 480  0001 88            	push	a
 481       00000001      OFST:	set	1
 484                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 486  0002 9e            	ld	a,xh
 487  0003 4d            	tnz	a
 488  0004 271e          	jreq	L61
 489  0006 9e            	ld	a,xh
 490  0007 a110          	cp	a,#16
 491  0009 2719          	jreq	L61
 492  000b 9e            	ld	a,xh
 493  000c a120          	cp	a,#32
 494  000e 2714          	jreq	L61
 495  0010 9e            	ld	a,xh
 496  0011 a130          	cp	a,#48
 497  0013 270f          	jreq	L61
 498  0015 9e            	ld	a,xh
 499  0016 a160          	cp	a,#96
 500  0018 270a          	jreq	L61
 501  001a 9e            	ld	a,xh
 502  001b a170          	cp	a,#112
 503  001d 2705          	jreq	L61
 504  001f ae0072        	ldw	x,#114
 505  0022 ad4b          	call	LC001
 506  0024               L61:
 507                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 509  0024 7b03          	ld	a,(OFST+2,sp)
 510  0026 2709          	jreq	L62
 511  0028 a111          	cp	a,#17
 512  002a 2705          	jreq	L62
 513  002c ae0073        	ldw	x,#115
 514  002f ad3e          	call	LC001
 515  0031               L62:
 516                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 518  0031 7b08          	ld	a,(OFST+7,sp)
 519  0033 2709          	jreq	L63
 520  0035 a122          	cp	a,#34
 521  0037 2705          	jreq	L63
 522  0039 ae0074        	ldw	x,#116
 523  003c ad31          	call	LC001
 524  003e               L63:
 525                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 527  003e c6530a        	ld	a,21258
 528  0041 a4fc          	and	a,#252
 529  0043 c7530a        	ld	21258,a
 530                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 530                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 532  0046 7b08          	ld	a,(OFST+7,sp)
 533  0048 a402          	and	a,#2
 534  004a 6b01          	ld	(OFST+0,sp),a
 535  004c 7b03          	ld	a,(OFST+2,sp)
 536  004e a401          	and	a,#1
 537  0050 1a01          	or	a,(OFST+0,sp)
 538  0052 ca530a        	or	a,21258
 539  0055 c7530a        	ld	21258,a
 540                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 540                     ; 126                           (uint8_t)TIM2_OCMode);
 542  0058 c65307        	ld	a,21255
 543  005b a48f          	and	a,#143
 544  005d 1a02          	or	a,(OFST+1,sp)
 545  005f c75307        	ld	21255,a
 546                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 548  0062 7b06          	ld	a,(OFST+5,sp)
 549  0064 c75311        	ld	21265,a
 550                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 552  0067 7b07          	ld	a,(OFST+6,sp)
 553  0069 c75312        	ld	21266,a
 554                     ; 131 }
 557  006c 5b03          	addw	sp,#3
 558  006e 81            	ret	
 559  006f               LC001:
 560  006f 89            	pushw	x
 561  0070 5f            	clrw	x
 562  0071 89            	pushw	x
 563  0072 ae0000        	ldw	x,#L702
 564  0075 cd0000        	call	_assert_failed
 566  0078 5b04          	addw	sp,#4
 567  007a 81            	ret	
 632                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 632                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 632                     ; 144                   uint16_t TIM2_Pulse,
 632                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 632                     ; 146 {
 633                     .text:	section	.text,new
 634  0000               _TIM2_OC2Init:
 636  0000 89            	pushw	x
 637  0001 88            	push	a
 638       00000001      OFST:	set	1
 641                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 643  0002 9e            	ld	a,xh
 644  0003 4d            	tnz	a
 645  0004 271e          	jreq	L05
 646  0006 9e            	ld	a,xh
 647  0007 a110          	cp	a,#16
 648  0009 2719          	jreq	L05
 649  000b 9e            	ld	a,xh
 650  000c a120          	cp	a,#32
 651  000e 2714          	jreq	L05
 652  0010 9e            	ld	a,xh
 653  0011 a130          	cp	a,#48
 654  0013 270f          	jreq	L05
 655  0015 9e            	ld	a,xh
 656  0016 a160          	cp	a,#96
 657  0018 270a          	jreq	L05
 658  001a 9e            	ld	a,xh
 659  001b a170          	cp	a,#112
 660  001d 2705          	jreq	L05
 661  001f ae0094        	ldw	x,#148
 662  0022 ad4b          	call	LC002
 663  0024               L05:
 664                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 666  0024 7b03          	ld	a,(OFST+2,sp)
 667  0026 2709          	jreq	L06
 668  0028 a111          	cp	a,#17
 669  002a 2705          	jreq	L06
 670  002c ae0095        	ldw	x,#149
 671  002f ad3e          	call	LC002
 672  0031               L06:
 673                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 675  0031 7b08          	ld	a,(OFST+7,sp)
 676  0033 2709          	jreq	L07
 677  0035 a122          	cp	a,#34
 678  0037 2705          	jreq	L07
 679  0039 ae0096        	ldw	x,#150
 680  003c ad31          	call	LC002
 681  003e               L07:
 682                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 684  003e c6530a        	ld	a,21258
 685  0041 a4cf          	and	a,#207
 686  0043 c7530a        	ld	21258,a
 687                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 687                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 689  0046 7b08          	ld	a,(OFST+7,sp)
 690  0048 a420          	and	a,#32
 691  004a 6b01          	ld	(OFST+0,sp),a
 692  004c 7b03          	ld	a,(OFST+2,sp)
 693  004e a410          	and	a,#16
 694  0050 1a01          	or	a,(OFST+0,sp)
 695  0052 ca530a        	or	a,21258
 696  0055 c7530a        	ld	21258,a
 697                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 697                     ; 162                           (uint8_t)TIM2_OCMode);
 699  0058 c65308        	ld	a,21256
 700  005b a48f          	and	a,#143
 701  005d 1a02          	or	a,(OFST+1,sp)
 702  005f c75308        	ld	21256,a
 703                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 705  0062 7b06          	ld	a,(OFST+5,sp)
 706  0064 c75313        	ld	21267,a
 707                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 709  0067 7b07          	ld	a,(OFST+6,sp)
 710  0069 c75314        	ld	21268,a
 711                     ; 168 }
 714  006c 5b03          	addw	sp,#3
 715  006e 81            	ret	
 716  006f               LC002:
 717  006f 89            	pushw	x
 718  0070 5f            	clrw	x
 719  0071 89            	pushw	x
 720  0072 ae0000        	ldw	x,#L702
 721  0075 cd0000        	call	_assert_failed
 723  0078 5b04          	addw	sp,#4
 724  007a 81            	ret	
 789                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 789                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 789                     ; 181                   uint16_t TIM2_Pulse,
 789                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 789                     ; 183 {
 790                     .text:	section	.text,new
 791  0000               _TIM2_OC3Init:
 793  0000 89            	pushw	x
 794  0001 88            	push	a
 795       00000001      OFST:	set	1
 798                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 800  0002 9e            	ld	a,xh
 801  0003 4d            	tnz	a
 802  0004 271e          	jreq	L201
 803  0006 9e            	ld	a,xh
 804  0007 a110          	cp	a,#16
 805  0009 2719          	jreq	L201
 806  000b 9e            	ld	a,xh
 807  000c a120          	cp	a,#32
 808  000e 2714          	jreq	L201
 809  0010 9e            	ld	a,xh
 810  0011 a130          	cp	a,#48
 811  0013 270f          	jreq	L201
 812  0015 9e            	ld	a,xh
 813  0016 a160          	cp	a,#96
 814  0018 270a          	jreq	L201
 815  001a 9e            	ld	a,xh
 816  001b a170          	cp	a,#112
 817  001d 2705          	jreq	L201
 818  001f ae00b9        	ldw	x,#185
 819  0022 ad4b          	call	LC003
 820  0024               L201:
 821                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 823  0024 7b03          	ld	a,(OFST+2,sp)
 824  0026 2709          	jreq	L211
 825  0028 a111          	cp	a,#17
 826  002a 2705          	jreq	L211
 827  002c ae00ba        	ldw	x,#186
 828  002f ad3e          	call	LC003
 829  0031               L211:
 830                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 832  0031 7b08          	ld	a,(OFST+7,sp)
 833  0033 2709          	jreq	L221
 834  0035 a122          	cp	a,#34
 835  0037 2705          	jreq	L221
 836  0039 ae00bb        	ldw	x,#187
 837  003c ad31          	call	LC003
 838  003e               L221:
 839                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 841  003e c6530b        	ld	a,21259
 842  0041 a4fc          	and	a,#252
 843  0043 c7530b        	ld	21259,a
 844                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 844                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 846  0046 7b08          	ld	a,(OFST+7,sp)
 847  0048 a402          	and	a,#2
 848  004a 6b01          	ld	(OFST+0,sp),a
 849  004c 7b03          	ld	a,(OFST+2,sp)
 850  004e a401          	and	a,#1
 851  0050 1a01          	or	a,(OFST+0,sp)
 852  0052 ca530b        	or	a,21259
 853  0055 c7530b        	ld	21259,a
 854                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 854                     ; 196                           (uint8_t)TIM2_OCMode);
 856  0058 c65309        	ld	a,21257
 857  005b a48f          	and	a,#143
 858  005d 1a02          	or	a,(OFST+1,sp)
 859  005f c75309        	ld	21257,a
 860                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 862  0062 7b06          	ld	a,(OFST+5,sp)
 863  0064 c75315        	ld	21269,a
 864                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 866  0067 7b07          	ld	a,(OFST+6,sp)
 867  0069 c75316        	ld	21270,a
 868                     ; 201 }
 871  006c 5b03          	addw	sp,#3
 872  006e 81            	ret	
 873  006f               LC003:
 874  006f 89            	pushw	x
 875  0070 5f            	clrw	x
 876  0071 89            	pushw	x
 877  0072 ae0000        	ldw	x,#L702
 878  0075 cd0000        	call	_assert_failed
 880  0078 5b04          	addw	sp,#4
 881  007a 81            	ret	
1075                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1075                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1075                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1075                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1075                     ; 216                  uint8_t TIM2_ICFilter)
1075                     ; 217 {
1076                     .text:	section	.text,new
1077  0000               _TIM2_ICInit:
1079  0000 89            	pushw	x
1080       00000000      OFST:	set	0
1083                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1085  0001 9e            	ld	a,xh
1086  0002 4d            	tnz	a
1087  0003 270f          	jreq	L431
1088  0005 9e            	ld	a,xh
1089  0006 4a            	dec	a
1090  0007 270b          	jreq	L431
1091  0009 9e            	ld	a,xh
1092  000a a102          	cp	a,#2
1093  000c 2706          	jreq	L431
1094  000e ae00db        	ldw	x,#219
1095  0011 cd0097        	call	LC004
1096  0014               L431:
1097                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1099  0014 7b02          	ld	a,(OFST+2,sp)
1100  0016 2709          	jreq	L441
1101  0018 a144          	cp	a,#68
1102  001a 2705          	jreq	L441
1103  001c ae00dc        	ldw	x,#220
1104  001f ad76          	call	LC004
1105  0021               L441:
1106                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1108  0021 7b05          	ld	a,(OFST+5,sp)
1109  0023 a101          	cp	a,#1
1110  0025 270d          	jreq	L451
1111  0027 a102          	cp	a,#2
1112  0029 2709          	jreq	L451
1113  002b a103          	cp	a,#3
1114  002d 2705          	jreq	L451
1115  002f ae00dd        	ldw	x,#221
1116  0032 ad63          	call	LC004
1117  0034               L451:
1118                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1120  0034 7b06          	ld	a,(OFST+6,sp)
1121  0036 2711          	jreq	L461
1122  0038 a104          	cp	a,#4
1123  003a 270d          	jreq	L461
1124  003c a108          	cp	a,#8
1125  003e 2709          	jreq	L461
1126  0040 a10c          	cp	a,#12
1127  0042 2705          	jreq	L461
1128  0044 ae00de        	ldw	x,#222
1129  0047 ad4e          	call	LC004
1130  0049               L461:
1131                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1133  0049 7b07          	ld	a,(OFST+7,sp)
1134  004b a110          	cp	a,#16
1135  004d 2505          	jrult	L271
1136  004f ae00df        	ldw	x,#223
1137  0052 ad43          	call	LC004
1138  0054               L271:
1139                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1141  0054 7b01          	ld	a,(OFST+1,sp)
1142  0056 2614          	jrne	L304
1143                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1143                     ; 229                (uint8_t)TIM2_ICSelection,
1143                     ; 230                (uint8_t)TIM2_ICFilter);
1145  0058 7b07          	ld	a,(OFST+7,sp)
1146  005a 88            	push	a
1147  005b 7b06          	ld	a,(OFST+6,sp)
1148  005d 97            	ld	xl,a
1149  005e 7b03          	ld	a,(OFST+3,sp)
1150  0060 95            	ld	xh,a
1151  0061 cd0000        	call	L3_TI1_Config
1153  0064 84            	pop	a
1154                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1156  0065 7b06          	ld	a,(OFST+6,sp)
1157  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1160  006a 2029          	jra	L504
1161  006c               L304:
1162                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1164  006c 4a            	dec	a
1165  006d 2614          	jrne	L704
1166                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1166                     ; 239                (uint8_t)TIM2_ICSelection,
1166                     ; 240                (uint8_t)TIM2_ICFilter);
1168  006f 7b07          	ld	a,(OFST+7,sp)
1169  0071 88            	push	a
1170  0072 7b06          	ld	a,(OFST+6,sp)
1171  0074 97            	ld	xl,a
1172  0075 7b03          	ld	a,(OFST+3,sp)
1173  0077 95            	ld	xh,a
1174  0078 cd0000        	call	L5_TI2_Config
1176  007b 84            	pop	a
1177                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1179  007c 7b06          	ld	a,(OFST+6,sp)
1180  007e cd0000        	call	_TIM2_SetIC2Prescaler
1183  0081 2012          	jra	L504
1184  0083               L704:
1185                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1185                     ; 249                (uint8_t)TIM2_ICSelection,
1185                     ; 250                (uint8_t)TIM2_ICFilter);
1187  0083 7b07          	ld	a,(OFST+7,sp)
1188  0085 88            	push	a
1189  0086 7b06          	ld	a,(OFST+6,sp)
1190  0088 97            	ld	xl,a
1191  0089 7b03          	ld	a,(OFST+3,sp)
1192  008b 95            	ld	xh,a
1193  008c cd0000        	call	L7_TI3_Config
1195  008f 84            	pop	a
1196                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1198  0090 7b06          	ld	a,(OFST+6,sp)
1199  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1201  0095               L504:
1202                     ; 255 }
1205  0095 85            	popw	x
1206  0096 81            	ret	
1207  0097               LC004:
1208  0097 89            	pushw	x
1209  0098 5f            	clrw	x
1210  0099 89            	pushw	x
1211  009a ae0000        	ldw	x,#L702
1212  009d cd0000        	call	_assert_failed
1214  00a0 5b04          	addw	sp,#4
1215  00a2 81            	ret	
1312                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1312                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1312                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1312                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1312                     ; 270                      uint8_t TIM2_ICFilter)
1312                     ; 271 {
1313                     .text:	section	.text,new
1314  0000               _TIM2_PWMIConfig:
1316  0000 89            	pushw	x
1317  0001 89            	pushw	x
1318       00000002      OFST:	set	2
1321                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1323                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1325                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1327  0002 9e            	ld	a,xh
1328  0003 4d            	tnz	a
1329  0004 270a          	jreq	L022
1330  0006 9e            	ld	a,xh
1331  0007 4a            	dec	a
1332  0008 2706          	jreq	L022
1333  000a ae0114        	ldw	x,#276
1334  000d cd00b3        	call	LC005
1335  0010               L022:
1336                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1338  0010 7b04          	ld	a,(OFST+2,sp)
1339  0012 270a          	jreq	L032
1340  0014 a144          	cp	a,#68
1341  0016 2706          	jreq	L032
1342  0018 ae0115        	ldw	x,#277
1343  001b cd00b3        	call	LC005
1344  001e               L032:
1345                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1347  001e 7b07          	ld	a,(OFST+5,sp)
1348  0020 a101          	cp	a,#1
1349  0022 270e          	jreq	L042
1350  0024 a102          	cp	a,#2
1351  0026 270a          	jreq	L042
1352  0028 a103          	cp	a,#3
1353  002a 2706          	jreq	L042
1354  002c ae0116        	ldw	x,#278
1355  002f cd00b3        	call	LC005
1356  0032               L042:
1357                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1359  0032 7b08          	ld	a,(OFST+6,sp)
1360  0034 2711          	jreq	L052
1361  0036 a104          	cp	a,#4
1362  0038 270d          	jreq	L052
1363  003a a108          	cp	a,#8
1364  003c 2709          	jreq	L052
1365  003e a10c          	cp	a,#12
1366  0040 2705          	jreq	L052
1367  0042 ae0117        	ldw	x,#279
1368  0045 ad6c          	call	LC005
1369  0047               L052:
1370                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1372  0047 7b04          	ld	a,(OFST+2,sp)
1373  0049 a144          	cp	a,#68
1374  004b 2706          	jreq	L164
1375                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1377  004d a644          	ld	a,#68
1378  004f 6b01          	ld	(OFST-1,sp),a
1380  0051 2002          	jra	L364
1381  0053               L164:
1382                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1384  0053 0f01          	clr	(OFST-1,sp)
1385  0055               L364:
1386                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1388  0055 7b07          	ld	a,(OFST+5,sp)
1389  0057 4a            	dec	a
1390  0058 2604          	jrne	L564
1391                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1393  005a a602          	ld	a,#2
1395  005c 2002          	jra	L764
1396  005e               L564:
1397                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1399  005e a601          	ld	a,#1
1400  0060               L764:
1401  0060 6b02          	ld	(OFST+0,sp),a
1402                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1404  0062 7b03          	ld	a,(OFST+1,sp)
1405  0064 2626          	jrne	L174
1406                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1406                     ; 305                (uint8_t)TIM2_ICFilter);
1408  0066 7b09          	ld	a,(OFST+7,sp)
1409  0068 88            	push	a
1410  0069 7b08          	ld	a,(OFST+6,sp)
1411  006b 97            	ld	xl,a
1412  006c 7b05          	ld	a,(OFST+3,sp)
1413  006e 95            	ld	xh,a
1414  006f cd0000        	call	L3_TI1_Config
1416  0072 84            	pop	a
1417                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1419  0073 7b08          	ld	a,(OFST+6,sp)
1420  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1422                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1424  0078 7b09          	ld	a,(OFST+7,sp)
1425  007a 88            	push	a
1426  007b 7b03          	ld	a,(OFST+1,sp)
1427  007d 97            	ld	xl,a
1428  007e 7b02          	ld	a,(OFST+0,sp)
1429  0080 95            	ld	xh,a
1430  0081 cd0000        	call	L5_TI2_Config
1432  0084 84            	pop	a
1433                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1435  0085 7b08          	ld	a,(OFST+6,sp)
1436  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1439  008a 2024          	jra	L374
1440  008c               L174:
1441                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1441                     ; 320                (uint8_t)TIM2_ICFilter);
1443  008c 7b09          	ld	a,(OFST+7,sp)
1444  008e 88            	push	a
1445  008f 7b08          	ld	a,(OFST+6,sp)
1446  0091 97            	ld	xl,a
1447  0092 7b05          	ld	a,(OFST+3,sp)
1448  0094 95            	ld	xh,a
1449  0095 cd0000        	call	L5_TI2_Config
1451  0098 84            	pop	a
1452                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1454  0099 7b08          	ld	a,(OFST+6,sp)
1455  009b cd0000        	call	_TIM2_SetIC2Prescaler
1457                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1459  009e 7b09          	ld	a,(OFST+7,sp)
1460  00a0 88            	push	a
1461  00a1 7b03          	ld	a,(OFST+1,sp)
1462  00a3 97            	ld	xl,a
1463  00a4 7b02          	ld	a,(OFST+0,sp)
1464  00a6 95            	ld	xh,a
1465  00a7 cd0000        	call	L3_TI1_Config
1467  00aa 84            	pop	a
1468                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1470  00ab 7b08          	ld	a,(OFST+6,sp)
1471  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1473  00b0               L374:
1474                     ; 331 }
1477  00b0 5b04          	addw	sp,#4
1478  00b2 81            	ret	
1479  00b3               LC005:
1480  00b3 89            	pushw	x
1481  00b4 5f            	clrw	x
1482  00b5 89            	pushw	x
1483  00b6 ae0000        	ldw	x,#L702
1484  00b9 cd0000        	call	_assert_failed
1486  00bc 5b04          	addw	sp,#4
1487  00be 81            	ret	
1543                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1543                     ; 340 {
1544                     .text:	section	.text,new
1545  0000               _TIM2_Cmd:
1547  0000 88            	push	a
1548       00000000      OFST:	set	0
1551                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1553  0001 4d            	tnz	a
1554  0002 2711          	jreq	L203
1555  0004 4a            	dec	a
1556  0005 270e          	jreq	L203
1557  0007 ae0156        	ldw	x,#342
1558  000a 89            	pushw	x
1559  000b 5f            	clrw	x
1560  000c 89            	pushw	x
1561  000d ae0000        	ldw	x,#L702
1562  0010 cd0000        	call	_assert_failed
1564  0013 5b04          	addw	sp,#4
1565  0015               L203:
1566                     ; 345   if (NewState != DISABLE)
1568  0015 7b01          	ld	a,(OFST+1,sp)
1569  0017 2706          	jreq	L325
1570                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1572  0019 72105300      	bset	21248,#0
1574  001d 2004          	jra	L525
1575  001f               L325:
1576                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1578  001f 72115300      	bres	21248,#0
1579  0023               L525:
1580                     ; 353 }
1583  0023 84            	pop	a
1584  0024 81            	ret	
1664                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1664                     ; 369 {
1665                     .text:	section	.text,new
1666  0000               _TIM2_ITConfig:
1668  0000 89            	pushw	x
1669       00000000      OFST:	set	0
1672                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1674  0001 9e            	ld	a,xh
1675  0002 4d            	tnz	a
1676  0003 2705          	jreq	L013
1677  0005 9e            	ld	a,xh
1678  0006 a110          	cp	a,#16
1679  0008 2505          	jrult	L213
1680  000a               L013:
1681  000a ae0173        	ldw	x,#371
1682  000d ad22          	call	LC006
1683  000f               L213:
1684                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1686  000f 7b02          	ld	a,(OFST+2,sp)
1687  0011 2708          	jreq	L223
1688  0013 4a            	dec	a
1689  0014 2705          	jreq	L223
1690  0016 ae0174        	ldw	x,#372
1691  0019 ad16          	call	LC006
1692  001b               L223:
1693                     ; 374   if (NewState != DISABLE)
1695  001b 7b02          	ld	a,(OFST+2,sp)
1696  001d 2707          	jreq	L565
1697                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1699  001f c65303        	ld	a,21251
1700  0022 1a01          	or	a,(OFST+1,sp)
1702  0024 2006          	jra	L765
1703  0026               L565:
1704                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1706  0026 7b01          	ld	a,(OFST+1,sp)
1707  0028 43            	cpl	a
1708  0029 c45303        	and	a,21251
1709  002c               L765:
1710  002c c75303        	ld	21251,a
1711                     ; 384 }
1714  002f 85            	popw	x
1715  0030 81            	ret	
1716  0031               LC006:
1717  0031 89            	pushw	x
1718  0032 5f            	clrw	x
1719  0033 89            	pushw	x
1720  0034 ae0000        	ldw	x,#L702
1721  0037 cd0000        	call	_assert_failed
1723  003a 5b04          	addw	sp,#4
1724  003c 81            	ret	
1761                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1761                     ; 393 {
1762                     .text:	section	.text,new
1763  0000               _TIM2_UpdateDisableConfig:
1765  0000 88            	push	a
1766       00000000      OFST:	set	0
1769                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1771  0001 4d            	tnz	a
1772  0002 2711          	jreq	L433
1773  0004 4a            	dec	a
1774  0005 270e          	jreq	L433
1775  0007 ae018b        	ldw	x,#395
1776  000a 89            	pushw	x
1777  000b 5f            	clrw	x
1778  000c 89            	pushw	x
1779  000d ae0000        	ldw	x,#L702
1780  0010 cd0000        	call	_assert_failed
1782  0013 5b04          	addw	sp,#4
1783  0015               L433:
1784                     ; 398   if (NewState != DISABLE)
1786  0015 7b01          	ld	a,(OFST+1,sp)
1787  0017 2706          	jreq	L706
1788                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1790  0019 72125300      	bset	21248,#1
1792  001d 2004          	jra	L116
1793  001f               L706:
1794                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1796  001f 72135300      	bres	21248,#1
1797  0023               L116:
1798                     ; 406 }
1801  0023 84            	pop	a
1802  0024 81            	ret	
1861                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1861                     ; 417 {
1862                     .text:	section	.text,new
1863  0000               _TIM2_UpdateRequestConfig:
1865  0000 88            	push	a
1866       00000000      OFST:	set	0
1869                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1871  0001 4d            	tnz	a
1872  0002 2711          	jreq	L643
1873  0004 4a            	dec	a
1874  0005 270e          	jreq	L643
1875  0007 ae01a3        	ldw	x,#419
1876  000a 89            	pushw	x
1877  000b 5f            	clrw	x
1878  000c 89            	pushw	x
1879  000d ae0000        	ldw	x,#L702
1880  0010 cd0000        	call	_assert_failed
1882  0013 5b04          	addw	sp,#4
1883  0015               L643:
1884                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1886  0015 7b01          	ld	a,(OFST+1,sp)
1887  0017 2706          	jreq	L146
1888                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1890  0019 72145300      	bset	21248,#2
1892  001d 2004          	jra	L346
1893  001f               L146:
1894                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1896  001f 72155300      	bres	21248,#2
1897  0023               L346:
1898                     ; 430 }
1901  0023 84            	pop	a
1902  0024 81            	ret	
1960                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1960                     ; 441 {
1961                     .text:	section	.text,new
1962  0000               _TIM2_SelectOnePulseMode:
1964  0000 88            	push	a
1965       00000000      OFST:	set	0
1968                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1970  0001 a101          	cp	a,#1
1971  0003 2711          	jreq	L063
1972  0005 4d            	tnz	a
1973  0006 270e          	jreq	L063
1974  0008 ae01bb        	ldw	x,#443
1975  000b 89            	pushw	x
1976  000c 5f            	clrw	x
1977  000d 89            	pushw	x
1978  000e ae0000        	ldw	x,#L702
1979  0011 cd0000        	call	_assert_failed
1981  0014 5b04          	addw	sp,#4
1982  0016               L063:
1983                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1985  0016 7b01          	ld	a,(OFST+1,sp)
1986  0018 2706          	jreq	L376
1987                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1989  001a 72165300      	bset	21248,#3
1991  001e 2004          	jra	L576
1992  0020               L376:
1993                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1995  0020 72175300      	bres	21248,#3
1996  0024               L576:
1997                     ; 454 }
2000  0024 84            	pop	a
2001  0025 81            	ret	
2070                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2070                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2070                     ; 486 {
2071                     .text:	section	.text,new
2072  0000               _TIM2_PrescalerConfig:
2074  0000 89            	pushw	x
2075       00000000      OFST:	set	0
2078                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2080  0001 9f            	ld	a,xl
2081  0002 4d            	tnz	a
2082  0003 2709          	jreq	L273
2083  0005 9f            	ld	a,xl
2084  0006 4a            	dec	a
2085  0007 2705          	jreq	L273
2086  0009 ae01e8        	ldw	x,#488
2087  000c ad51          	call	LC007
2088  000e               L273:
2089                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2091  000e 7b01          	ld	a,(OFST+1,sp)
2092  0010 2743          	jreq	L204
2093  0012 a101          	cp	a,#1
2094  0014 273f          	jreq	L204
2095  0016 a102          	cp	a,#2
2096  0018 273b          	jreq	L204
2097  001a a103          	cp	a,#3
2098  001c 2737          	jreq	L204
2099  001e a104          	cp	a,#4
2100  0020 2733          	jreq	L204
2101  0022 a105          	cp	a,#5
2102  0024 272f          	jreq	L204
2103  0026 a106          	cp	a,#6
2104  0028 272b          	jreq	L204
2105  002a a107          	cp	a,#7
2106  002c 2727          	jreq	L204
2107  002e a108          	cp	a,#8
2108  0030 2723          	jreq	L204
2109  0032 a109          	cp	a,#9
2110  0034 271f          	jreq	L204
2111  0036 a10a          	cp	a,#10
2112  0038 271b          	jreq	L204
2113  003a a10b          	cp	a,#11
2114  003c 2717          	jreq	L204
2115  003e a10c          	cp	a,#12
2116  0040 2713          	jreq	L204
2117  0042 a10d          	cp	a,#13
2118  0044 270f          	jreq	L204
2119  0046 a10e          	cp	a,#14
2120  0048 270b          	jreq	L204
2121  004a a10f          	cp	a,#15
2122  004c 2707          	jreq	L204
2123  004e ae01e9        	ldw	x,#489
2124  0051 ad0c          	call	LC007
2125  0053 7b01          	ld	a,(OFST+1,sp)
2126  0055               L204:
2127                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2129  0055 c7530e        	ld	21262,a
2130                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2132  0058 7b02          	ld	a,(OFST+2,sp)
2133  005a c75306        	ld	21254,a
2134                     ; 496 }
2137  005d 85            	popw	x
2138  005e 81            	ret	
2139  005f               LC007:
2140  005f 89            	pushw	x
2141  0060 5f            	clrw	x
2142  0061 89            	pushw	x
2143  0062 ae0000        	ldw	x,#L702
2144  0065 cd0000        	call	_assert_failed
2146  0068 5b04          	addw	sp,#4
2147  006a 81            	ret	
2206                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2206                     ; 508 {
2207                     .text:	section	.text,new
2208  0000               _TIM2_ForcedOC1Config:
2210  0000 88            	push	a
2211       00000000      OFST:	set	0
2214                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2216  0001 a150          	cp	a,#80
2217  0003 2712          	jreq	L414
2218  0005 a140          	cp	a,#64
2219  0007 270e          	jreq	L414
2220  0009 ae01fe        	ldw	x,#510
2221  000c 89            	pushw	x
2222  000d 5f            	clrw	x
2223  000e 89            	pushw	x
2224  000f ae0000        	ldw	x,#L702
2225  0012 cd0000        	call	_assert_failed
2227  0015 5b04          	addw	sp,#4
2228  0017               L414:
2229                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2229                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2231  0017 c65307        	ld	a,21255
2232  001a a48f          	and	a,#143
2233  001c 1a01          	or	a,(OFST+1,sp)
2234  001e c75307        	ld	21255,a
2235                     ; 515 }
2238  0021 84            	pop	a
2239  0022 81            	ret	
2276                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2276                     ; 527 {
2277                     .text:	section	.text,new
2278  0000               _TIM2_ForcedOC2Config:
2280  0000 88            	push	a
2281       00000000      OFST:	set	0
2284                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2286  0001 a150          	cp	a,#80
2287  0003 2712          	jreq	L624
2288  0005 a140          	cp	a,#64
2289  0007 270e          	jreq	L624
2290  0009 ae0211        	ldw	x,#529
2291  000c 89            	pushw	x
2292  000d 5f            	clrw	x
2293  000e 89            	pushw	x
2294  000f ae0000        	ldw	x,#L702
2295  0012 cd0000        	call	_assert_failed
2297  0015 5b04          	addw	sp,#4
2298  0017               L624:
2299                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2299                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2301  0017 c65308        	ld	a,21256
2302  001a a48f          	and	a,#143
2303  001c 1a01          	or	a,(OFST+1,sp)
2304  001e c75308        	ld	21256,a
2305                     ; 534 }
2308  0021 84            	pop	a
2309  0022 81            	ret	
2346                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2346                     ; 546 {
2347                     .text:	section	.text,new
2348  0000               _TIM2_ForcedOC3Config:
2350  0000 88            	push	a
2351       00000000      OFST:	set	0
2354                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2356  0001 a150          	cp	a,#80
2357  0003 2712          	jreq	L044
2358  0005 a140          	cp	a,#64
2359  0007 270e          	jreq	L044
2360  0009 ae0224        	ldw	x,#548
2361  000c 89            	pushw	x
2362  000d 5f            	clrw	x
2363  000e 89            	pushw	x
2364  000f ae0000        	ldw	x,#L702
2365  0012 cd0000        	call	_assert_failed
2367  0015 5b04          	addw	sp,#4
2368  0017               L044:
2369                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2369                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2371  0017 c65309        	ld	a,21257
2372  001a a48f          	and	a,#143
2373  001c 1a01          	or	a,(OFST+1,sp)
2374  001e c75309        	ld	21257,a
2375                     ; 553 }
2378  0021 84            	pop	a
2379  0022 81            	ret	
2416                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2416                     ; 562 {
2417                     .text:	section	.text,new
2418  0000               _TIM2_ARRPreloadConfig:
2420  0000 88            	push	a
2421       00000000      OFST:	set	0
2424                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2426  0001 4d            	tnz	a
2427  0002 2711          	jreq	L254
2428  0004 4a            	dec	a
2429  0005 270e          	jreq	L254
2430  0007 ae0234        	ldw	x,#564
2431  000a 89            	pushw	x
2432  000b 5f            	clrw	x
2433  000c 89            	pushw	x
2434  000d ae0000        	ldw	x,#L702
2435  0010 cd0000        	call	_assert_failed
2437  0013 5b04          	addw	sp,#4
2438  0015               L254:
2439                     ; 567   if (NewState != DISABLE)
2441  0015 7b01          	ld	a,(OFST+1,sp)
2442  0017 2706          	jreq	L1301
2443                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2445  0019 721e5300      	bset	21248,#7
2447  001d 2004          	jra	L3301
2448  001f               L1301:
2449                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2451  001f 721f5300      	bres	21248,#7
2452  0023               L3301:
2453                     ; 575 }
2456  0023 84            	pop	a
2457  0024 81            	ret	
2494                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2494                     ; 584 {
2495                     .text:	section	.text,new
2496  0000               _TIM2_OC1PreloadConfig:
2498  0000 88            	push	a
2499       00000000      OFST:	set	0
2502                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2504  0001 4d            	tnz	a
2505  0002 2711          	jreq	L464
2506  0004 4a            	dec	a
2507  0005 270e          	jreq	L464
2508  0007 ae024a        	ldw	x,#586
2509  000a 89            	pushw	x
2510  000b 5f            	clrw	x
2511  000c 89            	pushw	x
2512  000d ae0000        	ldw	x,#L702
2513  0010 cd0000        	call	_assert_failed
2515  0013 5b04          	addw	sp,#4
2516  0015               L464:
2517                     ; 589   if (NewState != DISABLE)
2519  0015 7b01          	ld	a,(OFST+1,sp)
2520  0017 2706          	jreq	L3501
2521                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2523  0019 72165307      	bset	21255,#3
2525  001d 2004          	jra	L5501
2526  001f               L3501:
2527                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2529  001f 72175307      	bres	21255,#3
2530  0023               L5501:
2531                     ; 597 }
2534  0023 84            	pop	a
2535  0024 81            	ret	
2572                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2572                     ; 606 {
2573                     .text:	section	.text,new
2574  0000               _TIM2_OC2PreloadConfig:
2576  0000 88            	push	a
2577       00000000      OFST:	set	0
2580                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2582  0001 4d            	tnz	a
2583  0002 2711          	jreq	L674
2584  0004 4a            	dec	a
2585  0005 270e          	jreq	L674
2586  0007 ae0260        	ldw	x,#608
2587  000a 89            	pushw	x
2588  000b 5f            	clrw	x
2589  000c 89            	pushw	x
2590  000d ae0000        	ldw	x,#L702
2591  0010 cd0000        	call	_assert_failed
2593  0013 5b04          	addw	sp,#4
2594  0015               L674:
2595                     ; 611   if (NewState != DISABLE)
2597  0015 7b01          	ld	a,(OFST+1,sp)
2598  0017 2706          	jreq	L5701
2599                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2601  0019 72165308      	bset	21256,#3
2603  001d 2004          	jra	L7701
2604  001f               L5701:
2605                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2607  001f 72175308      	bres	21256,#3
2608  0023               L7701:
2609                     ; 619 }
2612  0023 84            	pop	a
2613  0024 81            	ret	
2650                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2650                     ; 628 {
2651                     .text:	section	.text,new
2652  0000               _TIM2_OC3PreloadConfig:
2654  0000 88            	push	a
2655       00000000      OFST:	set	0
2658                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2660  0001 4d            	tnz	a
2661  0002 2711          	jreq	L015
2662  0004 4a            	dec	a
2663  0005 270e          	jreq	L015
2664  0007 ae0276        	ldw	x,#630
2665  000a 89            	pushw	x
2666  000b 5f            	clrw	x
2667  000c 89            	pushw	x
2668  000d ae0000        	ldw	x,#L702
2669  0010 cd0000        	call	_assert_failed
2671  0013 5b04          	addw	sp,#4
2672  0015               L015:
2673                     ; 633   if (NewState != DISABLE)
2675  0015 7b01          	ld	a,(OFST+1,sp)
2676  0017 2706          	jreq	L7111
2677                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2679  0019 72165309      	bset	21257,#3
2681  001d 2004          	jra	L1211
2682  001f               L7111:
2683                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2685  001f 72175309      	bres	21257,#3
2686  0023               L1211:
2687                     ; 641 }
2690  0023 84            	pop	a
2691  0024 81            	ret	
2765                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2765                     ; 654 {
2766                     .text:	section	.text,new
2767  0000               _TIM2_GenerateEvent:
2769  0000 88            	push	a
2770       00000000      OFST:	set	0
2773                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2775  0001 4d            	tnz	a
2776  0002 260e          	jrne	L025
2777  0004 ae0290        	ldw	x,#656
2778  0007 89            	pushw	x
2779  0008 5f            	clrw	x
2780  0009 89            	pushw	x
2781  000a ae0000        	ldw	x,#L702
2782  000d cd0000        	call	_assert_failed
2784  0010 5b04          	addw	sp,#4
2785  0012               L025:
2786                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2788  0012 7b01          	ld	a,(OFST+1,sp)
2789  0014 c75306        	ld	21254,a
2790                     ; 660 }
2793  0017 84            	pop	a
2794  0018 81            	ret	
2831                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2831                     ; 671 {
2832                     .text:	section	.text,new
2833  0000               _TIM2_OC1PolarityConfig:
2835  0000 88            	push	a
2836       00000000      OFST:	set	0
2839                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2841  0001 4d            	tnz	a
2842  0002 2712          	jreq	L235
2843  0004 a122          	cp	a,#34
2844  0006 270e          	jreq	L235
2845  0008 ae02a1        	ldw	x,#673
2846  000b 89            	pushw	x
2847  000c 5f            	clrw	x
2848  000d 89            	pushw	x
2849  000e ae0000        	ldw	x,#L702
2850  0011 cd0000        	call	_assert_failed
2852  0014 5b04          	addw	sp,#4
2853  0016               L235:
2854                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2856  0016 7b01          	ld	a,(OFST+1,sp)
2857  0018 2706          	jreq	L3711
2858                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2860  001a 7212530a      	bset	21258,#1
2862  001e 2004          	jra	L5711
2863  0020               L3711:
2864                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2866  0020 7213530a      	bres	21258,#1
2867  0024               L5711:
2868                     ; 684 }
2871  0024 84            	pop	a
2872  0025 81            	ret	
2909                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2909                     ; 695 {
2910                     .text:	section	.text,new
2911  0000               _TIM2_OC2PolarityConfig:
2913  0000 88            	push	a
2914       00000000      OFST:	set	0
2917                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2919  0001 4d            	tnz	a
2920  0002 2712          	jreq	L445
2921  0004 a122          	cp	a,#34
2922  0006 270e          	jreq	L445
2923  0008 ae02b9        	ldw	x,#697
2924  000b 89            	pushw	x
2925  000c 5f            	clrw	x
2926  000d 89            	pushw	x
2927  000e ae0000        	ldw	x,#L702
2928  0011 cd0000        	call	_assert_failed
2930  0014 5b04          	addw	sp,#4
2931  0016               L445:
2932                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2934  0016 7b01          	ld	a,(OFST+1,sp)
2935  0018 2706          	jreq	L5121
2936                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2938  001a 721a530a      	bset	21258,#5
2940  001e 2004          	jra	L7121
2941  0020               L5121:
2942                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2944  0020 721b530a      	bres	21258,#5
2945  0024               L7121:
2946                     ; 708 }
2949  0024 84            	pop	a
2950  0025 81            	ret	
2987                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2987                     ; 719 {
2988                     .text:	section	.text,new
2989  0000               _TIM2_OC3PolarityConfig:
2991  0000 88            	push	a
2992       00000000      OFST:	set	0
2995                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2997  0001 4d            	tnz	a
2998  0002 2712          	jreq	L655
2999  0004 a122          	cp	a,#34
3000  0006 270e          	jreq	L655
3001  0008 ae02d1        	ldw	x,#721
3002  000b 89            	pushw	x
3003  000c 5f            	clrw	x
3004  000d 89            	pushw	x
3005  000e ae0000        	ldw	x,#L702
3006  0011 cd0000        	call	_assert_failed
3008  0014 5b04          	addw	sp,#4
3009  0016               L655:
3010                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3012  0016 7b01          	ld	a,(OFST+1,sp)
3013  0018 2706          	jreq	L7321
3014                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3016  001a 7212530b      	bset	21259,#1
3018  001e 2004          	jra	L1421
3019  0020               L7321:
3020                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3022  0020 7213530b      	bres	21259,#1
3023  0024               L1421:
3024                     ; 732 }
3027  0024 84            	pop	a
3028  0025 81            	ret	
3074                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3074                     ; 746 {
3075                     .text:	section	.text,new
3076  0000               _TIM2_CCxCmd:
3078  0000 89            	pushw	x
3079       00000000      OFST:	set	0
3082                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3084  0001 9e            	ld	a,xh
3085  0002 4d            	tnz	a
3086  0003 270e          	jreq	L075
3087  0005 9e            	ld	a,xh
3088  0006 4a            	dec	a
3089  0007 270a          	jreq	L075
3090  0009 9e            	ld	a,xh
3091  000a a102          	cp	a,#2
3092  000c 2705          	jreq	L075
3093  000e ae02ec        	ldw	x,#748
3094  0011 ad43          	call	LC008
3095  0013               L075:
3096                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3098  0013 7b02          	ld	a,(OFST+2,sp)
3099  0015 2708          	jreq	L006
3100  0017 4a            	dec	a
3101  0018 2705          	jreq	L006
3102  001a ae02ed        	ldw	x,#749
3103  001d ad37          	call	LC008
3104  001f               L006:
3105                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3107  001f 7b01          	ld	a,(OFST+1,sp)
3108  0021 2610          	jrne	L5621
3109                     ; 754     if (NewState != DISABLE)
3111  0023 7b02          	ld	a,(OFST+2,sp)
3112  0025 2706          	jreq	L7621
3113                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3115  0027 7210530a      	bset	21258,#0
3117  002b 2027          	jra	L3721
3118  002d               L7621:
3119                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3121  002d 7211530a      	bres	21258,#0
3122  0031 2021          	jra	L3721
3123  0033               L5621:
3124                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3126  0033 4a            	dec	a
3127  0034 2610          	jrne	L5721
3128                     ; 767     if (NewState != DISABLE)
3130  0036 7b02          	ld	a,(OFST+2,sp)
3131  0038 2706          	jreq	L7721
3132                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3134  003a 7218530a      	bset	21258,#4
3136  003e 2014          	jra	L3721
3137  0040               L7721:
3138                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3140  0040 7219530a      	bres	21258,#4
3141  0044 200e          	jra	L3721
3142  0046               L5721:
3143                     ; 779     if (NewState != DISABLE)
3145  0046 7b02          	ld	a,(OFST+2,sp)
3146  0048 2706          	jreq	L5031
3147                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3149  004a 7210530b      	bset	21259,#0
3151  004e 2004          	jra	L3721
3152  0050               L5031:
3153                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3155  0050 7211530b      	bres	21259,#0
3156  0054               L3721:
3157                     ; 788 }
3160  0054 85            	popw	x
3161  0055 81            	ret	
3162  0056               LC008:
3163  0056 89            	pushw	x
3164  0057 5f            	clrw	x
3165  0058 89            	pushw	x
3166  0059 ae0000        	ldw	x,#L702
3167  005c cd0000        	call	_assert_failed
3169  005f 5b04          	addw	sp,#4
3170  0061 81            	ret	
3216                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3216                     ; 811 {
3217                     .text:	section	.text,new
3218  0000               _TIM2_SelectOCxM:
3220  0000 89            	pushw	x
3221       00000000      OFST:	set	0
3224                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3226  0001 9e            	ld	a,xh
3227  0002 4d            	tnz	a
3228  0003 270e          	jreq	L216
3229  0005 9e            	ld	a,xh
3230  0006 4a            	dec	a
3231  0007 270a          	jreq	L216
3232  0009 9e            	ld	a,xh
3233  000a a102          	cp	a,#2
3234  000c 2705          	jreq	L216
3235  000e ae032d        	ldw	x,#813
3236  0011 ad5c          	call	LC009
3237  0013               L216:
3238                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3240  0013 7b02          	ld	a,(OFST+2,sp)
3241  0015 2721          	jreq	L226
3242  0017 a110          	cp	a,#16
3243  0019 271d          	jreq	L226
3244  001b a120          	cp	a,#32
3245  001d 2719          	jreq	L226
3246  001f a130          	cp	a,#48
3247  0021 2715          	jreq	L226
3248  0023 a160          	cp	a,#96
3249  0025 2711          	jreq	L226
3250  0027 a170          	cp	a,#112
3251  0029 270d          	jreq	L226
3252  002b a150          	cp	a,#80
3253  002d 2709          	jreq	L226
3254  002f a140          	cp	a,#64
3255  0031 2705          	jreq	L226
3256  0033 ae032e        	ldw	x,#814
3257  0036 ad37          	call	LC009
3258  0038               L226:
3259                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3261  0038 7b01          	ld	a,(OFST+1,sp)
3262  003a 2610          	jrne	L3331
3263                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3265  003c 7211530a      	bres	21258,#0
3266                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3266                     ; 823                             | (uint8_t)TIM2_OCMode);
3268  0040 c65307        	ld	a,21255
3269  0043 a48f          	and	a,#143
3270  0045 1a02          	or	a,(OFST+2,sp)
3271  0047 c75307        	ld	21255,a
3273  004a 2021          	jra	L5331
3274  004c               L3331:
3275                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3277  004c 4a            	dec	a
3278  004d 2610          	jrne	L7331
3279                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3281  004f 7219530a      	bres	21258,#4
3282                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3282                     ; 832                             | (uint8_t)TIM2_OCMode);
3284  0053 c65308        	ld	a,21256
3285  0056 a48f          	and	a,#143
3286  0058 1a02          	or	a,(OFST+2,sp)
3287  005a c75308        	ld	21256,a
3289  005d 200e          	jra	L5331
3290  005f               L7331:
3291                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3293  005f 7211530b      	bres	21259,#0
3294                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3294                     ; 841                             | (uint8_t)TIM2_OCMode);
3296  0063 c65309        	ld	a,21257
3297  0066 a48f          	and	a,#143
3298  0068 1a02          	or	a,(OFST+2,sp)
3299  006a c75309        	ld	21257,a
3300  006d               L5331:
3301                     ; 843 }
3304  006d 85            	popw	x
3305  006e 81            	ret	
3306  006f               LC009:
3307  006f 89            	pushw	x
3308  0070 5f            	clrw	x
3309  0071 89            	pushw	x
3310  0072 ae0000        	ldw	x,#L702
3311  0075 cd0000        	call	_assert_failed
3313  0078 5b04          	addw	sp,#4
3314  007a 81            	ret	
3348                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3348                     ; 852 {
3349                     .text:	section	.text,new
3350  0000               _TIM2_SetCounter:
3354                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3356  0000 9e            	ld	a,xh
3357  0001 c7530c        	ld	21260,a
3358                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3360  0004 9f            	ld	a,xl
3361  0005 c7530d        	ld	21261,a
3362                     ; 856 }
3365  0008 81            	ret	
3399                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3399                     ; 865 {
3400                     .text:	section	.text,new
3401  0000               _TIM2_SetAutoreload:
3405                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3407  0000 9e            	ld	a,xh
3408  0001 c7530f        	ld	21263,a
3409                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3411  0004 9f            	ld	a,xl
3412  0005 c75310        	ld	21264,a
3413                     ; 869 }
3416  0008 81            	ret	
3450                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3450                     ; 878 {
3451                     .text:	section	.text,new
3452  0000               _TIM2_SetCompare1:
3456                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3458  0000 9e            	ld	a,xh
3459  0001 c75311        	ld	21265,a
3460                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3462  0004 9f            	ld	a,xl
3463  0005 c75312        	ld	21266,a
3464                     ; 882 }
3467  0008 81            	ret	
3501                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3501                     ; 891 {
3502                     .text:	section	.text,new
3503  0000               _TIM2_SetCompare2:
3507                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3509  0000 9e            	ld	a,xh
3510  0001 c75313        	ld	21267,a
3511                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3513  0004 9f            	ld	a,xl
3514  0005 c75314        	ld	21268,a
3515                     ; 895 }
3518  0008 81            	ret	
3552                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3552                     ; 904 {
3553                     .text:	section	.text,new
3554  0000               _TIM2_SetCompare3:
3558                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3560  0000 9e            	ld	a,xh
3561  0001 c75315        	ld	21269,a
3562                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3564  0004 9f            	ld	a,xl
3565  0005 c75316        	ld	21270,a
3566                     ; 908 }
3569  0008 81            	ret	
3606                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3606                     ; 921 {
3607                     .text:	section	.text,new
3608  0000               _TIM2_SetIC1Prescaler:
3610  0000 88            	push	a
3611       00000000      OFST:	set	0
3614                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3616  0001 4d            	tnz	a
3617  0002 271a          	jreq	L646
3618  0004 a104          	cp	a,#4
3619  0006 2716          	jreq	L646
3620  0008 a108          	cp	a,#8
3621  000a 2712          	jreq	L646
3622  000c a10c          	cp	a,#12
3623  000e 270e          	jreq	L646
3624  0010 ae039b        	ldw	x,#923
3625  0013 89            	pushw	x
3626  0014 5f            	clrw	x
3627  0015 89            	pushw	x
3628  0016 ae0000        	ldw	x,#L702
3629  0019 cd0000        	call	_assert_failed
3631  001c 5b04          	addw	sp,#4
3632  001e               L646:
3633                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3633                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3635  001e c65307        	ld	a,21255
3636  0021 a4f3          	and	a,#243
3637  0023 1a01          	or	a,(OFST+1,sp)
3638  0025 c75307        	ld	21255,a
3639                     ; 928 }
3642  0028 84            	pop	a
3643  0029 81            	ret	
3680                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3680                     ; 941 {
3681                     .text:	section	.text,new
3682  0000               _TIM2_SetIC2Prescaler:
3684  0000 88            	push	a
3685       00000000      OFST:	set	0
3688                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3690  0001 4d            	tnz	a
3691  0002 271a          	jreq	L066
3692  0004 a104          	cp	a,#4
3693  0006 2716          	jreq	L066
3694  0008 a108          	cp	a,#8
3695  000a 2712          	jreq	L066
3696  000c a10c          	cp	a,#12
3697  000e 270e          	jreq	L066
3698  0010 ae03af        	ldw	x,#943
3699  0013 89            	pushw	x
3700  0014 5f            	clrw	x
3701  0015 89            	pushw	x
3702  0016 ae0000        	ldw	x,#L702
3703  0019 cd0000        	call	_assert_failed
3705  001c 5b04          	addw	sp,#4
3706  001e               L066:
3707                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3707                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3709  001e c65308        	ld	a,21256
3710  0021 a4f3          	and	a,#243
3711  0023 1a01          	or	a,(OFST+1,sp)
3712  0025 c75308        	ld	21256,a
3713                     ; 948 }
3716  0028 84            	pop	a
3717  0029 81            	ret	
3754                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3754                     ; 961 {
3755                     .text:	section	.text,new
3756  0000               _TIM2_SetIC3Prescaler:
3758  0000 88            	push	a
3759       00000000      OFST:	set	0
3762                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3764  0001 4d            	tnz	a
3765  0002 271a          	jreq	L276
3766  0004 a104          	cp	a,#4
3767  0006 2716          	jreq	L276
3768  0008 a108          	cp	a,#8
3769  000a 2712          	jreq	L276
3770  000c a10c          	cp	a,#12
3771  000e 270e          	jreq	L276
3772  0010 ae03c4        	ldw	x,#964
3773  0013 89            	pushw	x
3774  0014 5f            	clrw	x
3775  0015 89            	pushw	x
3776  0016 ae0000        	ldw	x,#L702
3777  0019 cd0000        	call	_assert_failed
3779  001c 5b04          	addw	sp,#4
3780  001e               L276:
3781                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3781                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3783  001e c65309        	ld	a,21257
3784  0021 a4f3          	and	a,#243
3785  0023 1a01          	or	a,(OFST+1,sp)
3786  0025 c75309        	ld	21257,a
3787                     ; 968 }
3790  0028 84            	pop	a
3791  0029 81            	ret	
3843                     ; 975 uint16_t TIM2_GetCapture1(void)
3843                     ; 976 {
3844                     .text:	section	.text,new
3845  0000               _TIM2_GetCapture1:
3847  0000 5204          	subw	sp,#4
3848       00000004      OFST:	set	4
3851                     ; 978   uint16_t tmpccr1 = 0;
3853                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3857                     ; 981   tmpccr1h = TIM2->CCR1H;
3859  0002 c65311        	ld	a,21265
3860  0005 6b02          	ld	(OFST-2,sp),a
3861                     ; 982   tmpccr1l = TIM2->CCR1L;
3863  0007 c65312        	ld	a,21266
3864  000a 6b01          	ld	(OFST-3,sp),a
3865                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3867  000c 5f            	clrw	x
3868  000d 97            	ld	xl,a
3869  000e 1f03          	ldw	(OFST-1,sp),x
3870                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3872  0010 5f            	clrw	x
3873  0011 7b02          	ld	a,(OFST-2,sp)
3874  0013 97            	ld	xl,a
3875  0014 7b04          	ld	a,(OFST+0,sp)
3876  0016 01            	rrwa	x,a
3877  0017 1a03          	or	a,(OFST-1,sp)
3878  0019 01            	rrwa	x,a
3879                     ; 987   return (uint16_t)tmpccr1;
3883  001a 5b04          	addw	sp,#4
3884  001c 81            	ret	
3936                     ; 995 uint16_t TIM2_GetCapture2(void)
3936                     ; 996 {
3937                     .text:	section	.text,new
3938  0000               _TIM2_GetCapture2:
3940  0000 5204          	subw	sp,#4
3941       00000004      OFST:	set	4
3944                     ; 998   uint16_t tmpccr2 = 0;
3946                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3950                     ; 1001   tmpccr2h = TIM2->CCR2H;
3952  0002 c65313        	ld	a,21267
3953  0005 6b02          	ld	(OFST-2,sp),a
3954                     ; 1002   tmpccr2l = TIM2->CCR2L;
3956  0007 c65314        	ld	a,21268
3957  000a 6b01          	ld	(OFST-3,sp),a
3958                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3960  000c 5f            	clrw	x
3961  000d 97            	ld	xl,a
3962  000e 1f03          	ldw	(OFST-1,sp),x
3963                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3965  0010 5f            	clrw	x
3966  0011 7b02          	ld	a,(OFST-2,sp)
3967  0013 97            	ld	xl,a
3968  0014 7b04          	ld	a,(OFST+0,sp)
3969  0016 01            	rrwa	x,a
3970  0017 1a03          	or	a,(OFST-1,sp)
3971  0019 01            	rrwa	x,a
3972                     ; 1007   return (uint16_t)tmpccr2;
3976  001a 5b04          	addw	sp,#4
3977  001c 81            	ret	
4029                     ; 1015 uint16_t TIM2_GetCapture3(void)
4029                     ; 1016 {
4030                     .text:	section	.text,new
4031  0000               _TIM2_GetCapture3:
4033  0000 5204          	subw	sp,#4
4034       00000004      OFST:	set	4
4037                     ; 1018   uint16_t tmpccr3 = 0;
4039                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4043                     ; 1021   tmpccr3h = TIM2->CCR3H;
4045  0002 c65315        	ld	a,21269
4046  0005 6b02          	ld	(OFST-2,sp),a
4047                     ; 1022   tmpccr3l = TIM2->CCR3L;
4049  0007 c65316        	ld	a,21270
4050  000a 6b01          	ld	(OFST-3,sp),a
4051                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4053  000c 5f            	clrw	x
4054  000d 97            	ld	xl,a
4055  000e 1f03          	ldw	(OFST-1,sp),x
4056                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4058  0010 5f            	clrw	x
4059  0011 7b02          	ld	a,(OFST-2,sp)
4060  0013 97            	ld	xl,a
4061  0014 7b04          	ld	a,(OFST+0,sp)
4062  0016 01            	rrwa	x,a
4063  0017 1a03          	or	a,(OFST-1,sp)
4064  0019 01            	rrwa	x,a
4065                     ; 1027   return (uint16_t)tmpccr3;
4069  001a 5b04          	addw	sp,#4
4070  001c 81            	ret	
4104                     ; 1035 uint16_t TIM2_GetCounter(void)
4104                     ; 1036 {
4105                     .text:	section	.text,new
4106  0000               _TIM2_GetCounter:
4108  0000 89            	pushw	x
4109       00000002      OFST:	set	2
4112                     ; 1037   uint16_t tmpcntr = 0;
4114                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4116  0001 c6530c        	ld	a,21260
4117  0004 97            	ld	xl,a
4118  0005 4f            	clr	a
4119  0006 02            	rlwa	x,a
4120  0007 1f01          	ldw	(OFST-1,sp),x
4121                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4123  0009 5f            	clrw	x
4124  000a c6530d        	ld	a,21261
4125  000d 97            	ld	xl,a
4126  000e 01            	rrwa	x,a
4127  000f 1a02          	or	a,(OFST+0,sp)
4128  0011 01            	rrwa	x,a
4129  0012 1a01          	or	a,(OFST-1,sp)
4130  0014 01            	rrwa	x,a
4133  0015 5b02          	addw	sp,#2
4134  0017 81            	ret	
4158                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4158                     ; 1050 {
4159                     .text:	section	.text,new
4160  0000               _TIM2_GetPrescaler:
4164                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4166  0000 c6530e        	ld	a,21262
4169  0003 81            	ret	
4309                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4309                     ; 1069 {
4310                     .text:	section	.text,new
4311  0000               _TIM2_GetFlagStatus:
4313  0000 89            	pushw	x
4314  0001 89            	pushw	x
4315       00000002      OFST:	set	2
4318                     ; 1070   FlagStatus bitstatus = RESET;
4320                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4324                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4326  0002 a30001        	cpw	x,#1
4327  0005 272c          	jreq	L617
4328  0007 a30002        	cpw	x,#2
4329  000a 2727          	jreq	L617
4330  000c a30004        	cpw	x,#4
4331  000f 2722          	jreq	L617
4332  0011 a30008        	cpw	x,#8
4333  0014 271d          	jreq	L617
4334  0016 a30200        	cpw	x,#512
4335  0019 2718          	jreq	L617
4336  001b a30400        	cpw	x,#1024
4337  001e 2713          	jreq	L617
4338  0020 a30800        	cpw	x,#2048
4339  0023 270e          	jreq	L617
4340  0025 ae0432        	ldw	x,#1074
4341  0028 89            	pushw	x
4342  0029 5f            	clrw	x
4343  002a 89            	pushw	x
4344  002b ae0000        	ldw	x,#L702
4345  002e cd0000        	call	_assert_failed
4347  0031 5b04          	addw	sp,#4
4348  0033               L617:
4349                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4351  0033 c65304        	ld	a,21252
4352  0036 1404          	and	a,(OFST+2,sp)
4353  0038 6b01          	ld	(OFST-1,sp),a
4354                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4356  003a 7b03          	ld	a,(OFST+1,sp)
4357  003c 6b02          	ld	(OFST+0,sp),a
4358                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4360  003e c45305        	and	a,21253
4361  0041 1a01          	or	a,(OFST-1,sp)
4362  0043 2702          	jreq	L7371
4363                     ; 1081     bitstatus = SET;
4365  0045 a601          	ld	a,#1
4367  0047               L7371:
4368                     ; 1085     bitstatus = RESET;
4370                     ; 1087   return (FlagStatus)bitstatus;
4374  0047 5b04          	addw	sp,#4
4375  0049 81            	ret	
4411                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4411                     ; 1104 {
4412                     .text:	section	.text,new
4413  0000               _TIM2_ClearFlag:
4415  0000 89            	pushw	x
4416       00000000      OFST:	set	0
4419                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4421  0001 01            	rrwa	x,a
4422  0002 a4f0          	and	a,#240
4423  0004 01            	rrwa	x,a
4424  0005 a4f1          	and	a,#241
4425  0007 01            	rrwa	x,a
4426  0008 5d            	tnzw	x
4427  0009 2604          	jrne	L427
4428  000b 1e01          	ldw	x,(OFST+1,sp)
4429  000d 260e          	jrne	L627
4430  000f               L427:
4431  000f ae0452        	ldw	x,#1106
4432  0012 89            	pushw	x
4433  0013 5f            	clrw	x
4434  0014 89            	pushw	x
4435  0015 ae0000        	ldw	x,#L702
4436  0018 cd0000        	call	_assert_failed
4438  001b 5b04          	addw	sp,#4
4439  001d               L627:
4440                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4442  001d 7b02          	ld	a,(OFST+2,sp)
4443  001f 43            	cpl	a
4444  0020 c75304        	ld	21252,a
4445                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4447  0023 35ff5305      	mov	21253,#255
4448                     ; 1111 }
4451  0027 85            	popw	x
4452  0028 81            	ret	
4517                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4517                     ; 1124 {
4518                     .text:	section	.text,new
4519  0000               _TIM2_GetITStatus:
4521  0000 88            	push	a
4522  0001 89            	pushw	x
4523       00000002      OFST:	set	2
4526                     ; 1125   ITStatus bitstatus = RESET;
4528                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4532                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4534  0002 a101          	cp	a,#1
4535  0004 271a          	jreq	L047
4536  0006 a102          	cp	a,#2
4537  0008 2716          	jreq	L047
4538  000a a104          	cp	a,#4
4539  000c 2712          	jreq	L047
4540  000e a108          	cp	a,#8
4541  0010 270e          	jreq	L047
4542  0012 ae0469        	ldw	x,#1129
4543  0015 89            	pushw	x
4544  0016 5f            	clrw	x
4545  0017 89            	pushw	x
4546  0018 ae0000        	ldw	x,#L702
4547  001b cd0000        	call	_assert_failed
4549  001e 5b04          	addw	sp,#4
4550  0020               L047:
4551                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4553  0020 c65304        	ld	a,21252
4554  0023 1403          	and	a,(OFST+1,sp)
4555  0025 6b01          	ld	(OFST-1,sp),a
4556                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4558  0027 c65303        	ld	a,21251
4559  002a 1403          	and	a,(OFST+1,sp)
4560  002c 6b02          	ld	(OFST+0,sp),a
4561                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4563  002e 7b01          	ld	a,(OFST-1,sp)
4564  0030 2708          	jreq	L3102
4566  0032 7b02          	ld	a,(OFST+0,sp)
4567  0034 2704          	jreq	L3102
4568                     ; 1137     bitstatus = SET;
4570  0036 a601          	ld	a,#1
4572  0038 2001          	jra	L5102
4573  003a               L3102:
4574                     ; 1141     bitstatus = RESET;
4576  003a 4f            	clr	a
4577  003b               L5102:
4578                     ; 1143   return (ITStatus)(bitstatus);
4582  003b 5b03          	addw	sp,#3
4583  003d 81            	ret	
4620                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4620                     ; 1157 {
4621                     .text:	section	.text,new
4622  0000               _TIM2_ClearITPendingBit:
4624  0000 88            	push	a
4625       00000000      OFST:	set	0
4628                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4630  0001 4d            	tnz	a
4631  0002 2704          	jreq	L647
4632  0004 a110          	cp	a,#16
4633  0006 250e          	jrult	L057
4634  0008               L647:
4635  0008 ae0487        	ldw	x,#1159
4636  000b 89            	pushw	x
4637  000c 5f            	clrw	x
4638  000d 89            	pushw	x
4639  000e ae0000        	ldw	x,#L702
4640  0011 cd0000        	call	_assert_failed
4642  0014 5b04          	addw	sp,#4
4643  0016               L057:
4644                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4646  0016 7b01          	ld	a,(OFST+1,sp)
4647  0018 43            	cpl	a
4648  0019 c75304        	ld	21252,a
4649                     ; 1163 }
4652  001c 84            	pop	a
4653  001d 81            	ret	
4705                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4705                     ; 1182                        uint8_t TIM2_ICSelection,
4705                     ; 1183                        uint8_t TIM2_ICFilter)
4705                     ; 1184 {
4706                     .text:	section	.text,new
4707  0000               L3_TI1_Config:
4709  0000 89            	pushw	x
4710       00000001      OFST:	set	1
4713                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4715  0001 7211530a      	bres	21258,#0
4716  0005 88            	push	a
4717                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4717                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4719  0006 7b06          	ld	a,(OFST+5,sp)
4720  0008 97            	ld	xl,a
4721  0009 a610          	ld	a,#16
4722  000b 42            	mul	x,a
4723  000c 9f            	ld	a,xl
4724  000d 1a03          	or	a,(OFST+2,sp)
4725  000f 6b01          	ld	(OFST+0,sp),a
4726  0011 c65307        	ld	a,21255
4727  0014 a40c          	and	a,#12
4728  0016 1a01          	or	a,(OFST+0,sp)
4729  0018 c75307        	ld	21255,a
4730                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4732  001b 7b02          	ld	a,(OFST+1,sp)
4733  001d 2706          	jreq	L3602
4734                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4736  001f 7212530a      	bset	21258,#1
4738  0023 2004          	jra	L5602
4739  0025               L3602:
4740                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4742  0025 7213530a      	bres	21258,#1
4743  0029               L5602:
4744                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4746  0029 7210530a      	bset	21258,#0
4747                     ; 1203 }
4750  002d 5b03          	addw	sp,#3
4751  002f 81            	ret	
4803                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4803                     ; 1222                        uint8_t TIM2_ICSelection,
4803                     ; 1223                        uint8_t TIM2_ICFilter)
4803                     ; 1224 {
4804                     .text:	section	.text,new
4805  0000               L5_TI2_Config:
4807  0000 89            	pushw	x
4808       00000001      OFST:	set	1
4811                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4813  0001 7219530a      	bres	21258,#4
4814  0005 88            	push	a
4815                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4815                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4817  0006 7b06          	ld	a,(OFST+5,sp)
4818  0008 97            	ld	xl,a
4819  0009 a610          	ld	a,#16
4820  000b 42            	mul	x,a
4821  000c 9f            	ld	a,xl
4822  000d 1a03          	or	a,(OFST+2,sp)
4823  000f 6b01          	ld	(OFST+0,sp),a
4824  0011 c65308        	ld	a,21256
4825  0014 a40c          	and	a,#12
4826  0016 1a01          	or	a,(OFST+0,sp)
4827  0018 c75308        	ld	21256,a
4828                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4830  001b 7b02          	ld	a,(OFST+1,sp)
4831  001d 2706          	jreq	L5112
4832                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4834  001f 721a530a      	bset	21258,#5
4836  0023 2004          	jra	L7112
4837  0025               L5112:
4838                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4840  0025 721b530a      	bres	21258,#5
4841  0029               L7112:
4842                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4844  0029 7218530a      	bset	21258,#4
4845                     ; 1245 }
4848  002d 5b03          	addw	sp,#3
4849  002f 81            	ret	
4901                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4901                     ; 1262                        uint8_t TIM2_ICFilter)
4901                     ; 1263 {
4902                     .text:	section	.text,new
4903  0000               L7_TI3_Config:
4905  0000 89            	pushw	x
4906       00000001      OFST:	set	1
4909                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4911  0001 7211530b      	bres	21259,#0
4912  0005 88            	push	a
4913                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4913                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4915  0006 7b06          	ld	a,(OFST+5,sp)
4916  0008 97            	ld	xl,a
4917  0009 a610          	ld	a,#16
4918  000b 42            	mul	x,a
4919  000c 9f            	ld	a,xl
4920  000d 1a03          	or	a,(OFST+2,sp)
4921  000f 6b01          	ld	(OFST+0,sp),a
4922  0011 c65309        	ld	a,21257
4923  0014 a40c          	and	a,#12
4924  0016 1a01          	or	a,(OFST+0,sp)
4925  0018 c75309        	ld	21257,a
4926                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4928  001b 7b02          	ld	a,(OFST+1,sp)
4929  001d 2706          	jreq	L7412
4930                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4932  001f 7212530b      	bset	21259,#1
4934  0023 2004          	jra	L1512
4935  0025               L7412:
4936                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4938  0025 7213530b      	bres	21259,#1
4939  0029               L1512:
4940                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4942  0029 7210530b      	bset	21259,#0
4943                     ; 1283 }
4946  002d 5b03          	addw	sp,#3
4947  002f 81            	ret	
4960                     	xdef	_TIM2_ClearITPendingBit
4961                     	xdef	_TIM2_GetITStatus
4962                     	xdef	_TIM2_ClearFlag
4963                     	xdef	_TIM2_GetFlagStatus
4964                     	xdef	_TIM2_GetPrescaler
4965                     	xdef	_TIM2_GetCounter
4966                     	xdef	_TIM2_GetCapture3
4967                     	xdef	_TIM2_GetCapture2
4968                     	xdef	_TIM2_GetCapture1
4969                     	xdef	_TIM2_SetIC3Prescaler
4970                     	xdef	_TIM2_SetIC2Prescaler
4971                     	xdef	_TIM2_SetIC1Prescaler
4972                     	xdef	_TIM2_SetCompare3
4973                     	xdef	_TIM2_SetCompare2
4974                     	xdef	_TIM2_SetCompare1
4975                     	xdef	_TIM2_SetAutoreload
4976                     	xdef	_TIM2_SetCounter
4977                     	xdef	_TIM2_SelectOCxM
4978                     	xdef	_TIM2_CCxCmd
4979                     	xdef	_TIM2_OC3PolarityConfig
4980                     	xdef	_TIM2_OC2PolarityConfig
4981                     	xdef	_TIM2_OC1PolarityConfig
4982                     	xdef	_TIM2_GenerateEvent
4983                     	xdef	_TIM2_OC3PreloadConfig
4984                     	xdef	_TIM2_OC2PreloadConfig
4985                     	xdef	_TIM2_OC1PreloadConfig
4986                     	xdef	_TIM2_ARRPreloadConfig
4987                     	xdef	_TIM2_ForcedOC3Config
4988                     	xdef	_TIM2_ForcedOC2Config
4989                     	xdef	_TIM2_ForcedOC1Config
4990                     	xdef	_TIM2_PrescalerConfig
4991                     	xdef	_TIM2_SelectOnePulseMode
4992                     	xdef	_TIM2_UpdateRequestConfig
4993                     	xdef	_TIM2_UpdateDisableConfig
4994                     	xdef	_TIM2_ITConfig
4995                     	xdef	_TIM2_Cmd
4996                     	xdef	_TIM2_PWMIConfig
4997                     	xdef	_TIM2_ICInit
4998                     	xdef	_TIM2_OC3Init
4999                     	xdef	_TIM2_OC2Init
5000                     	xdef	_TIM2_OC1Init
5001                     	xdef	_TIM2_TimeBaseInit
5002                     	xdef	_TIM2_DeInit
5003                     	xref	_assert_failed
5004                     .const:	section	.text
5005  0000               L702:
5006  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5007  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5008  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
5009  0036 5f74696d322e  	dc.b	"_tim2.c",0
5029                     	end
