   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 58 void TIM1_DeInit(void)
  50                     ; 59 {
  52                     .text:	section	.text,new
  53  0000               _TIM1_DeInit:
  57                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  59  0000 725f5250      	clr	21072
  60                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  62  0004 725f5251      	clr	21073
  63                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  65  0008 725f5252      	clr	21074
  66                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  68  000c 725f5253      	clr	21075
  69                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  71  0010 725f5254      	clr	21076
  72                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  74  0014 725f5256      	clr	21078
  75                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  77  0018 725f525c      	clr	21084
  78                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  80  001c 725f525d      	clr	21085
  81                     ; 70   TIM1->CCMR1 = 0x01;
  83  0020 35015258      	mov	21080,#1
  84                     ; 71   TIM1->CCMR2 = 0x01;
  86  0024 35015259      	mov	21081,#1
  87                     ; 72   TIM1->CCMR3 = 0x01;
  89  0028 3501525a      	mov	21082,#1
  90                     ; 73   TIM1->CCMR4 = 0x01;
  92  002c 3501525b      	mov	21083,#1
  93                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  95  0030 725f525c      	clr	21084
  96                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  98  0034 725f525d      	clr	21085
  99                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 101  0038 725f5258      	clr	21080
 102                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 104  003c 725f5259      	clr	21081
 105                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 107  0040 725f525a      	clr	21082
 108                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 110  0044 725f525b      	clr	21083
 111                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 113  0048 725f525e      	clr	21086
 114                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 116  004c 725f525f      	clr	21087
 117                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 119  0050 725f5260      	clr	21088
 120                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 122  0054 725f5261      	clr	21089
 123                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 125  0058 35ff5262      	mov	21090,#255
 126                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 128  005c 35ff5263      	mov	21091,#255
 129                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 131  0060 725f5265      	clr	21093
 132                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 134  0064 725f5266      	clr	21094
 135                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 137  0068 725f5267      	clr	21095
 138                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 140  006c 725f5268      	clr	21096
 141                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 143  0070 725f5269      	clr	21097
 144                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 146  0074 725f526a      	clr	21098
 147                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 149  0078 725f526b      	clr	21099
 150                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 152  007c 725f526c      	clr	21100
 153                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 155  0080 725f526f      	clr	21103
 156                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 158  0084 35015257      	mov	21079,#1
 159                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 161  0088 725f526e      	clr	21102
 162                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 164  008c 725f526d      	clr	21101
 165                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 167  0090 725f5264      	clr	21092
 168                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 170  0094 725f5255      	clr	21077
 171                     ; 101 }
 174  0098 81            	ret	
 284                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 284                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 284                     ; 113                        uint16_t TIM1_Period,
 284                     ; 114                        uint8_t TIM1_RepetitionCounter)
 284                     ; 115 {
 285                     .text:	section	.text,new
 286  0000               _TIM1_TimeBaseInit:
 288  0000 89            	pushw	x
 289       00000000      OFST:	set	0
 292                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 294  0001 7b05          	ld	a,(OFST+5,sp)
 295  0003 271e          	jreq	L41
 296  0005 a110          	cp	a,#16
 297  0007 271a          	jreq	L41
 298  0009 a120          	cp	a,#32
 299  000b 2716          	jreq	L41
 300  000d a140          	cp	a,#64
 301  000f 2712          	jreq	L41
 302  0011 a160          	cp	a,#96
 303  0013 270e          	jreq	L41
 304  0015 ae0075        	ldw	x,#117
 305  0018 89            	pushw	x
 306  0019 5f            	clrw	x
 307  001a 89            	pushw	x
 308  001b ae0000        	ldw	x,#L101
 309  001e cd0000        	call	_assert_failed
 311  0021 5b04          	addw	sp,#4
 312  0023               L41:
 313                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 315  0023 7b06          	ld	a,(OFST+6,sp)
 316  0025 c75262        	ld	21090,a
 317                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 319  0028 7b07          	ld	a,(OFST+7,sp)
 320  002a c75263        	ld	21091,a
 321                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 323  002d 7b01          	ld	a,(OFST+1,sp)
 324  002f c75260        	ld	21088,a
 325                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 327  0032 7b02          	ld	a,(OFST+2,sp)
 328  0034 c75261        	ld	21089,a
 329                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 329                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 331  0037 c65250        	ld	a,21072
 332  003a a48f          	and	a,#143
 333  003c 1a05          	or	a,(OFST+5,sp)
 334  003e c75250        	ld	21072,a
 335                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 337  0041 7b08          	ld	a,(OFST+8,sp)
 338  0043 c75264        	ld	21092,a
 339                     ; 133 }
 342  0046 85            	popw	x
 343  0047 81            	ret	
 629                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 629                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 629                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 629                     ; 157                   uint16_t TIM1_Pulse,
 629                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 629                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 629                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 629                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 629                     ; 162 {
 630                     .text:	section	.text,new
 631  0000               _TIM1_OC1Init:
 633  0000 89            	pushw	x
 634  0001 5203          	subw	sp,#3
 635       00000003      OFST:	set	3
 638                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 640  0003 9e            	ld	a,xh
 641  0004 4d            	tnz	a
 642  0005 271f          	jreq	L62
 643  0007 9e            	ld	a,xh
 644  0008 a110          	cp	a,#16
 645  000a 271a          	jreq	L62
 646  000c 9e            	ld	a,xh
 647  000d a120          	cp	a,#32
 648  000f 2715          	jreq	L62
 649  0011 9e            	ld	a,xh
 650  0012 a130          	cp	a,#48
 651  0014 2710          	jreq	L62
 652  0016 9e            	ld	a,xh
 653  0017 a160          	cp	a,#96
 654  0019 270b          	jreq	L62
 655  001b 9e            	ld	a,xh
 656  001c a170          	cp	a,#112
 657  001e 2706          	jreq	L62
 658  0020 ae00a4        	ldw	x,#164
 659  0023 cd00d6        	call	LC001
 660  0026               L62:
 661                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 663  0026 7b05          	ld	a,(OFST+2,sp)
 664  0028 270a          	jreq	L63
 665  002a a111          	cp	a,#17
 666  002c 2706          	jreq	L63
 667  002e ae00a5        	ldw	x,#165
 668  0031 cd00d6        	call	LC001
 669  0034               L63:
 670                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 672  0034 7b08          	ld	a,(OFST+5,sp)
 673  0036 270a          	jreq	L64
 674  0038 a144          	cp	a,#68
 675  003a 2706          	jreq	L64
 676  003c ae00a6        	ldw	x,#166
 677  003f cd00d6        	call	LC001
 678  0042               L64:
 679                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 681  0042 7b0b          	ld	a,(OFST+8,sp)
 682  0044 270a          	jreq	L65
 683  0046 a122          	cp	a,#34
 684  0048 2706          	jreq	L65
 685  004a ae00a7        	ldw	x,#167
 686  004d cd00d6        	call	LC001
 687  0050               L65:
 688                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 690  0050 7b0c          	ld	a,(OFST+9,sp)
 691  0052 2709          	jreq	L66
 692  0054 a188          	cp	a,#136
 693  0056 2705          	jreq	L66
 694  0058 ae00a8        	ldw	x,#168
 695  005b ad79          	call	LC001
 696  005d               L66:
 697                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 699  005d 7b0d          	ld	a,(OFST+10,sp)
 700  005f a155          	cp	a,#85
 701  0061 2709          	jreq	L67
 702  0063 7b0d          	ld	a,(OFST+10,sp)
 703  0065 2705          	jreq	L67
 704  0067 ae00a9        	ldw	x,#169
 705  006a ad6a          	call	LC001
 706  006c               L67:
 707                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 709  006c 7b0e          	ld	a,(OFST+11,sp)
 710  006e a12a          	cp	a,#42
 711  0070 2709          	jreq	L601
 712  0072 7b0e          	ld	a,(OFST+11,sp)
 713  0074 2705          	jreq	L601
 714  0076 ae00aa        	ldw	x,#170
 715  0079 ad5b          	call	LC001
 716  007b               L601:
 717                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 717                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 719  007b c6525c        	ld	a,21084
 720  007e a4f0          	and	a,#240
 721  0080 c7525c        	ld	21084,a
 722                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 722                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 722                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 722                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 724  0083 7b0c          	ld	a,(OFST+9,sp)
 725  0085 a408          	and	a,#8
 726  0087 6b03          	ld	(OFST+0,sp),a
 727  0089 7b0b          	ld	a,(OFST+8,sp)
 728  008b a402          	and	a,#2
 729  008d 1a03          	or	a,(OFST+0,sp)
 730  008f 6b02          	ld	(OFST-1,sp),a
 731  0091 7b08          	ld	a,(OFST+5,sp)
 732  0093 a404          	and	a,#4
 733  0095 6b01          	ld	(OFST-2,sp),a
 734  0097 7b05          	ld	a,(OFST+2,sp)
 735  0099 a401          	and	a,#1
 736  009b 1a01          	or	a,(OFST-2,sp)
 737  009d 1a02          	or	a,(OFST-1,sp)
 738  009f ca525c        	or	a,21084
 739  00a2 c7525c        	ld	21084,a
 740                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 740                     ; 185                           (uint8_t)TIM1_OCMode);
 742  00a5 c65258        	ld	a,21080
 743  00a8 a48f          	and	a,#143
 744  00aa 1a04          	or	a,(OFST+1,sp)
 745  00ac c75258        	ld	21080,a
 746                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 748  00af c6526f        	ld	a,21103
 749  00b2 a4fc          	and	a,#252
 750  00b4 c7526f        	ld	21103,a
 751                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 751                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 753  00b7 7b0e          	ld	a,(OFST+11,sp)
 754  00b9 a402          	and	a,#2
 755  00bb 6b03          	ld	(OFST+0,sp),a
 756  00bd 7b0d          	ld	a,(OFST+10,sp)
 757  00bf a401          	and	a,#1
 758  00c1 1a03          	or	a,(OFST+0,sp)
 759  00c3 ca526f        	or	a,21103
 760  00c6 c7526f        	ld	21103,a
 761                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 763  00c9 7b09          	ld	a,(OFST+6,sp)
 764  00cb c75265        	ld	21093,a
 765                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 767  00ce 7b0a          	ld	a,(OFST+7,sp)
 768  00d0 c75266        	ld	21094,a
 769                     ; 196 }
 772  00d3 5b05          	addw	sp,#5
 773  00d5 81            	ret	
 774  00d6               LC001:
 775  00d6 89            	pushw	x
 776  00d7 5f            	clrw	x
 777  00d8 89            	pushw	x
 778  00d9 ae0000        	ldw	x,#L101
 779  00dc cd0000        	call	_assert_failed
 781  00df 5b04          	addw	sp,#4
 782  00e1 81            	ret	
 887                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 887                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 887                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 887                     ; 220                   uint16_t TIM1_Pulse,
 887                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 887                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 887                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 887                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 887                     ; 225 {
 888                     .text:	section	.text,new
 889  0000               _TIM1_OC2Init:
 891  0000 89            	pushw	x
 892  0001 5203          	subw	sp,#3
 893       00000003      OFST:	set	3
 896                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 898  0003 9e            	ld	a,xh
 899  0004 4d            	tnz	a
 900  0005 271f          	jreq	L021
 901  0007 9e            	ld	a,xh
 902  0008 a110          	cp	a,#16
 903  000a 271a          	jreq	L021
 904  000c 9e            	ld	a,xh
 905  000d a120          	cp	a,#32
 906  000f 2715          	jreq	L021
 907  0011 9e            	ld	a,xh
 908  0012 a130          	cp	a,#48
 909  0014 2710          	jreq	L021
 910  0016 9e            	ld	a,xh
 911  0017 a160          	cp	a,#96
 912  0019 270b          	jreq	L021
 913  001b 9e            	ld	a,xh
 914  001c a170          	cp	a,#112
 915  001e 2706          	jreq	L021
 916  0020 ae00e3        	ldw	x,#227
 917  0023 cd00d6        	call	LC002
 918  0026               L021:
 919                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 921  0026 7b05          	ld	a,(OFST+2,sp)
 922  0028 270a          	jreq	L031
 923  002a a111          	cp	a,#17
 924  002c 2706          	jreq	L031
 925  002e ae00e4        	ldw	x,#228
 926  0031 cd00d6        	call	LC002
 927  0034               L031:
 928                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 930  0034 7b08          	ld	a,(OFST+5,sp)
 931  0036 270a          	jreq	L041
 932  0038 a144          	cp	a,#68
 933  003a 2706          	jreq	L041
 934  003c ae00e5        	ldw	x,#229
 935  003f cd00d6        	call	LC002
 936  0042               L041:
 937                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 939  0042 7b0b          	ld	a,(OFST+8,sp)
 940  0044 270a          	jreq	L051
 941  0046 a122          	cp	a,#34
 942  0048 2706          	jreq	L051
 943  004a ae00e6        	ldw	x,#230
 944  004d cd00d6        	call	LC002
 945  0050               L051:
 946                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 948  0050 7b0c          	ld	a,(OFST+9,sp)
 949  0052 2709          	jreq	L061
 950  0054 a188          	cp	a,#136
 951  0056 2705          	jreq	L061
 952  0058 ae00e7        	ldw	x,#231
 953  005b ad79          	call	LC002
 954  005d               L061:
 955                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 957  005d 7b0d          	ld	a,(OFST+10,sp)
 958  005f a155          	cp	a,#85
 959  0061 2709          	jreq	L071
 960  0063 7b0d          	ld	a,(OFST+10,sp)
 961  0065 2705          	jreq	L071
 962  0067 ae00e8        	ldw	x,#232
 963  006a ad6a          	call	LC002
 964  006c               L071:
 965                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 967  006c 7b0e          	ld	a,(OFST+11,sp)
 968  006e a12a          	cp	a,#42
 969  0070 2709          	jreq	L002
 970  0072 7b0e          	ld	a,(OFST+11,sp)
 971  0074 2705          	jreq	L002
 972  0076 ae00e9        	ldw	x,#233
 973  0079 ad5b          	call	LC002
 974  007b               L002:
 975                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 975                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 977  007b c6525c        	ld	a,21084
 978  007e a40f          	and	a,#15
 979  0080 c7525c        	ld	21084,a
 980                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 980                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 980                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 980                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 982  0083 7b0c          	ld	a,(OFST+9,sp)
 983  0085 a480          	and	a,#128
 984  0087 6b03          	ld	(OFST+0,sp),a
 985  0089 7b0b          	ld	a,(OFST+8,sp)
 986  008b a420          	and	a,#32
 987  008d 1a03          	or	a,(OFST+0,sp)
 988  008f 6b02          	ld	(OFST-1,sp),a
 989  0091 7b08          	ld	a,(OFST+5,sp)
 990  0093 a440          	and	a,#64
 991  0095 6b01          	ld	(OFST-2,sp),a
 992  0097 7b05          	ld	a,(OFST+2,sp)
 993  0099 a410          	and	a,#16
 994  009b 1a01          	or	a,(OFST-2,sp)
 995  009d 1a02          	or	a,(OFST-1,sp)
 996  009f ca525c        	or	a,21084
 997  00a2 c7525c        	ld	21084,a
 998                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 998                     ; 249                           (uint8_t)TIM1_OCMode);
1000  00a5 c65259        	ld	a,21081
1001  00a8 a48f          	and	a,#143
1002  00aa 1a04          	or	a,(OFST+1,sp)
1003  00ac c75259        	ld	21081,a
1004                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1006  00af c6526f        	ld	a,21103
1007  00b2 a4f3          	and	a,#243
1008  00b4 c7526f        	ld	21103,a
1009                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1009                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1011  00b7 7b0e          	ld	a,(OFST+11,sp)
1012  00b9 a408          	and	a,#8
1013  00bb 6b03          	ld	(OFST+0,sp),a
1014  00bd 7b0d          	ld	a,(OFST+10,sp)
1015  00bf a404          	and	a,#4
1016  00c1 1a03          	or	a,(OFST+0,sp)
1017  00c3 ca526f        	or	a,21103
1018  00c6 c7526f        	ld	21103,a
1019                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1021  00c9 7b09          	ld	a,(OFST+6,sp)
1022  00cb c75267        	ld	21095,a
1023                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1025  00ce 7b0a          	ld	a,(OFST+7,sp)
1026  00d0 c75268        	ld	21096,a
1027                     ; 260 }
1030  00d3 5b05          	addw	sp,#5
1031  00d5 81            	ret	
1032  00d6               LC002:
1033  00d6 89            	pushw	x
1034  00d7 5f            	clrw	x
1035  00d8 89            	pushw	x
1036  00d9 ae0000        	ldw	x,#L101
1037  00dc cd0000        	call	_assert_failed
1039  00df 5b04          	addw	sp,#4
1040  00e1 81            	ret	
1145                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1145                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1145                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1145                     ; 284                   uint16_t TIM1_Pulse,
1145                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1145                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1145                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1145                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1145                     ; 289 {
1146                     .text:	section	.text,new
1147  0000               _TIM1_OC3Init:
1149  0000 89            	pushw	x
1150  0001 5203          	subw	sp,#3
1151       00000003      OFST:	set	3
1154                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1156  0003 9e            	ld	a,xh
1157  0004 4d            	tnz	a
1158  0005 271f          	jreq	L212
1159  0007 9e            	ld	a,xh
1160  0008 a110          	cp	a,#16
1161  000a 271a          	jreq	L212
1162  000c 9e            	ld	a,xh
1163  000d a120          	cp	a,#32
1164  000f 2715          	jreq	L212
1165  0011 9e            	ld	a,xh
1166  0012 a130          	cp	a,#48
1167  0014 2710          	jreq	L212
1168  0016 9e            	ld	a,xh
1169  0017 a160          	cp	a,#96
1170  0019 270b          	jreq	L212
1171  001b 9e            	ld	a,xh
1172  001c a170          	cp	a,#112
1173  001e 2706          	jreq	L212
1174  0020 ae0123        	ldw	x,#291
1175  0023 cd00d6        	call	LC003
1176  0026               L212:
1177                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1179  0026 7b05          	ld	a,(OFST+2,sp)
1180  0028 270a          	jreq	L222
1181  002a a111          	cp	a,#17
1182  002c 2706          	jreq	L222
1183  002e ae0124        	ldw	x,#292
1184  0031 cd00d6        	call	LC003
1185  0034               L222:
1186                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1188  0034 7b08          	ld	a,(OFST+5,sp)
1189  0036 270a          	jreq	L232
1190  0038 a144          	cp	a,#68
1191  003a 2706          	jreq	L232
1192  003c ae0125        	ldw	x,#293
1193  003f cd00d6        	call	LC003
1194  0042               L232:
1195                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1197  0042 7b0b          	ld	a,(OFST+8,sp)
1198  0044 270a          	jreq	L242
1199  0046 a122          	cp	a,#34
1200  0048 2706          	jreq	L242
1201  004a ae0126        	ldw	x,#294
1202  004d cd00d6        	call	LC003
1203  0050               L242:
1204                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1206  0050 7b0c          	ld	a,(OFST+9,sp)
1207  0052 2709          	jreq	L252
1208  0054 a188          	cp	a,#136
1209  0056 2705          	jreq	L252
1210  0058 ae0127        	ldw	x,#295
1211  005b ad79          	call	LC003
1212  005d               L252:
1213                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1215  005d 7b0d          	ld	a,(OFST+10,sp)
1216  005f a155          	cp	a,#85
1217  0061 2709          	jreq	L262
1218  0063 7b0d          	ld	a,(OFST+10,sp)
1219  0065 2705          	jreq	L262
1220  0067 ae0128        	ldw	x,#296
1221  006a ad6a          	call	LC003
1222  006c               L262:
1223                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1225  006c 7b0e          	ld	a,(OFST+11,sp)
1226  006e a12a          	cp	a,#42
1227  0070 2709          	jreq	L272
1228  0072 7b0e          	ld	a,(OFST+11,sp)
1229  0074 2705          	jreq	L272
1230  0076 ae0129        	ldw	x,#297
1231  0079 ad5b          	call	LC003
1232  007b               L272:
1233                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1233                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1235  007b c6525d        	ld	a,21085
1236  007e a4f0          	and	a,#240
1237  0080 c7525d        	ld	21085,a
1238                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1238                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1238                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1238                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1240  0083 7b0c          	ld	a,(OFST+9,sp)
1241  0085 a408          	and	a,#8
1242  0087 6b03          	ld	(OFST+0,sp),a
1243  0089 7b0b          	ld	a,(OFST+8,sp)
1244  008b a402          	and	a,#2
1245  008d 1a03          	or	a,(OFST+0,sp)
1246  008f 6b02          	ld	(OFST-1,sp),a
1247  0091 7b08          	ld	a,(OFST+5,sp)
1248  0093 a404          	and	a,#4
1249  0095 6b01          	ld	(OFST-2,sp),a
1250  0097 7b05          	ld	a,(OFST+2,sp)
1251  0099 a401          	and	a,#1
1252  009b 1a01          	or	a,(OFST-2,sp)
1253  009d 1a02          	or	a,(OFST-1,sp)
1254  009f ca525d        	or	a,21085
1255  00a2 c7525d        	ld	21085,a
1256                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1256                     ; 312                           (uint8_t)TIM1_OCMode);
1258  00a5 c6525a        	ld	a,21082
1259  00a8 a48f          	and	a,#143
1260  00aa 1a04          	or	a,(OFST+1,sp)
1261  00ac c7525a        	ld	21082,a
1262                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1264  00af c6526f        	ld	a,21103
1265  00b2 a4cf          	and	a,#207
1266  00b4 c7526f        	ld	21103,a
1267                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1267                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1269  00b7 7b0e          	ld	a,(OFST+11,sp)
1270  00b9 a420          	and	a,#32
1271  00bb 6b03          	ld	(OFST+0,sp),a
1272  00bd 7b0d          	ld	a,(OFST+10,sp)
1273  00bf a410          	and	a,#16
1274  00c1 1a03          	or	a,(OFST+0,sp)
1275  00c3 ca526f        	or	a,21103
1276  00c6 c7526f        	ld	21103,a
1277                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1279  00c9 7b09          	ld	a,(OFST+6,sp)
1280  00cb c75269        	ld	21097,a
1281                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1283  00ce 7b0a          	ld	a,(OFST+7,sp)
1284  00d0 c7526a        	ld	21098,a
1285                     ; 323 }
1288  00d3 5b05          	addw	sp,#5
1289  00d5 81            	ret	
1290  00d6               LC003:
1291  00d6 89            	pushw	x
1292  00d7 5f            	clrw	x
1293  00d8 89            	pushw	x
1294  00d9 ae0000        	ldw	x,#L101
1295  00dc cd0000        	call	_assert_failed
1297  00df 5b04          	addw	sp,#4
1298  00e1 81            	ret	
1373                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1373                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1373                     ; 340                   uint16_t TIM1_Pulse,
1373                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1373                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1373                     ; 343 {
1374                     .text:	section	.text,new
1375  0000               _TIM1_OC4Init:
1377  0000 89            	pushw	x
1378  0001 88            	push	a
1379       00000001      OFST:	set	1
1382                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1384  0002 9e            	ld	a,xh
1385  0003 4d            	tnz	a
1386  0004 271e          	jreq	L403
1387  0006 9e            	ld	a,xh
1388  0007 a110          	cp	a,#16
1389  0009 2719          	jreq	L403
1390  000b 9e            	ld	a,xh
1391  000c a120          	cp	a,#32
1392  000e 2714          	jreq	L403
1393  0010 9e            	ld	a,xh
1394  0011 a130          	cp	a,#48
1395  0013 270f          	jreq	L403
1396  0015 9e            	ld	a,xh
1397  0016 a160          	cp	a,#96
1398  0018 270a          	jreq	L403
1399  001a 9e            	ld	a,xh
1400  001b a170          	cp	a,#112
1401  001d 2705          	jreq	L403
1402  001f ae0159        	ldw	x,#345
1403  0022 ad6c          	call	LC004
1404  0024               L403:
1405                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1407  0024 7b03          	ld	a,(OFST+2,sp)
1408  0026 2709          	jreq	L413
1409  0028 a111          	cp	a,#17
1410  002a 2705          	jreq	L413
1411  002c ae015a        	ldw	x,#346
1412  002f ad5f          	call	LC004
1413  0031               L413:
1414                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1416  0031 7b08          	ld	a,(OFST+7,sp)
1417  0033 2709          	jreq	L423
1418  0035 a122          	cp	a,#34
1419  0037 2705          	jreq	L423
1420  0039 ae015b        	ldw	x,#347
1421  003c ad52          	call	LC004
1422  003e               L423:
1423                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1425  003e 7b09          	ld	a,(OFST+8,sp)
1426  0040 a155          	cp	a,#85
1427  0042 2709          	jreq	L433
1428  0044 7b09          	ld	a,(OFST+8,sp)
1429  0046 2705          	jreq	L433
1430  0048 ae015c        	ldw	x,#348
1431  004b ad43          	call	LC004
1432  004d               L433:
1433                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1435  004d c6525d        	ld	a,21085
1436  0050 a4cf          	and	a,#207
1437  0052 c7525d        	ld	21085,a
1438                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1438                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1440  0055 7b08          	ld	a,(OFST+7,sp)
1441  0057 a420          	and	a,#32
1442  0059 6b01          	ld	(OFST+0,sp),a
1443  005b 7b03          	ld	a,(OFST+2,sp)
1444  005d a410          	and	a,#16
1445  005f 1a01          	or	a,(OFST+0,sp)
1446  0061 ca525d        	or	a,21085
1447  0064 c7525d        	ld	21085,a
1448                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1448                     ; 358                           TIM1_OCMode);
1450  0067 c6525b        	ld	a,21083
1451  006a a48f          	and	a,#143
1452  006c 1a02          	or	a,(OFST+1,sp)
1453  006e c7525b        	ld	21083,a
1454                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1456  0071 7b09          	ld	a,(OFST+8,sp)
1457  0073 270a          	jreq	L734
1458                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1460  0075 c6526f        	ld	a,21103
1461  0078 aadf          	or	a,#223
1462  007a c7526f        	ld	21103,a
1464  007d 2004          	jra	L144
1465  007f               L734:
1466                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1468  007f 721d526f      	bres	21103,#6
1469  0083               L144:
1470                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1472  0083 7b06          	ld	a,(OFST+5,sp)
1473  0085 c7526b        	ld	21099,a
1474                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1476  0088 7b07          	ld	a,(OFST+6,sp)
1477  008a c7526c        	ld	21100,a
1478                     ; 373 }
1481  008d 5b03          	addw	sp,#3
1482  008f 81            	ret	
1483  0090               LC004:
1484  0090 89            	pushw	x
1485  0091 5f            	clrw	x
1486  0092 89            	pushw	x
1487  0093 ae0000        	ldw	x,#L101
1488  0096 cd0000        	call	_assert_failed
1490  0099 5b04          	addw	sp,#4
1491  009b 81            	ret	
1697                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1697                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1697                     ; 390                      uint8_t TIM1_DeadTime,
1697                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1697                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1697                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1697                     ; 394 {
1698                     .text:	section	.text,new
1699  0000               _TIM1_BDTRConfig:
1701  0000 89            	pushw	x
1702  0001 88            	push	a
1703       00000001      OFST:	set	1
1706                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1708  0002 9e            	ld	a,xh
1709  0003 a104          	cp	a,#4
1710  0005 2709          	jreq	L643
1711  0007 9e            	ld	a,xh
1712  0008 4d            	tnz	a
1713  0009 2705          	jreq	L643
1714  000b ae018c        	ldw	x,#396
1715  000e ad59          	call	LC005
1716  0010               L643:
1717                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1719  0010 7b03          	ld	a,(OFST+2,sp)
1720  0012 2711          	jreq	L653
1721  0014 a101          	cp	a,#1
1722  0016 270d          	jreq	L653
1723  0018 a102          	cp	a,#2
1724  001a 2709          	jreq	L653
1725  001c a103          	cp	a,#3
1726  001e 2705          	jreq	L653
1727  0020 ae018d        	ldw	x,#397
1728  0023 ad44          	call	LC005
1729  0025               L653:
1730                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1732  0025 7b07          	ld	a,(OFST+6,sp)
1733  0027 a110          	cp	a,#16
1734  0029 2709          	jreq	L663
1735  002b 7b07          	ld	a,(OFST+6,sp)
1736  002d 2705          	jreq	L663
1737  002f ae018e        	ldw	x,#398
1738  0032 ad35          	call	LC005
1739  0034               L663:
1740                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1742  0034 7b08          	ld	a,(OFST+7,sp)
1743  0036 2709          	jreq	L673
1744  0038 a120          	cp	a,#32
1745  003a 2705          	jreq	L673
1746  003c ae018f        	ldw	x,#399
1747  003f ad28          	call	LC005
1748  0041               L673:
1749                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1751  0041 7b09          	ld	a,(OFST+8,sp)
1752  0043 a140          	cp	a,#64
1753  0045 2709          	jreq	L604
1754  0047 7b09          	ld	a,(OFST+8,sp)
1755  0049 2705          	jreq	L604
1756  004b ae0190        	ldw	x,#400
1757  004e ad19          	call	LC005
1758  0050               L604:
1759                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1761  0050 7b06          	ld	a,(OFST+5,sp)
1762  0052 c7526e        	ld	21102,a
1763                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1763                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1763                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1765  0055 7b07          	ld	a,(OFST+6,sp)
1766  0057 1a08          	or	a,(OFST+7,sp)
1767  0059 1a09          	or	a,(OFST+8,sp)
1768  005b 6b01          	ld	(OFST+0,sp),a
1769  005d 7b02          	ld	a,(OFST+1,sp)
1770  005f 1a03          	or	a,(OFST+2,sp)
1771  0061 1a01          	or	a,(OFST+0,sp)
1772  0063 c7526d        	ld	21101,a
1773                     ; 409 }
1776  0066 5b03          	addw	sp,#3
1777  0068 81            	ret	
1778  0069               LC005:
1779  0069 89            	pushw	x
1780  006a 5f            	clrw	x
1781  006b 89            	pushw	x
1782  006c ae0000        	ldw	x,#L101
1783  006f cd0000        	call	_assert_failed
1785  0072 5b04          	addw	sp,#4
1786  0074 81            	ret	
1989                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1989                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1989                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1989                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1989                     ; 427                  uint8_t TIM1_ICFilter)
1989                     ; 428 {
1990                     .text:	section	.text,new
1991  0000               _TIM1_ICInit:
1993  0000 89            	pushw	x
1994       00000000      OFST:	set	0
1997                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1999  0001 9e            	ld	a,xh
2000  0002 4d            	tnz	a
2001  0003 2714          	jreq	L024
2002  0005 9e            	ld	a,xh
2003  0006 4a            	dec	a
2004  0007 2710          	jreq	L024
2005  0009 9e            	ld	a,xh
2006  000a a102          	cp	a,#2
2007  000c 270b          	jreq	L024
2008  000e 9e            	ld	a,xh
2009  000f a103          	cp	a,#3
2010  0011 2706          	jreq	L024
2011  0013 ae01ae        	ldw	x,#430
2012  0016 cd00b5        	call	LC006
2013  0019               L024:
2014                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2016  0019 7b02          	ld	a,(OFST+2,sp)
2017  001b 2709          	jreq	L034
2018  001d 4a            	dec	a
2019  001e 2706          	jreq	L034
2020  0020 ae01af        	ldw	x,#431
2021  0023 cd00b5        	call	LC006
2022  0026               L034:
2023                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2025  0026 7b05          	ld	a,(OFST+5,sp)
2026  0028 a101          	cp	a,#1
2027  002a 270d          	jreq	L044
2028  002c a102          	cp	a,#2
2029  002e 2709          	jreq	L044
2030  0030 a103          	cp	a,#3
2031  0032 2705          	jreq	L044
2032  0034 ae01b0        	ldw	x,#432
2033  0037 ad7c          	call	LC006
2034  0039               L044:
2035                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2037  0039 7b06          	ld	a,(OFST+6,sp)
2038  003b 2711          	jreq	L054
2039  003d a104          	cp	a,#4
2040  003f 270d          	jreq	L054
2041  0041 a108          	cp	a,#8
2042  0043 2709          	jreq	L054
2043  0045 a10c          	cp	a,#12
2044  0047 2705          	jreq	L054
2045  0049 ae01b1        	ldw	x,#433
2046  004c ad67          	call	LC006
2047  004e               L054:
2048                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2050  004e 7b07          	ld	a,(OFST+7,sp)
2051  0050 a110          	cp	a,#16
2052  0052 2505          	jrult	L654
2053  0054 ae01b2        	ldw	x,#434
2054  0057 ad5c          	call	LC006
2055  0059               L654:
2056                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2058  0059 7b01          	ld	a,(OFST+1,sp)
2059  005b 2614          	jrne	L176
2060                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2060                     ; 440                (uint8_t)TIM1_ICSelection,
2060                     ; 441                (uint8_t)TIM1_ICFilter);
2062  005d 7b07          	ld	a,(OFST+7,sp)
2063  005f 88            	push	a
2064  0060 7b06          	ld	a,(OFST+6,sp)
2065  0062 97            	ld	xl,a
2066  0063 7b03          	ld	a,(OFST+3,sp)
2067  0065 95            	ld	xh,a
2068  0066 cd0000        	call	L3_TI1_Config
2070  0069 84            	pop	a
2071                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2073  006a 7b06          	ld	a,(OFST+6,sp)
2074  006c cd0000        	call	_TIM1_SetIC1Prescaler
2077  006f 2042          	jra	L376
2078  0071               L176:
2079                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2081  0071 a101          	cp	a,#1
2082  0073 2614          	jrne	L576
2083                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2083                     ; 449                (uint8_t)TIM1_ICSelection,
2083                     ; 450                (uint8_t)TIM1_ICFilter);
2085  0075 7b07          	ld	a,(OFST+7,sp)
2086  0077 88            	push	a
2087  0078 7b06          	ld	a,(OFST+6,sp)
2088  007a 97            	ld	xl,a
2089  007b 7b03          	ld	a,(OFST+3,sp)
2090  007d 95            	ld	xh,a
2091  007e cd0000        	call	L5_TI2_Config
2093  0081 84            	pop	a
2094                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2096  0082 7b06          	ld	a,(OFST+6,sp)
2097  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2100  0087 202a          	jra	L376
2101  0089               L576:
2102                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2104  0089 a102          	cp	a,#2
2105  008b 2614          	jrne	L107
2106                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2106                     ; 458                (uint8_t)TIM1_ICSelection,
2106                     ; 459                (uint8_t)TIM1_ICFilter);
2108  008d 7b07          	ld	a,(OFST+7,sp)
2109  008f 88            	push	a
2110  0090 7b06          	ld	a,(OFST+6,sp)
2111  0092 97            	ld	xl,a
2112  0093 7b03          	ld	a,(OFST+3,sp)
2113  0095 95            	ld	xh,a
2114  0096 cd0000        	call	L7_TI3_Config
2116  0099 84            	pop	a
2117                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2119  009a 7b06          	ld	a,(OFST+6,sp)
2120  009c cd0000        	call	_TIM1_SetIC3Prescaler
2123  009f 2012          	jra	L376
2124  00a1               L107:
2125                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2125                     ; 467                (uint8_t)TIM1_ICSelection,
2125                     ; 468                (uint8_t)TIM1_ICFilter);
2127  00a1 7b07          	ld	a,(OFST+7,sp)
2128  00a3 88            	push	a
2129  00a4 7b06          	ld	a,(OFST+6,sp)
2130  00a6 97            	ld	xl,a
2131  00a7 7b03          	ld	a,(OFST+3,sp)
2132  00a9 95            	ld	xh,a
2133  00aa cd0000        	call	L11_TI4_Config
2135  00ad 84            	pop	a
2136                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2138  00ae 7b06          	ld	a,(OFST+6,sp)
2139  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2141  00b3               L376:
2142                     ; 472 }
2145  00b3 85            	popw	x
2146  00b4 81            	ret	
2147  00b5               LC006:
2148  00b5 89            	pushw	x
2149  00b6 5f            	clrw	x
2150  00b7 89            	pushw	x
2151  00b8 ae0000        	ldw	x,#L101
2152  00bb cd0000        	call	_assert_failed
2154  00be 5b04          	addw	sp,#4
2155  00c0 81            	ret	
2252                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2252                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2252                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2252                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2252                     ; 492                      uint8_t TIM1_ICFilter)
2252                     ; 493 {
2253                     .text:	section	.text,new
2254  0000               _TIM1_PWMIConfig:
2256  0000 89            	pushw	x
2257  0001 89            	pushw	x
2258       00000002      OFST:	set	2
2261                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2263                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2265                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2267  0002 9e            	ld	a,xh
2268  0003 4d            	tnz	a
2269  0004 270a          	jreq	L015
2270  0006 9e            	ld	a,xh
2271  0007 4a            	dec	a
2272  0008 2706          	jreq	L015
2273  000a ae01f2        	ldw	x,#498
2274  000d cd00ac        	call	LC007
2275  0010               L015:
2276                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2278  0010 7b04          	ld	a,(OFST+2,sp)
2279  0012 2709          	jreq	L025
2280  0014 4a            	dec	a
2281  0015 2706          	jreq	L025
2282  0017 ae01f3        	ldw	x,#499
2283  001a cd00ac        	call	LC007
2284  001d               L025:
2285                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2287  001d 7b07          	ld	a,(OFST+5,sp)
2288  001f a101          	cp	a,#1
2289  0021 270d          	jreq	L035
2290  0023 a102          	cp	a,#2
2291  0025 2709          	jreq	L035
2292  0027 a103          	cp	a,#3
2293  0029 2705          	jreq	L035
2294  002b ae01f4        	ldw	x,#500
2295  002e ad7c          	call	LC007
2296  0030               L035:
2297                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2299  0030 7b08          	ld	a,(OFST+6,sp)
2300  0032 2711          	jreq	L045
2301  0034 a104          	cp	a,#4
2302  0036 270d          	jreq	L045
2303  0038 a108          	cp	a,#8
2304  003a 2709          	jreq	L045
2305  003c a10c          	cp	a,#12
2306  003e 2705          	jreq	L045
2307  0040 ae01f5        	ldw	x,#501
2308  0043 ad67          	call	LC007
2309  0045               L045:
2310                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2312  0045 7b04          	ld	a,(OFST+2,sp)
2313  0047 4a            	dec	a
2314  0048 2702          	jreq	L357
2315                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2317  004a a601          	ld	a,#1
2319  004c               L357:
2320                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2322  004c 6b01          	ld	(OFST-1,sp),a
2323                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2325  004e 7b07          	ld	a,(OFST+5,sp)
2326  0050 4a            	dec	a
2327  0051 2604          	jrne	L757
2328                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2330  0053 a602          	ld	a,#2
2332  0055 2002          	jra	L167
2333  0057               L757:
2334                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2336  0057 a601          	ld	a,#1
2337  0059               L167:
2338  0059 6b02          	ld	(OFST+0,sp),a
2339                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2341  005b 7b03          	ld	a,(OFST+1,sp)
2342  005d 2626          	jrne	L367
2343                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2343                     ; 527                (uint8_t)TIM1_ICFilter);
2345  005f 7b09          	ld	a,(OFST+7,sp)
2346  0061 88            	push	a
2347  0062 7b08          	ld	a,(OFST+6,sp)
2348  0064 97            	ld	xl,a
2349  0065 7b05          	ld	a,(OFST+3,sp)
2350  0067 95            	ld	xh,a
2351  0068 cd0000        	call	L3_TI1_Config
2353  006b 84            	pop	a
2354                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2356  006c 7b08          	ld	a,(OFST+6,sp)
2357  006e cd0000        	call	_TIM1_SetIC1Prescaler
2359                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2361  0071 7b09          	ld	a,(OFST+7,sp)
2362  0073 88            	push	a
2363  0074 7b03          	ld	a,(OFST+1,sp)
2364  0076 97            	ld	xl,a
2365  0077 7b02          	ld	a,(OFST+0,sp)
2366  0079 95            	ld	xh,a
2367  007a cd0000        	call	L5_TI2_Config
2369  007d 84            	pop	a
2370                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2372  007e 7b08          	ld	a,(OFST+6,sp)
2373  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2376  0083 2024          	jra	L567
2377  0085               L367:
2378                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2378                     ; 542                (uint8_t)TIM1_ICFilter);
2380  0085 7b09          	ld	a,(OFST+7,sp)
2381  0087 88            	push	a
2382  0088 7b08          	ld	a,(OFST+6,sp)
2383  008a 97            	ld	xl,a
2384  008b 7b05          	ld	a,(OFST+3,sp)
2385  008d 95            	ld	xh,a
2386  008e cd0000        	call	L5_TI2_Config
2388  0091 84            	pop	a
2389                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2391  0092 7b08          	ld	a,(OFST+6,sp)
2392  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2394                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2396  0097 7b09          	ld	a,(OFST+7,sp)
2397  0099 88            	push	a
2398  009a 7b03          	ld	a,(OFST+1,sp)
2399  009c 97            	ld	xl,a
2400  009d 7b02          	ld	a,(OFST+0,sp)
2401  009f 95            	ld	xh,a
2402  00a0 cd0000        	call	L3_TI1_Config
2404  00a3 84            	pop	a
2405                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2407  00a4 7b08          	ld	a,(OFST+6,sp)
2408  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2410  00a9               L567:
2411                     ; 553 }
2414  00a9 5b04          	addw	sp,#4
2415  00ab 81            	ret	
2416  00ac               LC007:
2417  00ac 89            	pushw	x
2418  00ad 5f            	clrw	x
2419  00ae 89            	pushw	x
2420  00af ae0000        	ldw	x,#L101
2421  00b2 cd0000        	call	_assert_failed
2423  00b5 5b04          	addw	sp,#4
2424  00b7 81            	ret	
2480                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2480                     ; 562 {
2481                     .text:	section	.text,new
2482  0000               _TIM1_Cmd:
2484  0000 88            	push	a
2485       00000000      OFST:	set	0
2488                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2490  0001 4d            	tnz	a
2491  0002 2711          	jreq	L275
2492  0004 4a            	dec	a
2493  0005 270e          	jreq	L275
2494  0007 ae0234        	ldw	x,#564
2495  000a 89            	pushw	x
2496  000b 5f            	clrw	x
2497  000c 89            	pushw	x
2498  000d ae0000        	ldw	x,#L101
2499  0010 cd0000        	call	_assert_failed
2501  0013 5b04          	addw	sp,#4
2502  0015               L275:
2503                     ; 567   if (NewState != DISABLE)
2505  0015 7b01          	ld	a,(OFST+1,sp)
2506  0017 2706          	jreq	L5101
2507                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2509  0019 72105250      	bset	21072,#0
2511  001d 2004          	jra	L7101
2512  001f               L5101:
2513                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2515  001f 72115250      	bres	21072,#0
2516  0023               L7101:
2517                     ; 575 }
2520  0023 84            	pop	a
2521  0024 81            	ret	
2558                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2558                     ; 584 {
2559                     .text:	section	.text,new
2560  0000               _TIM1_CtrlPWMOutputs:
2562  0000 88            	push	a
2563       00000000      OFST:	set	0
2566                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2568  0001 4d            	tnz	a
2569  0002 2711          	jreq	L406
2570  0004 4a            	dec	a
2571  0005 270e          	jreq	L406
2572  0007 ae024a        	ldw	x,#586
2573  000a 89            	pushw	x
2574  000b 5f            	clrw	x
2575  000c 89            	pushw	x
2576  000d ae0000        	ldw	x,#L101
2577  0010 cd0000        	call	_assert_failed
2579  0013 5b04          	addw	sp,#4
2580  0015               L406:
2581                     ; 590   if (NewState != DISABLE)
2583  0015 7b01          	ld	a,(OFST+1,sp)
2584  0017 2706          	jreq	L7301
2585                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2587  0019 721e526d      	bset	21101,#7
2589  001d 2004          	jra	L1401
2590  001f               L7301:
2591                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2593  001f 721f526d      	bres	21101,#7
2594  0023               L1401:
2595                     ; 598 }
2598  0023 84            	pop	a
2599  0024 81            	ret	
2707                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2707                     ; 618 {
2708                     .text:	section	.text,new
2709  0000               _TIM1_ITConfig:
2711  0000 89            	pushw	x
2712       00000000      OFST:	set	0
2715                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2717  0001 9e            	ld	a,xh
2718  0002 4d            	tnz	a
2719  0003 2605          	jrne	L416
2720  0005 ae026c        	ldw	x,#620
2721  0008 ad22          	call	LC008
2722  000a               L416:
2723                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2725  000a 7b02          	ld	a,(OFST+2,sp)
2726  000c 2708          	jreq	L426
2727  000e 4a            	dec	a
2728  000f 2705          	jreq	L426
2729  0011 ae026d        	ldw	x,#621
2730  0014 ad16          	call	LC008
2731  0016               L426:
2732                     ; 623   if (NewState != DISABLE)
2734  0016 7b02          	ld	a,(OFST+2,sp)
2735  0018 2707          	jreq	L1111
2736                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2738  001a c65254        	ld	a,21076
2739  001d 1a01          	or	a,(OFST+1,sp)
2741  001f 2006          	jra	L3111
2742  0021               L1111:
2743                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2745  0021 7b01          	ld	a,(OFST+1,sp)
2746  0023 43            	cpl	a
2747  0024 c45254        	and	a,21076
2748  0027               L3111:
2749  0027 c75254        	ld	21076,a
2750                     ; 633 }
2753  002a 85            	popw	x
2754  002b 81            	ret	
2755  002c               LC008:
2756  002c 89            	pushw	x
2757  002d 5f            	clrw	x
2758  002e 89            	pushw	x
2759  002f ae0000        	ldw	x,#L101
2760  0032 cd0000        	call	_assert_failed
2762  0035 5b04          	addw	sp,#4
2763  0037 81            	ret	
2787                     ; 640 void TIM1_InternalClockConfig(void)
2787                     ; 641 {
2788                     .text:	section	.text,new
2789  0000               _TIM1_InternalClockConfig:
2793                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2795  0000 c65252        	ld	a,21074
2796  0003 a4f8          	and	a,#248
2797  0005 c75252        	ld	21074,a
2798                     ; 644 }
2801  0008 81            	ret	
2919                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2919                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2919                     ; 664                               uint8_t ExtTRGFilter)
2919                     ; 665 {
2920                     .text:	section	.text,new
2921  0000               _TIM1_ETRClockMode1Config:
2923  0000 89            	pushw	x
2924       00000000      OFST:	set	0
2927                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2929  0001 9e            	ld	a,xh
2930  0002 4d            	tnz	a
2931  0003 2714          	jreq	L046
2932  0005 9e            	ld	a,xh
2933  0006 a110          	cp	a,#16
2934  0008 270f          	jreq	L046
2935  000a 9e            	ld	a,xh
2936  000b a120          	cp	a,#32
2937  000d 270a          	jreq	L046
2938  000f 9e            	ld	a,xh
2939  0010 a130          	cp	a,#48
2940  0012 2705          	jreq	L046
2941  0014 ae029b        	ldw	x,#667
2942  0017 ad26          	call	LC009
2943  0019               L046:
2944                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2946  0019 7b02          	ld	a,(OFST+2,sp)
2947  001b a180          	cp	a,#128
2948  001d 2709          	jreq	L056
2949  001f 7b02          	ld	a,(OFST+2,sp)
2950  0021 2705          	jreq	L056
2951  0023 ae029c        	ldw	x,#668
2952  0026 ad17          	call	LC009
2953  0028               L056:
2954                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2956  0028 7b05          	ld	a,(OFST+5,sp)
2957  002a 88            	push	a
2958  002b 7b03          	ld	a,(OFST+3,sp)
2959  002d 97            	ld	xl,a
2960  002e 7b02          	ld	a,(OFST+2,sp)
2961  0030 95            	ld	xh,a
2962  0031 cd0000        	call	_TIM1_ETRConfig
2964  0034 84            	pop	a
2965                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2965                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2967  0035 c65252        	ld	a,21074
2968  0038 aa77          	or	a,#119
2969  003a c75252        	ld	21074,a
2970                     ; 676 }
2973  003d 85            	popw	x
2974  003e 81            	ret	
2975  003f               LC009:
2976  003f 89            	pushw	x
2977  0040 5f            	clrw	x
2978  0041 89            	pushw	x
2979  0042 ae0000        	ldw	x,#L101
2980  0045 cd0000        	call	_assert_failed
2982  0048 5b04          	addw	sp,#4
2983  004a 81            	ret	
3042                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3042                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3042                     ; 696                               uint8_t ExtTRGFilter)
3042                     ; 697 {
3043                     .text:	section	.text,new
3044  0000               _TIM1_ETRClockMode2Config:
3046  0000 89            	pushw	x
3047       00000000      OFST:	set	0
3050                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3052  0001 9e            	ld	a,xh
3053  0002 4d            	tnz	a
3054  0003 2714          	jreq	L466
3055  0005 9e            	ld	a,xh
3056  0006 a110          	cp	a,#16
3057  0008 270f          	jreq	L466
3058  000a 9e            	ld	a,xh
3059  000b a120          	cp	a,#32
3060  000d 270a          	jreq	L466
3061  000f 9e            	ld	a,xh
3062  0010 a130          	cp	a,#48
3063  0012 2705          	jreq	L466
3064  0014 ae02bb        	ldw	x,#699
3065  0017 ad22          	call	LC010
3066  0019               L466:
3067                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3069  0019 7b02          	ld	a,(OFST+2,sp)
3070  001b a180          	cp	a,#128
3071  001d 2709          	jreq	L476
3072  001f 7b02          	ld	a,(OFST+2,sp)
3073  0021 2705          	jreq	L476
3074  0023 ae02bc        	ldw	x,#700
3075  0026 ad13          	call	LC010
3076  0028               L476:
3077                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3079  0028 7b05          	ld	a,(OFST+5,sp)
3080  002a 88            	push	a
3081  002b 7b03          	ld	a,(OFST+3,sp)
3082  002d 97            	ld	xl,a
3083  002e 7b02          	ld	a,(OFST+2,sp)
3084  0030 95            	ld	xh,a
3085  0031 cd0000        	call	_TIM1_ETRConfig
3087  0034 721c5253      	bset	21075,#6
3088  0038 84            	pop	a
3089                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3091                     ; 707 }
3094  0039 85            	popw	x
3095  003a 81            	ret	
3096  003b               LC010:
3097  003b 89            	pushw	x
3098  003c 5f            	clrw	x
3099  003d 89            	pushw	x
3100  003e ae0000        	ldw	x,#L101
3101  0041 cd0000        	call	_assert_failed
3103  0044 5b04          	addw	sp,#4
3104  0046 81            	ret	
3161                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3161                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3161                     ; 727                     uint8_t ExtTRGFilter)
3161                     ; 728 {
3162                     .text:	section	.text,new
3163  0000               _TIM1_ETRConfig:
3165  0000 89            	pushw	x
3166       00000000      OFST:	set	0
3169                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3171  0001 7b05          	ld	a,(OFST+5,sp)
3172  0003 a110          	cp	a,#16
3173  0005 250e          	jrult	L607
3174  0007 ae02da        	ldw	x,#730
3175  000a 89            	pushw	x
3176  000b 5f            	clrw	x
3177  000c 89            	pushw	x
3178  000d ae0000        	ldw	x,#L101
3179  0010 cd0000        	call	_assert_failed
3181  0013 5b04          	addw	sp,#4
3182  0015               L607:
3183                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3183                     ; 733                          (uint8_t)ExtTRGFilter );
3185  0015 7b01          	ld	a,(OFST+1,sp)
3186  0017 1a02          	or	a,(OFST+2,sp)
3187  0019 1a05          	or	a,(OFST+5,sp)
3188  001b ca5253        	or	a,21075
3189  001e c75253        	ld	21075,a
3190                     ; 734 }
3193  0021 85            	popw	x
3194  0022 81            	ret	
3284                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3284                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3284                     ; 753                                  uint8_t ICFilter)
3284                     ; 754 {
3285                     .text:	section	.text,new
3286  0000               _TIM1_TIxExternalClockConfig:
3288  0000 89            	pushw	x
3289       00000000      OFST:	set	0
3292                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3294  0001 9e            	ld	a,xh
3295  0002 a140          	cp	a,#64
3296  0004 270f          	jreq	L027
3297  0006 9e            	ld	a,xh
3298  0007 a160          	cp	a,#96
3299  0009 270a          	jreq	L027
3300  000b 9e            	ld	a,xh
3301  000c a150          	cp	a,#80
3302  000e 2705          	jreq	L027
3303  0010 ae02f4        	ldw	x,#756
3304  0013 ad47          	call	LC011
3305  0015               L027:
3306                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3308  0015 7b02          	ld	a,(OFST+2,sp)
3309  0017 2708          	jreq	L037
3310  0019 4a            	dec	a
3311  001a 2705          	jreq	L037
3312  001c ae02f5        	ldw	x,#757
3313  001f ad3b          	call	LC011
3314  0021               L037:
3315                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3317  0021 7b05          	ld	a,(OFST+5,sp)
3318  0023 a110          	cp	a,#16
3319  0025 2505          	jrult	L637
3320  0027 ae02f6        	ldw	x,#758
3321  002a ad30          	call	LC011
3322  002c               L637:
3323                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3325  002c 7b01          	ld	a,(OFST+1,sp)
3326  002e a160          	cp	a,#96
3327  0030 260e          	jrne	L3131
3328                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3330  0032 7b05          	ld	a,(OFST+5,sp)
3331  0034 88            	push	a
3332  0035 ae0001        	ldw	x,#1
3333  0038 7b03          	ld	a,(OFST+3,sp)
3334  003a 95            	ld	xh,a
3335  003b cd0000        	call	L5_TI2_Config
3338  003e 200c          	jra	L5131
3339  0040               L3131:
3340                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3342  0040 7b05          	ld	a,(OFST+5,sp)
3343  0042 88            	push	a
3344  0043 ae0001        	ldw	x,#1
3345  0046 7b03          	ld	a,(OFST+3,sp)
3346  0048 95            	ld	xh,a
3347  0049 cd0000        	call	L3_TI1_Config
3349  004c               L5131:
3350  004c 84            	pop	a
3351                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3353  004d 7b01          	ld	a,(OFST+1,sp)
3354  004f cd0000        	call	_TIM1_SelectInputTrigger
3356                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3358  0052 c65252        	ld	a,21074
3359  0055 aa07          	or	a,#7
3360  0057 c75252        	ld	21074,a
3361                     ; 775 }
3364  005a 85            	popw	x
3365  005b 81            	ret	
3366  005c               LC011:
3367  005c 89            	pushw	x
3368  005d 5f            	clrw	x
3369  005e 89            	pushw	x
3370  005f ae0000        	ldw	x,#L101
3371  0062 cd0000        	call	_assert_failed
3373  0065 5b04          	addw	sp,#4
3374  0067 81            	ret	
3460                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3460                     ; 788 {
3461                     .text:	section	.text,new
3462  0000               _TIM1_SelectInputTrigger:
3464  0000 88            	push	a
3465       00000000      OFST:	set	0
3468                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3470  0001 a140          	cp	a,#64
3471  0003 2721          	jreq	L657
3472  0005 a150          	cp	a,#80
3473  0007 271d          	jreq	L657
3474  0009 a160          	cp	a,#96
3475  000b 2719          	jreq	L657
3476  000d a170          	cp	a,#112
3477  000f 2715          	jreq	L657
3478  0011 a130          	cp	a,#48
3479  0013 2711          	jreq	L657
3480  0015 4d            	tnz	a
3481  0016 270e          	jreq	L657
3482  0018 ae0316        	ldw	x,#790
3483  001b 89            	pushw	x
3484  001c 5f            	clrw	x
3485  001d 89            	pushw	x
3486  001e ae0000        	ldw	x,#L101
3487  0021 cd0000        	call	_assert_failed
3489  0024 5b04          	addw	sp,#4
3490  0026               L657:
3491                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3493  0026 c65252        	ld	a,21074
3494  0029 a48f          	and	a,#143
3495  002b 1a01          	or	a,(OFST+1,sp)
3496  002d c75252        	ld	21074,a
3497                     ; 794 }
3500  0030 84            	pop	a
3501  0031 81            	ret	
3538                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3538                     ; 804 {
3539                     .text:	section	.text,new
3540  0000               _TIM1_UpdateDisableConfig:
3542  0000 88            	push	a
3543       00000000      OFST:	set	0
3546                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3548  0001 4d            	tnz	a
3549  0002 2711          	jreq	L077
3550  0004 4a            	dec	a
3551  0005 270e          	jreq	L077
3552  0007 ae0326        	ldw	x,#806
3553  000a 89            	pushw	x
3554  000b 5f            	clrw	x
3555  000c 89            	pushw	x
3556  000d ae0000        	ldw	x,#L101
3557  0010 cd0000        	call	_assert_failed
3559  0013 5b04          	addw	sp,#4
3560  0015               L077:
3561                     ; 809   if (NewState != DISABLE)
3563  0015 7b01          	ld	a,(OFST+1,sp)
3564  0017 2706          	jreq	L3731
3565                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3567  0019 72125250      	bset	21072,#1
3569  001d 2004          	jra	L5731
3570  001f               L3731:
3571                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3573  001f 72135250      	bres	21072,#1
3574  0023               L5731:
3575                     ; 817 }
3578  0023 84            	pop	a
3579  0024 81            	ret	
3638                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3638                     ; 828 {
3639                     .text:	section	.text,new
3640  0000               _TIM1_UpdateRequestConfig:
3642  0000 88            	push	a
3643       00000000      OFST:	set	0
3646                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3648  0001 4d            	tnz	a
3649  0002 2711          	jreq	L2001
3650  0004 4a            	dec	a
3651  0005 270e          	jreq	L2001
3652  0007 ae033e        	ldw	x,#830
3653  000a 89            	pushw	x
3654  000b 5f            	clrw	x
3655  000c 89            	pushw	x
3656  000d ae0000        	ldw	x,#L101
3657  0010 cd0000        	call	_assert_failed
3659  0013 5b04          	addw	sp,#4
3660  0015               L2001:
3661                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3663  0015 7b01          	ld	a,(OFST+1,sp)
3664  0017 2706          	jreq	L5241
3665                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3667  0019 72145250      	bset	21072,#2
3669  001d 2004          	jra	L7241
3670  001f               L5241:
3671                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3673  001f 72155250      	bres	21072,#2
3674  0023               L7241:
3675                     ; 841 }
3678  0023 84            	pop	a
3679  0024 81            	ret	
3716                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3716                     ; 850 {
3717                     .text:	section	.text,new
3718  0000               _TIM1_SelectHallSensor:
3720  0000 88            	push	a
3721       00000000      OFST:	set	0
3724                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3726  0001 4d            	tnz	a
3727  0002 2711          	jreq	L4101
3728  0004 4a            	dec	a
3729  0005 270e          	jreq	L4101
3730  0007 ae0354        	ldw	x,#852
3731  000a 89            	pushw	x
3732  000b 5f            	clrw	x
3733  000c 89            	pushw	x
3734  000d ae0000        	ldw	x,#L101
3735  0010 cd0000        	call	_assert_failed
3737  0013 5b04          	addw	sp,#4
3738  0015               L4101:
3739                     ; 855   if (NewState != DISABLE)
3741  0015 7b01          	ld	a,(OFST+1,sp)
3742  0017 2706          	jreq	L7441
3743                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3745  0019 721e5251      	bset	21073,#7
3747  001d 2004          	jra	L1541
3748  001f               L7441:
3749                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3751  001f 721f5251      	bres	21073,#7
3752  0023               L1541:
3753                     ; 863 }
3756  0023 84            	pop	a
3757  0024 81            	ret	
3815                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3815                     ; 874 {
3816                     .text:	section	.text,new
3817  0000               _TIM1_SelectOnePulseMode:
3819  0000 88            	push	a
3820       00000000      OFST:	set	0
3823                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3825  0001 a101          	cp	a,#1
3826  0003 2711          	jreq	L6201
3827  0005 4d            	tnz	a
3828  0006 270e          	jreq	L6201
3829  0008 ae036c        	ldw	x,#876
3830  000b 89            	pushw	x
3831  000c 5f            	clrw	x
3832  000d 89            	pushw	x
3833  000e ae0000        	ldw	x,#L101
3834  0011 cd0000        	call	_assert_failed
3836  0014 5b04          	addw	sp,#4
3837  0016               L6201:
3838                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3840  0016 7b01          	ld	a,(OFST+1,sp)
3841  0018 2706          	jreq	L1051
3842                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3844  001a 72165250      	bset	21072,#3
3846  001e 2004          	jra	L3051
3847  0020               L1051:
3848                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3850  0020 72175250      	bres	21072,#3
3851  0024               L3051:
3852                     ; 888 }
3855  0024 84            	pop	a
3856  0025 81            	ret	
3955                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3955                     ; 904 {
3956                     .text:	section	.text,new
3957  0000               _TIM1_SelectOutputTrigger:
3959  0000 88            	push	a
3960       00000000      OFST:	set	0
3963                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3965  0001 4d            	tnz	a
3966  0002 2726          	jreq	L0401
3967  0004 a110          	cp	a,#16
3968  0006 2722          	jreq	L0401
3969  0008 a120          	cp	a,#32
3970  000a 271e          	jreq	L0401
3971  000c a130          	cp	a,#48
3972  000e 271a          	jreq	L0401
3973  0010 a140          	cp	a,#64
3974  0012 2716          	jreq	L0401
3975  0014 a150          	cp	a,#80
3976  0016 2712          	jreq	L0401
3977  0018 a160          	cp	a,#96
3978  001a 270e          	jreq	L0401
3979  001c ae038a        	ldw	x,#906
3980  001f 89            	pushw	x
3981  0020 5f            	clrw	x
3982  0021 89            	pushw	x
3983  0022 ae0000        	ldw	x,#L101
3984  0025 cd0000        	call	_assert_failed
3986  0028 5b04          	addw	sp,#4
3987  002a               L0401:
3988                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3988                     ; 910                         (uint8_t) TIM1_TRGOSource);
3990  002a c65251        	ld	a,21073
3991  002d a48f          	and	a,#143
3992  002f 1a01          	or	a,(OFST+1,sp)
3993  0031 c75251        	ld	21073,a
3994                     ; 911 }
3997  0034 84            	pop	a
3998  0035 81            	ret	
4073                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4073                     ; 924 {
4074                     .text:	section	.text,new
4075  0000               _TIM1_SelectSlaveMode:
4077  0000 88            	push	a
4078       00000000      OFST:	set	0
4081                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4083  0001 a104          	cp	a,#4
4084  0003 271a          	jreq	L2501
4085  0005 a105          	cp	a,#5
4086  0007 2716          	jreq	L2501
4087  0009 a106          	cp	a,#6
4088  000b 2712          	jreq	L2501
4089  000d a107          	cp	a,#7
4090  000f 270e          	jreq	L2501
4091  0011 ae039e        	ldw	x,#926
4092  0014 89            	pushw	x
4093  0015 5f            	clrw	x
4094  0016 89            	pushw	x
4095  0017 ae0000        	ldw	x,#L101
4096  001a cd0000        	call	_assert_failed
4098  001d 5b04          	addw	sp,#4
4099  001f               L2501:
4100                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4100                     ; 930                          (uint8_t)TIM1_SlaveMode);
4102  001f c65252        	ld	a,21074
4103  0022 a4f8          	and	a,#248
4104  0024 1a01          	or	a,(OFST+1,sp)
4105  0026 c75252        	ld	21074,a
4106                     ; 931 }
4109  0029 84            	pop	a
4110  002a 81            	ret	
4147                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4147                     ; 940 {
4148                     .text:	section	.text,new
4149  0000               _TIM1_SelectMasterSlaveMode:
4151  0000 88            	push	a
4152       00000000      OFST:	set	0
4155                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4157  0001 4d            	tnz	a
4158  0002 2711          	jreq	L4601
4159  0004 4a            	dec	a
4160  0005 270e          	jreq	L4601
4161  0007 ae03ae        	ldw	x,#942
4162  000a 89            	pushw	x
4163  000b 5f            	clrw	x
4164  000c 89            	pushw	x
4165  000d ae0000        	ldw	x,#L101
4166  0010 cd0000        	call	_assert_failed
4168  0013 5b04          	addw	sp,#4
4169  0015               L4601:
4170                     ; 945   if (NewState != DISABLE)
4172  0015 7b01          	ld	a,(OFST+1,sp)
4173  0017 2706          	jreq	L5161
4174                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4176  0019 721e5252      	bset	21074,#7
4178  001d 2004          	jra	L7161
4179  001f               L5161:
4180                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4182  001f 721f5252      	bres	21074,#7
4183  0023               L7161:
4184                     ; 953 }
4187  0023 84            	pop	a
4188  0024 81            	ret	
4275                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4275                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4275                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4275                     ; 978 {
4276                     .text:	section	.text,new
4277  0000               _TIM1_EncoderInterfaceConfig:
4279  0000 89            	pushw	x
4280       00000000      OFST:	set	0
4283                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4285  0001 9e            	ld	a,xh
4286  0002 4a            	dec	a
4287  0003 270f          	jreq	L6701
4288  0005 9e            	ld	a,xh
4289  0006 a102          	cp	a,#2
4290  0008 270a          	jreq	L6701
4291  000a 9e            	ld	a,xh
4292  000b a103          	cp	a,#3
4293  000d 2705          	jreq	L6701
4294  000f ae03d4        	ldw	x,#980
4295  0012 ad54          	call	LC012
4296  0014               L6701:
4297                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4299  0014 7b02          	ld	a,(OFST+2,sp)
4300  0016 2708          	jreq	L6011
4301  0018 4a            	dec	a
4302  0019 2705          	jreq	L6011
4303  001b ae03d5        	ldw	x,#981
4304  001e ad48          	call	LC012
4305  0020               L6011:
4306                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4308  0020 7b05          	ld	a,(OFST+5,sp)
4309  0022 2708          	jreq	L6111
4310  0024 4a            	dec	a
4311  0025 2705          	jreq	L6111
4312  0027 ae03d6        	ldw	x,#982
4313  002a ad3c          	call	LC012
4314  002c               L6111:
4315                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4317  002c 7b02          	ld	a,(OFST+2,sp)
4318  002e 2706          	jreq	L1661
4319                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4321  0030 7212525c      	bset	21084,#1
4323  0034 2004          	jra	L3661
4324  0036               L1661:
4325                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4327  0036 7213525c      	bres	21084,#1
4328  003a               L3661:
4329                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4331  003a 7b05          	ld	a,(OFST+5,sp)
4332  003c 2706          	jreq	L5661
4333                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4335  003e 721a525c      	bset	21084,#5
4337  0042 2004          	jra	L7661
4338  0044               L5661:
4339                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4341  0044 721b525c      	bres	21084,#5
4342  0048               L7661:
4343                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4343                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4345  0048 c65252        	ld	a,21074
4346  004b a4f0          	and	a,#240
4347  004d 1a01          	or	a,(OFST+1,sp)
4348  004f c75252        	ld	21074,a
4349                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4349                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4351  0052 c65258        	ld	a,21080
4352  0055 a4fc          	and	a,#252
4353  0057 aa01          	or	a,#1
4354  0059 c75258        	ld	21080,a
4355                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4355                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4357  005c c65259        	ld	a,21081
4358  005f a4fc          	and	a,#252
4359  0061 aa01          	or	a,#1
4360  0063 c75259        	ld	21081,a
4361                     ; 1011 }
4364  0066 85            	popw	x
4365  0067 81            	ret	
4366  0068               LC012:
4367  0068 89            	pushw	x
4368  0069 5f            	clrw	x
4369  006a 89            	pushw	x
4370  006b ae0000        	ldw	x,#L101
4371  006e cd0000        	call	_assert_failed
4373  0071 5b04          	addw	sp,#4
4374  0073 81            	ret	
4442                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4442                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4442                     ; 1025 {
4443                     .text:	section	.text,new
4444  0000               _TIM1_PrescalerConfig:
4446  0000 89            	pushw	x
4447       00000000      OFST:	set	0
4450                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4452  0001 7b05          	ld	a,(OFST+5,sp)
4453  0003 2711          	jreq	L0311
4454  0005 4a            	dec	a
4455  0006 270e          	jreq	L0311
4456  0008 ae0403        	ldw	x,#1027
4457  000b 89            	pushw	x
4458  000c 5f            	clrw	x
4459  000d 89            	pushw	x
4460  000e ae0000        	ldw	x,#L101
4461  0011 cd0000        	call	_assert_failed
4463  0014 5b04          	addw	sp,#4
4464  0016               L0311:
4465                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4467  0016 7b01          	ld	a,(OFST+1,sp)
4468  0018 c75260        	ld	21088,a
4469                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4471  001b 7b02          	ld	a,(OFST+2,sp)
4472  001d c75261        	ld	21089,a
4473                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4475  0020 7b05          	ld	a,(OFST+5,sp)
4476  0022 c75257        	ld	21079,a
4477                     ; 1035 }
4480  0025 85            	popw	x
4481  0026 81            	ret	
4518                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4518                     ; 1049 {
4519                     .text:	section	.text,new
4520  0000               _TIM1_CounterModeConfig:
4522  0000 88            	push	a
4523       00000000      OFST:	set	0
4526                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4528  0001 4d            	tnz	a
4529  0002 271e          	jreq	L2411
4530  0004 a110          	cp	a,#16
4531  0006 271a          	jreq	L2411
4532  0008 a120          	cp	a,#32
4533  000a 2716          	jreq	L2411
4534  000c a140          	cp	a,#64
4535  000e 2712          	jreq	L2411
4536  0010 a160          	cp	a,#96
4537  0012 270e          	jreq	L2411
4538  0014 ae041b        	ldw	x,#1051
4539  0017 89            	pushw	x
4540  0018 5f            	clrw	x
4541  0019 89            	pushw	x
4542  001a ae0000        	ldw	x,#L101
4543  001d cd0000        	call	_assert_failed
4545  0020 5b04          	addw	sp,#4
4546  0022               L2411:
4547                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4547                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4549  0022 c65250        	ld	a,21072
4550  0025 a48f          	and	a,#143
4551  0027 1a01          	or	a,(OFST+1,sp)
4552  0029 c75250        	ld	21072,a
4553                     ; 1057 }
4556  002c 84            	pop	a
4557  002d 81            	ret	
4616                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4616                     ; 1068 {
4617                     .text:	section	.text,new
4618  0000               _TIM1_ForcedOC1Config:
4620  0000 88            	push	a
4621       00000000      OFST:	set	0
4624                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4626  0001 a150          	cp	a,#80
4627  0003 2712          	jreq	L4511
4628  0005 a140          	cp	a,#64
4629  0007 270e          	jreq	L4511
4630  0009 ae042e        	ldw	x,#1070
4631  000c 89            	pushw	x
4632  000d 5f            	clrw	x
4633  000e 89            	pushw	x
4634  000f ae0000        	ldw	x,#L101
4635  0012 cd0000        	call	_assert_failed
4637  0015 5b04          	addw	sp,#4
4638  0017               L4511:
4639                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4639                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4641  0017 c65258        	ld	a,21080
4642  001a a48f          	and	a,#143
4643  001c 1a01          	or	a,(OFST+1,sp)
4644  001e c75258        	ld	21080,a
4645                     ; 1075 }
4648  0021 84            	pop	a
4649  0022 81            	ret	
4686                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4686                     ; 1086 {
4687                     .text:	section	.text,new
4688  0000               _TIM1_ForcedOC2Config:
4690  0000 88            	push	a
4691       00000000      OFST:	set	0
4694                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4696  0001 a150          	cp	a,#80
4697  0003 2712          	jreq	L6611
4698  0005 a140          	cp	a,#64
4699  0007 270e          	jreq	L6611
4700  0009 ae0440        	ldw	x,#1088
4701  000c 89            	pushw	x
4702  000d 5f            	clrw	x
4703  000e 89            	pushw	x
4704  000f ae0000        	ldw	x,#L101
4705  0012 cd0000        	call	_assert_failed
4707  0015 5b04          	addw	sp,#4
4708  0017               L6611:
4709                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4709                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4711  0017 c65259        	ld	a,21081
4712  001a a48f          	and	a,#143
4713  001c 1a01          	or	a,(OFST+1,sp)
4714  001e c75259        	ld	21081,a
4715                     ; 1093 }
4718  0021 84            	pop	a
4719  0022 81            	ret	
4756                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4756                     ; 1105 {
4757                     .text:	section	.text,new
4758  0000               _TIM1_ForcedOC3Config:
4760  0000 88            	push	a
4761       00000000      OFST:	set	0
4764                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4766  0001 a150          	cp	a,#80
4767  0003 2712          	jreq	L0021
4768  0005 a140          	cp	a,#64
4769  0007 270e          	jreq	L0021
4770  0009 ae0453        	ldw	x,#1107
4771  000c 89            	pushw	x
4772  000d 5f            	clrw	x
4773  000e 89            	pushw	x
4774  000f ae0000        	ldw	x,#L101
4775  0012 cd0000        	call	_assert_failed
4777  0015 5b04          	addw	sp,#4
4778  0017               L0021:
4779                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4779                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4781  0017 c6525a        	ld	a,21082
4782  001a a48f          	and	a,#143
4783  001c 1a01          	or	a,(OFST+1,sp)
4784  001e c7525a        	ld	21082,a
4785                     ; 1112 }
4788  0021 84            	pop	a
4789  0022 81            	ret	
4826                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4826                     ; 1124 {
4827                     .text:	section	.text,new
4828  0000               _TIM1_ForcedOC4Config:
4830  0000 88            	push	a
4831       00000000      OFST:	set	0
4834                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4836  0001 a150          	cp	a,#80
4837  0003 2712          	jreq	L2121
4838  0005 a140          	cp	a,#64
4839  0007 270e          	jreq	L2121
4840  0009 ae0466        	ldw	x,#1126
4841  000c 89            	pushw	x
4842  000d 5f            	clrw	x
4843  000e 89            	pushw	x
4844  000f ae0000        	ldw	x,#L101
4845  0012 cd0000        	call	_assert_failed
4847  0015 5b04          	addw	sp,#4
4848  0017               L2121:
4849                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4849                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4851  0017 c6525b        	ld	a,21083
4852  001a a48f          	and	a,#143
4853  001c 1a01          	or	a,(OFST+1,sp)
4854  001e c7525b        	ld	21083,a
4855                     ; 1131 }
4858  0021 84            	pop	a
4859  0022 81            	ret	
4896                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4896                     ; 1140 {
4897                     .text:	section	.text,new
4898  0000               _TIM1_ARRPreloadConfig:
4900  0000 88            	push	a
4901       00000000      OFST:	set	0
4904                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4906  0001 4d            	tnz	a
4907  0002 2711          	jreq	L4221
4908  0004 4a            	dec	a
4909  0005 270e          	jreq	L4221
4910  0007 ae0476        	ldw	x,#1142
4911  000a 89            	pushw	x
4912  000b 5f            	clrw	x
4913  000c 89            	pushw	x
4914  000d ae0000        	ldw	x,#L101
4915  0010 cd0000        	call	_assert_failed
4917  0013 5b04          	addw	sp,#4
4918  0015               L4221:
4919                     ; 1145   if (NewState != DISABLE)
4921  0015 7b01          	ld	a,(OFST+1,sp)
4922  0017 2706          	jreq	L7502
4923                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4925  0019 721e5250      	bset	21072,#7
4927  001d 2004          	jra	L1602
4928  001f               L7502:
4929                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4931  001f 721f5250      	bres	21072,#7
4932  0023               L1602:
4933                     ; 1153 }
4936  0023 84            	pop	a
4937  0024 81            	ret	
4973                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4973                     ; 1162 {
4974                     .text:	section	.text,new
4975  0000               _TIM1_SelectCOM:
4977  0000 88            	push	a
4978       00000000      OFST:	set	0
4981                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4983  0001 4d            	tnz	a
4984  0002 2711          	jreq	L6321
4985  0004 4a            	dec	a
4986  0005 270e          	jreq	L6321
4987  0007 ae048c        	ldw	x,#1164
4988  000a 89            	pushw	x
4989  000b 5f            	clrw	x
4990  000c 89            	pushw	x
4991  000d ae0000        	ldw	x,#L101
4992  0010 cd0000        	call	_assert_failed
4994  0013 5b04          	addw	sp,#4
4995  0015               L6321:
4996                     ; 1167   if (NewState != DISABLE)
4998  0015 7b01          	ld	a,(OFST+1,sp)
4999  0017 2706          	jreq	L1012
5000                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5002  0019 72145251      	bset	21073,#2
5004  001d 2004          	jra	L3012
5005  001f               L1012:
5006                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5008  001f 72155251      	bres	21073,#2
5009  0023               L3012:
5010                     ; 1175 }
5013  0023 84            	pop	a
5014  0024 81            	ret	
5051                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5051                     ; 1184 {
5052                     .text:	section	.text,new
5053  0000               _TIM1_CCPreloadControl:
5055  0000 88            	push	a
5056       00000000      OFST:	set	0
5059                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5061  0001 4d            	tnz	a
5062  0002 2711          	jreq	L0521
5063  0004 4a            	dec	a
5064  0005 270e          	jreq	L0521
5065  0007 ae04a2        	ldw	x,#1186
5066  000a 89            	pushw	x
5067  000b 5f            	clrw	x
5068  000c 89            	pushw	x
5069  000d ae0000        	ldw	x,#L101
5070  0010 cd0000        	call	_assert_failed
5072  0013 5b04          	addw	sp,#4
5073  0015               L0521:
5074                     ; 1189   if (NewState != DISABLE)
5076  0015 7b01          	ld	a,(OFST+1,sp)
5077  0017 2706          	jreq	L3212
5078                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5080  0019 72105251      	bset	21073,#0
5082  001d 2004          	jra	L5212
5083  001f               L3212:
5084                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5086  001f 72115251      	bres	21073,#0
5087  0023               L5212:
5088                     ; 1197 }
5091  0023 84            	pop	a
5092  0024 81            	ret	
5129                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5129                     ; 1206 {
5130                     .text:	section	.text,new
5131  0000               _TIM1_OC1PreloadConfig:
5133  0000 88            	push	a
5134       00000000      OFST:	set	0
5137                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5139  0001 4d            	tnz	a
5140  0002 2711          	jreq	L2621
5141  0004 4a            	dec	a
5142  0005 270e          	jreq	L2621
5143  0007 ae04b8        	ldw	x,#1208
5144  000a 89            	pushw	x
5145  000b 5f            	clrw	x
5146  000c 89            	pushw	x
5147  000d ae0000        	ldw	x,#L101
5148  0010 cd0000        	call	_assert_failed
5150  0013 5b04          	addw	sp,#4
5151  0015               L2621:
5152                     ; 1211   if (NewState != DISABLE)
5154  0015 7b01          	ld	a,(OFST+1,sp)
5155  0017 2706          	jreq	L5412
5156                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5158  0019 72165258      	bset	21080,#3
5160  001d 2004          	jra	L7412
5161  001f               L5412:
5162                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5164  001f 72175258      	bres	21080,#3
5165  0023               L7412:
5166                     ; 1219 }
5169  0023 84            	pop	a
5170  0024 81            	ret	
5207                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5207                     ; 1228 {
5208                     .text:	section	.text,new
5209  0000               _TIM1_OC2PreloadConfig:
5211  0000 88            	push	a
5212       00000000      OFST:	set	0
5215                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5217  0001 4d            	tnz	a
5218  0002 2711          	jreq	L4721
5219  0004 4a            	dec	a
5220  0005 270e          	jreq	L4721
5221  0007 ae04ce        	ldw	x,#1230
5222  000a 89            	pushw	x
5223  000b 5f            	clrw	x
5224  000c 89            	pushw	x
5225  000d ae0000        	ldw	x,#L101
5226  0010 cd0000        	call	_assert_failed
5228  0013 5b04          	addw	sp,#4
5229  0015               L4721:
5230                     ; 1233   if (NewState != DISABLE)
5232  0015 7b01          	ld	a,(OFST+1,sp)
5233  0017 2706          	jreq	L7612
5234                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5236  0019 72165259      	bset	21081,#3
5238  001d 2004          	jra	L1712
5239  001f               L7612:
5240                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5242  001f 72175259      	bres	21081,#3
5243  0023               L1712:
5244                     ; 1241 }
5247  0023 84            	pop	a
5248  0024 81            	ret	
5285                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5285                     ; 1250 {
5286                     .text:	section	.text,new
5287  0000               _TIM1_OC3PreloadConfig:
5289  0000 88            	push	a
5290       00000000      OFST:	set	0
5293                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5295  0001 4d            	tnz	a
5296  0002 2711          	jreq	L6031
5297  0004 4a            	dec	a
5298  0005 270e          	jreq	L6031
5299  0007 ae04e4        	ldw	x,#1252
5300  000a 89            	pushw	x
5301  000b 5f            	clrw	x
5302  000c 89            	pushw	x
5303  000d ae0000        	ldw	x,#L101
5304  0010 cd0000        	call	_assert_failed
5306  0013 5b04          	addw	sp,#4
5307  0015               L6031:
5308                     ; 1255   if (NewState != DISABLE)
5310  0015 7b01          	ld	a,(OFST+1,sp)
5311  0017 2706          	jreq	L1122
5312                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5314  0019 7216525a      	bset	21082,#3
5316  001d 2004          	jra	L3122
5317  001f               L1122:
5318                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5320  001f 7217525a      	bres	21082,#3
5321  0023               L3122:
5322                     ; 1263 }
5325  0023 84            	pop	a
5326  0024 81            	ret	
5363                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5363                     ; 1272 {
5364                     .text:	section	.text,new
5365  0000               _TIM1_OC4PreloadConfig:
5367  0000 88            	push	a
5368       00000000      OFST:	set	0
5371                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5373  0001 4d            	tnz	a
5374  0002 2711          	jreq	L0231
5375  0004 4a            	dec	a
5376  0005 270e          	jreq	L0231
5377  0007 ae04fa        	ldw	x,#1274
5378  000a 89            	pushw	x
5379  000b 5f            	clrw	x
5380  000c 89            	pushw	x
5381  000d ae0000        	ldw	x,#L101
5382  0010 cd0000        	call	_assert_failed
5384  0013 5b04          	addw	sp,#4
5385  0015               L0231:
5386                     ; 1277   if (NewState != DISABLE)
5388  0015 7b01          	ld	a,(OFST+1,sp)
5389  0017 2706          	jreq	L3322
5390                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5392  0019 7216525b      	bset	21083,#3
5394  001d 2004          	jra	L5322
5395  001f               L3322:
5396                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5398  001f 7217525b      	bres	21083,#3
5399  0023               L5322:
5400                     ; 1285 }
5403  0023 84            	pop	a
5404  0024 81            	ret	
5440                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5440                     ; 1294 {
5441                     .text:	section	.text,new
5442  0000               _TIM1_OC1FastConfig:
5444  0000 88            	push	a
5445       00000000      OFST:	set	0
5448                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5450  0001 4d            	tnz	a
5451  0002 2711          	jreq	L2331
5452  0004 4a            	dec	a
5453  0005 270e          	jreq	L2331
5454  0007 ae0510        	ldw	x,#1296
5455  000a 89            	pushw	x
5456  000b 5f            	clrw	x
5457  000c 89            	pushw	x
5458  000d ae0000        	ldw	x,#L101
5459  0010 cd0000        	call	_assert_failed
5461  0013 5b04          	addw	sp,#4
5462  0015               L2331:
5463                     ; 1299   if (NewState != DISABLE)
5465  0015 7b01          	ld	a,(OFST+1,sp)
5466  0017 2706          	jreq	L5522
5467                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5469  0019 72145258      	bset	21080,#2
5471  001d 2004          	jra	L7522
5472  001f               L5522:
5473                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5475  001f 72155258      	bres	21080,#2
5476  0023               L7522:
5477                     ; 1307 }
5480  0023 84            	pop	a
5481  0024 81            	ret	
5517                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5517                     ; 1316 {
5518                     .text:	section	.text,new
5519  0000               _TIM1_OC2FastConfig:
5521  0000 88            	push	a
5522       00000000      OFST:	set	0
5525                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5527  0001 4d            	tnz	a
5528  0002 2711          	jreq	L4431
5529  0004 4a            	dec	a
5530  0005 270e          	jreq	L4431
5531  0007 ae0526        	ldw	x,#1318
5532  000a 89            	pushw	x
5533  000b 5f            	clrw	x
5534  000c 89            	pushw	x
5535  000d ae0000        	ldw	x,#L101
5536  0010 cd0000        	call	_assert_failed
5538  0013 5b04          	addw	sp,#4
5539  0015               L4431:
5540                     ; 1321   if (NewState != DISABLE)
5542  0015 7b01          	ld	a,(OFST+1,sp)
5543  0017 2706          	jreq	L7722
5544                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5546  0019 72145259      	bset	21081,#2
5548  001d 2004          	jra	L1032
5549  001f               L7722:
5550                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5552  001f 72155259      	bres	21081,#2
5553  0023               L1032:
5554                     ; 1329 }
5557  0023 84            	pop	a
5558  0024 81            	ret	
5594                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5594                     ; 1338 {
5595                     .text:	section	.text,new
5596  0000               _TIM1_OC3FastConfig:
5598  0000 88            	push	a
5599       00000000      OFST:	set	0
5602                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5604  0001 4d            	tnz	a
5605  0002 2711          	jreq	L6531
5606  0004 4a            	dec	a
5607  0005 270e          	jreq	L6531
5608  0007 ae053c        	ldw	x,#1340
5609  000a 89            	pushw	x
5610  000b 5f            	clrw	x
5611  000c 89            	pushw	x
5612  000d ae0000        	ldw	x,#L101
5613  0010 cd0000        	call	_assert_failed
5615  0013 5b04          	addw	sp,#4
5616  0015               L6531:
5617                     ; 1343   if (NewState != DISABLE)
5619  0015 7b01          	ld	a,(OFST+1,sp)
5620  0017 2706          	jreq	L1232
5621                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5623  0019 7214525a      	bset	21082,#2
5625  001d 2004          	jra	L3232
5626  001f               L1232:
5627                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5629  001f 7215525a      	bres	21082,#2
5630  0023               L3232:
5631                     ; 1351 }
5634  0023 84            	pop	a
5635  0024 81            	ret	
5671                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5671                     ; 1360 {
5672                     .text:	section	.text,new
5673  0000               _TIM1_OC4FastConfig:
5675  0000 88            	push	a
5676       00000000      OFST:	set	0
5679                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5681  0001 4d            	tnz	a
5682  0002 2711          	jreq	L0731
5683  0004 4a            	dec	a
5684  0005 270e          	jreq	L0731
5685  0007 ae0552        	ldw	x,#1362
5686  000a 89            	pushw	x
5687  000b 5f            	clrw	x
5688  000c 89            	pushw	x
5689  000d ae0000        	ldw	x,#L101
5690  0010 cd0000        	call	_assert_failed
5692  0013 5b04          	addw	sp,#4
5693  0015               L0731:
5694                     ; 1365   if (NewState != DISABLE)
5696  0015 7b01          	ld	a,(OFST+1,sp)
5697  0017 2706          	jreq	L3432
5698                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5700  0019 7214525b      	bset	21083,#2
5702  001d 2004          	jra	L5432
5703  001f               L3432:
5704                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5706  001f 7215525b      	bres	21083,#2
5707  0023               L5432:
5708                     ; 1373 }
5711  0023 84            	pop	a
5712  0024 81            	ret	
5818                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5818                     ; 1390 {
5819                     .text:	section	.text,new
5820  0000               _TIM1_GenerateEvent:
5822  0000 88            	push	a
5823       00000000      OFST:	set	0
5826                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5828  0001 4d            	tnz	a
5829  0002 260e          	jrne	L0041
5830  0004 ae0570        	ldw	x,#1392
5831  0007 89            	pushw	x
5832  0008 5f            	clrw	x
5833  0009 89            	pushw	x
5834  000a ae0000        	ldw	x,#L101
5835  000d cd0000        	call	_assert_failed
5837  0010 5b04          	addw	sp,#4
5838  0012               L0041:
5839                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5841  0012 7b01          	ld	a,(OFST+1,sp)
5842  0014 c75257        	ld	21079,a
5843                     ; 1396 }
5846  0017 84            	pop	a
5847  0018 81            	ret	
5884                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5884                     ; 1407 {
5885                     .text:	section	.text,new
5886  0000               _TIM1_OC1PolarityConfig:
5888  0000 88            	push	a
5889       00000000      OFST:	set	0
5892                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5894  0001 4d            	tnz	a
5895  0002 2712          	jreq	L2141
5896  0004 a122          	cp	a,#34
5897  0006 270e          	jreq	L2141
5898  0008 ae0581        	ldw	x,#1409
5899  000b 89            	pushw	x
5900  000c 5f            	clrw	x
5901  000d 89            	pushw	x
5902  000e ae0000        	ldw	x,#L101
5903  0011 cd0000        	call	_assert_failed
5905  0014 5b04          	addw	sp,#4
5906  0016               L2141:
5907                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5909  0016 7b01          	ld	a,(OFST+1,sp)
5910  0018 2706          	jreq	L7242
5911                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5913  001a 7212525c      	bset	21084,#1
5915  001e 2004          	jra	L1342
5916  0020               L7242:
5917                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5919  0020 7213525c      	bres	21084,#1
5920  0024               L1342:
5921                     ; 1420 }
5924  0024 84            	pop	a
5925  0025 81            	ret	
5962                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5962                     ; 1431 {
5963                     .text:	section	.text,new
5964  0000               _TIM1_OC1NPolarityConfig:
5966  0000 88            	push	a
5967       00000000      OFST:	set	0
5970                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5972  0001 4d            	tnz	a
5973  0002 2712          	jreq	L4241
5974  0004 a188          	cp	a,#136
5975  0006 270e          	jreq	L4241
5976  0008 ae0599        	ldw	x,#1433
5977  000b 89            	pushw	x
5978  000c 5f            	clrw	x
5979  000d 89            	pushw	x
5980  000e ae0000        	ldw	x,#L101
5981  0011 cd0000        	call	_assert_failed
5983  0014 5b04          	addw	sp,#4
5984  0016               L4241:
5985                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5987  0016 7b01          	ld	a,(OFST+1,sp)
5988  0018 2706          	jreq	L1542
5989                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5991  001a 7216525c      	bset	21084,#3
5993  001e 2004          	jra	L3542
5994  0020               L1542:
5995                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5997  0020 7217525c      	bres	21084,#3
5998  0024               L3542:
5999                     ; 1444 }
6002  0024 84            	pop	a
6003  0025 81            	ret	
6040                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6040                     ; 1455 {
6041                     .text:	section	.text,new
6042  0000               _TIM1_OC2PolarityConfig:
6044  0000 88            	push	a
6045       00000000      OFST:	set	0
6048                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6050  0001 4d            	tnz	a
6051  0002 2712          	jreq	L6341
6052  0004 a122          	cp	a,#34
6053  0006 270e          	jreq	L6341
6054  0008 ae05b1        	ldw	x,#1457
6055  000b 89            	pushw	x
6056  000c 5f            	clrw	x
6057  000d 89            	pushw	x
6058  000e ae0000        	ldw	x,#L101
6059  0011 cd0000        	call	_assert_failed
6061  0014 5b04          	addw	sp,#4
6062  0016               L6341:
6063                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6065  0016 7b01          	ld	a,(OFST+1,sp)
6066  0018 2706          	jreq	L3742
6067                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6069  001a 721a525c      	bset	21084,#5
6071  001e 2004          	jra	L5742
6072  0020               L3742:
6073                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6075  0020 721b525c      	bres	21084,#5
6076  0024               L5742:
6077                     ; 1468 }
6080  0024 84            	pop	a
6081  0025 81            	ret	
6118                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6118                     ; 1479 {
6119                     .text:	section	.text,new
6120  0000               _TIM1_OC2NPolarityConfig:
6122  0000 88            	push	a
6123       00000000      OFST:	set	0
6126                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6128  0001 4d            	tnz	a
6129  0002 2712          	jreq	L0541
6130  0004 a188          	cp	a,#136
6131  0006 270e          	jreq	L0541
6132  0008 ae05c9        	ldw	x,#1481
6133  000b 89            	pushw	x
6134  000c 5f            	clrw	x
6135  000d 89            	pushw	x
6136  000e ae0000        	ldw	x,#L101
6137  0011 cd0000        	call	_assert_failed
6139  0014 5b04          	addw	sp,#4
6140  0016               L0541:
6141                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6143  0016 7b01          	ld	a,(OFST+1,sp)
6144  0018 2706          	jreq	L5152
6145                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6147  001a 721e525c      	bset	21084,#7
6149  001e 2004          	jra	L7152
6150  0020               L5152:
6151                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6153  0020 721f525c      	bres	21084,#7
6154  0024               L7152:
6155                     ; 1492 }
6158  0024 84            	pop	a
6159  0025 81            	ret	
6196                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6196                     ; 1503 {
6197                     .text:	section	.text,new
6198  0000               _TIM1_OC3PolarityConfig:
6200  0000 88            	push	a
6201       00000000      OFST:	set	0
6204                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6206  0001 4d            	tnz	a
6207  0002 2712          	jreq	L2641
6208  0004 a122          	cp	a,#34
6209  0006 270e          	jreq	L2641
6210  0008 ae05e1        	ldw	x,#1505
6211  000b 89            	pushw	x
6212  000c 5f            	clrw	x
6213  000d 89            	pushw	x
6214  000e ae0000        	ldw	x,#L101
6215  0011 cd0000        	call	_assert_failed
6217  0014 5b04          	addw	sp,#4
6218  0016               L2641:
6219                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6221  0016 7b01          	ld	a,(OFST+1,sp)
6222  0018 2706          	jreq	L7352
6223                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6225  001a 7212525d      	bset	21085,#1
6227  001e 2004          	jra	L1452
6228  0020               L7352:
6229                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6231  0020 7213525d      	bres	21085,#1
6232  0024               L1452:
6233                     ; 1516 }
6236  0024 84            	pop	a
6237  0025 81            	ret	
6274                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6274                     ; 1528 {
6275                     .text:	section	.text,new
6276  0000               _TIM1_OC3NPolarityConfig:
6278  0000 88            	push	a
6279       00000000      OFST:	set	0
6282                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6284  0001 4d            	tnz	a
6285  0002 2712          	jreq	L4741
6286  0004 a188          	cp	a,#136
6287  0006 270e          	jreq	L4741
6288  0008 ae05fa        	ldw	x,#1530
6289  000b 89            	pushw	x
6290  000c 5f            	clrw	x
6291  000d 89            	pushw	x
6292  000e ae0000        	ldw	x,#L101
6293  0011 cd0000        	call	_assert_failed
6295  0014 5b04          	addw	sp,#4
6296  0016               L4741:
6297                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6299  0016 7b01          	ld	a,(OFST+1,sp)
6300  0018 2706          	jreq	L1652
6301                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6303  001a 7216525d      	bset	21085,#3
6305  001e 2004          	jra	L3652
6306  0020               L1652:
6307                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6309  0020 7217525d      	bres	21085,#3
6310  0024               L3652:
6311                     ; 1541 }
6314  0024 84            	pop	a
6315  0025 81            	ret	
6352                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6352                     ; 1552 {
6353                     .text:	section	.text,new
6354  0000               _TIM1_OC4PolarityConfig:
6356  0000 88            	push	a
6357       00000000      OFST:	set	0
6360                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6362  0001 4d            	tnz	a
6363  0002 2712          	jreq	L6051
6364  0004 a122          	cp	a,#34
6365  0006 270e          	jreq	L6051
6366  0008 ae0612        	ldw	x,#1554
6367  000b 89            	pushw	x
6368  000c 5f            	clrw	x
6369  000d 89            	pushw	x
6370  000e ae0000        	ldw	x,#L101
6371  0011 cd0000        	call	_assert_failed
6373  0014 5b04          	addw	sp,#4
6374  0016               L6051:
6375                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6377  0016 7b01          	ld	a,(OFST+1,sp)
6378  0018 2706          	jreq	L3062
6379                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6381  001a 721a525d      	bset	21085,#5
6383  001e 2004          	jra	L5062
6384  0020               L3062:
6385                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6387  0020 721b525d      	bres	21085,#5
6388  0024               L5062:
6389                     ; 1565 }
6392  0024 84            	pop	a
6393  0025 81            	ret	
6439                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6439                     ; 1580 {
6440                     .text:	section	.text,new
6441  0000               _TIM1_CCxCmd:
6443  0000 89            	pushw	x
6444       00000000      OFST:	set	0
6447                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6449  0001 9e            	ld	a,xh
6450  0002 4d            	tnz	a
6451  0003 2713          	jreq	L0251
6452  0005 9e            	ld	a,xh
6453  0006 4a            	dec	a
6454  0007 270f          	jreq	L0251
6455  0009 9e            	ld	a,xh
6456  000a a102          	cp	a,#2
6457  000c 270a          	jreq	L0251
6458  000e 9e            	ld	a,xh
6459  000f a103          	cp	a,#3
6460  0011 2705          	jreq	L0251
6461  0013 ae062e        	ldw	x,#1582
6462  0016 ad58          	call	LC013
6463  0018               L0251:
6464                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6466  0018 7b02          	ld	a,(OFST+2,sp)
6467  001a 2708          	jreq	L0351
6468  001c 4a            	dec	a
6469  001d 2705          	jreq	L0351
6470  001f ae062f        	ldw	x,#1583
6471  0022 ad4c          	call	LC013
6472  0024               L0351:
6473                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6475  0024 7b01          	ld	a,(OFST+1,sp)
6476  0026 2610          	jrne	L1362
6477                     ; 1588     if (NewState != DISABLE)
6479  0028 7b02          	ld	a,(OFST+2,sp)
6480  002a 2706          	jreq	L3362
6481                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6483  002c 7210525c      	bset	21084,#0
6485  0030 203c          	jra	L7362
6486  0032               L3362:
6487                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6489  0032 7211525c      	bres	21084,#0
6490  0036 2036          	jra	L7362
6491  0038               L1362:
6492                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6494  0038 a101          	cp	a,#1
6495  003a 2610          	jrne	L1462
6496                     ; 1601     if (NewState != DISABLE)
6498  003c 7b02          	ld	a,(OFST+2,sp)
6499  003e 2706          	jreq	L3462
6500                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6502  0040 7218525c      	bset	21084,#4
6504  0044 2028          	jra	L7362
6505  0046               L3462:
6506                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6508  0046 7219525c      	bres	21084,#4
6509  004a 2022          	jra	L7362
6510  004c               L1462:
6511                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6513  004c a102          	cp	a,#2
6514  004e 2610          	jrne	L1562
6515                     ; 1613     if (NewState != DISABLE)
6517  0050 7b02          	ld	a,(OFST+2,sp)
6518  0052 2706          	jreq	L3562
6519                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6521  0054 7210525d      	bset	21085,#0
6523  0058 2014          	jra	L7362
6524  005a               L3562:
6525                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6527  005a 7211525d      	bres	21085,#0
6528  005e 200e          	jra	L7362
6529  0060               L1562:
6530                     ; 1625     if (NewState != DISABLE)
6532  0060 7b02          	ld	a,(OFST+2,sp)
6533  0062 2706          	jreq	L1662
6534                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6536  0064 7218525d      	bset	21085,#4
6538  0068 2004          	jra	L7362
6539  006a               L1662:
6540                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6542  006a 7219525d      	bres	21085,#4
6543  006e               L7362:
6544                     ; 1634 }
6547  006e 85            	popw	x
6548  006f 81            	ret	
6549  0070               LC013:
6550  0070 89            	pushw	x
6551  0071 5f            	clrw	x
6552  0072 89            	pushw	x
6553  0073 ae0000        	ldw	x,#L101
6554  0076 cd0000        	call	_assert_failed
6556  0079 5b04          	addw	sp,#4
6557  007b 81            	ret	
6603                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6603                     ; 1648 {
6604                     .text:	section	.text,new
6605  0000               _TIM1_CCxNCmd:
6607  0000 89            	pushw	x
6608       00000000      OFST:	set	0
6611                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6613  0001 9e            	ld	a,xh
6614  0002 4d            	tnz	a
6615  0003 270e          	jreq	L2451
6616  0005 9e            	ld	a,xh
6617  0006 4a            	dec	a
6618  0007 270a          	jreq	L2451
6619  0009 9e            	ld	a,xh
6620  000a a102          	cp	a,#2
6621  000c 2705          	jreq	L2451
6622  000e ae0672        	ldw	x,#1650
6623  0011 ad43          	call	LC014
6624  0013               L2451:
6625                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6627  0013 7b02          	ld	a,(OFST+2,sp)
6628  0015 2708          	jreq	L2551
6629  0017 4a            	dec	a
6630  0018 2705          	jreq	L2551
6631  001a ae0673        	ldw	x,#1651
6632  001d ad37          	call	LC014
6633  001f               L2551:
6634                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6636  001f 7b01          	ld	a,(OFST+1,sp)
6637  0021 2610          	jrne	L7072
6638                     ; 1656     if (NewState != DISABLE)
6640  0023 7b02          	ld	a,(OFST+2,sp)
6641  0025 2706          	jreq	L1172
6642                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6644  0027 7214525c      	bset	21084,#2
6646  002b 2027          	jra	L5172
6647  002d               L1172:
6648                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6650  002d 7215525c      	bres	21084,#2
6651  0031 2021          	jra	L5172
6652  0033               L7072:
6653                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6655  0033 4a            	dec	a
6656  0034 2610          	jrne	L7172
6657                     ; 1668     if (NewState != DISABLE)
6659  0036 7b02          	ld	a,(OFST+2,sp)
6660  0038 2706          	jreq	L1272
6661                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6663  003a 721c525c      	bset	21084,#6
6665  003e 2014          	jra	L5172
6666  0040               L1272:
6667                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6669  0040 721d525c      	bres	21084,#6
6670  0044 200e          	jra	L5172
6671  0046               L7172:
6672                     ; 1680     if (NewState != DISABLE)
6674  0046 7b02          	ld	a,(OFST+2,sp)
6675  0048 2706          	jreq	L7272
6676                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6678  004a 7214525d      	bset	21085,#2
6680  004e 2004          	jra	L5172
6681  0050               L7272:
6682                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6684  0050 7215525d      	bres	21085,#2
6685  0054               L5172:
6686                     ; 1689 }
6689  0054 85            	popw	x
6690  0055 81            	ret	
6691  0056               LC014:
6692  0056 89            	pushw	x
6693  0057 5f            	clrw	x
6694  0058 89            	pushw	x
6695  0059 ae0000        	ldw	x,#L101
6696  005c cd0000        	call	_assert_failed
6698  005f 5b04          	addw	sp,#4
6699  0061 81            	ret	
6745                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6745                     ; 1713 {
6746                     .text:	section	.text,new
6747  0000               _TIM1_SelectOCxM:
6749  0000 89            	pushw	x
6750       00000000      OFST:	set	0
6753                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6755  0001 9e            	ld	a,xh
6756  0002 4d            	tnz	a
6757  0003 2713          	jreq	L4651
6758  0005 9e            	ld	a,xh
6759  0006 4a            	dec	a
6760  0007 270f          	jreq	L4651
6761  0009 9e            	ld	a,xh
6762  000a a102          	cp	a,#2
6763  000c 270a          	jreq	L4651
6764  000e 9e            	ld	a,xh
6765  000f a103          	cp	a,#3
6766  0011 2705          	jreq	L4651
6767  0013 ae06b3        	ldw	x,#1715
6768  0016 ad71          	call	LC015
6769  0018               L4651:
6770                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6772  0018 7b02          	ld	a,(OFST+2,sp)
6773  001a 2721          	jreq	L4751
6774  001c a110          	cp	a,#16
6775  001e 271d          	jreq	L4751
6776  0020 a120          	cp	a,#32
6777  0022 2719          	jreq	L4751
6778  0024 a130          	cp	a,#48
6779  0026 2715          	jreq	L4751
6780  0028 a160          	cp	a,#96
6781  002a 2711          	jreq	L4751
6782  002c a170          	cp	a,#112
6783  002e 270d          	jreq	L4751
6784  0030 a150          	cp	a,#80
6785  0032 2709          	jreq	L4751
6786  0034 a140          	cp	a,#64
6787  0036 2705          	jreq	L4751
6788  0038 ae06b4        	ldw	x,#1716
6789  003b ad4c          	call	LC015
6790  003d               L4751:
6791                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6793  003d 7b01          	ld	a,(OFST+1,sp)
6794  003f 2610          	jrne	L5572
6795                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6797  0041 7211525c      	bres	21084,#0
6798                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6798                     ; 1725                             | (uint8_t)TIM1_OCMode);
6800  0045 c65258        	ld	a,21080
6801  0048 a48f          	and	a,#143
6802  004a 1a02          	or	a,(OFST+2,sp)
6803  004c c75258        	ld	21080,a
6805  004f 2036          	jra	L7572
6806  0051               L5572:
6807                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6809  0051 a101          	cp	a,#1
6810  0053 2610          	jrne	L1672
6811                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6813  0055 7219525c      	bres	21084,#4
6814                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6814                     ; 1734                             | (uint8_t)TIM1_OCMode);
6816  0059 c65259        	ld	a,21081
6817  005c a48f          	and	a,#143
6818  005e 1a02          	or	a,(OFST+2,sp)
6819  0060 c75259        	ld	21081,a
6821  0063 2022          	jra	L7572
6822  0065               L1672:
6823                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6825  0065 a102          	cp	a,#2
6826  0067 2610          	jrne	L5672
6827                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6829  0069 7211525d      	bres	21085,#0
6830                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6830                     ; 1743                             | (uint8_t)TIM1_OCMode);
6832  006d c6525a        	ld	a,21082
6833  0070 a48f          	and	a,#143
6834  0072 1a02          	or	a,(OFST+2,sp)
6835  0074 c7525a        	ld	21082,a
6837  0077 200e          	jra	L7572
6838  0079               L5672:
6839                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6841  0079 7219525d      	bres	21085,#4
6842                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6842                     ; 1752                             | (uint8_t)TIM1_OCMode);
6844  007d c6525b        	ld	a,21083
6845  0080 a48f          	and	a,#143
6846  0082 1a02          	or	a,(OFST+2,sp)
6847  0084 c7525b        	ld	21083,a
6848  0087               L7572:
6849                     ; 1754 }
6852  0087 85            	popw	x
6853  0088 81            	ret	
6854  0089               LC015:
6855  0089 89            	pushw	x
6856  008a 5f            	clrw	x
6857  008b 89            	pushw	x
6858  008c ae0000        	ldw	x,#L101
6859  008f cd0000        	call	_assert_failed
6861  0092 5b04          	addw	sp,#4
6862  0094 81            	ret	
6896                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6896                     ; 1763 {
6897                     .text:	section	.text,new
6898  0000               _TIM1_SetCounter:
6902                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6904  0000 9e            	ld	a,xh
6905  0001 c7525e        	ld	21086,a
6906                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6908  0004 9f            	ld	a,xl
6909  0005 c7525f        	ld	21087,a
6910                     ; 1767 }
6913  0008 81            	ret	
6947                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6947                     ; 1776 {
6948                     .text:	section	.text,new
6949  0000               _TIM1_SetAutoreload:
6953                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6955  0000 9e            	ld	a,xh
6956  0001 c75262        	ld	21090,a
6957                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6959  0004 9f            	ld	a,xl
6960  0005 c75263        	ld	21091,a
6961                     ; 1780  }
6964  0008 81            	ret	
6998                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6998                     ; 1789 {
6999                     .text:	section	.text,new
7000  0000               _TIM1_SetCompare1:
7004                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7006  0000 9e            	ld	a,xh
7007  0001 c75265        	ld	21093,a
7008                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7010  0004 9f            	ld	a,xl
7011  0005 c75266        	ld	21094,a
7012                     ; 1793 }
7015  0008 81            	ret	
7049                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7049                     ; 1802 {
7050                     .text:	section	.text,new
7051  0000               _TIM1_SetCompare2:
7055                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7057  0000 9e            	ld	a,xh
7058  0001 c75267        	ld	21095,a
7059                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7061  0004 9f            	ld	a,xl
7062  0005 c75268        	ld	21096,a
7063                     ; 1806 }
7066  0008 81            	ret	
7100                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7100                     ; 1815 {
7101                     .text:	section	.text,new
7102  0000               _TIM1_SetCompare3:
7106                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7108  0000 9e            	ld	a,xh
7109  0001 c75269        	ld	21097,a
7110                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7112  0004 9f            	ld	a,xl
7113  0005 c7526a        	ld	21098,a
7114                     ; 1819 }
7117  0008 81            	ret	
7151                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7151                     ; 1828 {
7152                     .text:	section	.text,new
7153  0000               _TIM1_SetCompare4:
7157                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7159  0000 9e            	ld	a,xh
7160  0001 c7526b        	ld	21099,a
7161                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7163  0004 9f            	ld	a,xl
7164  0005 c7526c        	ld	21100,a
7165                     ; 1832 }
7168  0008 81            	ret	
7205                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7205                     ; 1845 {
7206                     .text:	section	.text,new
7207  0000               _TIM1_SetIC1Prescaler:
7209  0000 88            	push	a
7210       00000000      OFST:	set	0
7213                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7215  0001 4d            	tnz	a
7216  0002 271a          	jreq	L2261
7217  0004 a104          	cp	a,#4
7218  0006 2716          	jreq	L2261
7219  0008 a108          	cp	a,#8
7220  000a 2712          	jreq	L2261
7221  000c a10c          	cp	a,#12
7222  000e 270e          	jreq	L2261
7223  0010 ae0737        	ldw	x,#1847
7224  0013 89            	pushw	x
7225  0014 5f            	clrw	x
7226  0015 89            	pushw	x
7227  0016 ae0000        	ldw	x,#L101
7228  0019 cd0000        	call	_assert_failed
7230  001c 5b04          	addw	sp,#4
7231  001e               L2261:
7232                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7232                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7234  001e c65258        	ld	a,21080
7235  0021 a4f3          	and	a,#243
7236  0023 1a01          	or	a,(OFST+1,sp)
7237  0025 c75258        	ld	21080,a
7238                     ; 1852 }
7241  0028 84            	pop	a
7242  0029 81            	ret	
7279                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7279                     ; 1865 {
7280                     .text:	section	.text,new
7281  0000               _TIM1_SetIC2Prescaler:
7283  0000 88            	push	a
7284       00000000      OFST:	set	0
7287                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7289  0001 4d            	tnz	a
7290  0002 271a          	jreq	L4361
7291  0004 a104          	cp	a,#4
7292  0006 2716          	jreq	L4361
7293  0008 a108          	cp	a,#8
7294  000a 2712          	jreq	L4361
7295  000c a10c          	cp	a,#12
7296  000e 270e          	jreq	L4361
7297  0010 ae074c        	ldw	x,#1868
7298  0013 89            	pushw	x
7299  0014 5f            	clrw	x
7300  0015 89            	pushw	x
7301  0016 ae0000        	ldw	x,#L101
7302  0019 cd0000        	call	_assert_failed
7304  001c 5b04          	addw	sp,#4
7305  001e               L4361:
7306                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7306                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7308  001e c65259        	ld	a,21081
7309  0021 a4f3          	and	a,#243
7310  0023 1a01          	or	a,(OFST+1,sp)
7311  0025 c75259        	ld	21081,a
7312                     ; 1873 }
7315  0028 84            	pop	a
7316  0029 81            	ret	
7353                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7353                     ; 1886 {
7354                     .text:	section	.text,new
7355  0000               _TIM1_SetIC3Prescaler:
7357  0000 88            	push	a
7358       00000000      OFST:	set	0
7361                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7363  0001 4d            	tnz	a
7364  0002 271a          	jreq	L6461
7365  0004 a104          	cp	a,#4
7366  0006 2716          	jreq	L6461
7367  0008 a108          	cp	a,#8
7368  000a 2712          	jreq	L6461
7369  000c a10c          	cp	a,#12
7370  000e 270e          	jreq	L6461
7371  0010 ae0761        	ldw	x,#1889
7372  0013 89            	pushw	x
7373  0014 5f            	clrw	x
7374  0015 89            	pushw	x
7375  0016 ae0000        	ldw	x,#L101
7376  0019 cd0000        	call	_assert_failed
7378  001c 5b04          	addw	sp,#4
7379  001e               L6461:
7380                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7380                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7382  001e c6525a        	ld	a,21082
7383  0021 a4f3          	and	a,#243
7384  0023 1a01          	or	a,(OFST+1,sp)
7385  0025 c7525a        	ld	21082,a
7386                     ; 1894 }
7389  0028 84            	pop	a
7390  0029 81            	ret	
7427                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7427                     ; 1907 {
7428                     .text:	section	.text,new
7429  0000               _TIM1_SetIC4Prescaler:
7431  0000 88            	push	a
7432       00000000      OFST:	set	0
7435                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7437  0001 4d            	tnz	a
7438  0002 271a          	jreq	L0661
7439  0004 a104          	cp	a,#4
7440  0006 2716          	jreq	L0661
7441  0008 a108          	cp	a,#8
7442  000a 2712          	jreq	L0661
7443  000c a10c          	cp	a,#12
7444  000e 270e          	jreq	L0661
7445  0010 ae0776        	ldw	x,#1910
7446  0013 89            	pushw	x
7447  0014 5f            	clrw	x
7448  0015 89            	pushw	x
7449  0016 ae0000        	ldw	x,#L101
7450  0019 cd0000        	call	_assert_failed
7452  001c 5b04          	addw	sp,#4
7453  001e               L0661:
7454                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7454                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7456  001e c6525b        	ld	a,21083
7457  0021 a4f3          	and	a,#243
7458  0023 1a01          	or	a,(OFST+1,sp)
7459  0025 c7525b        	ld	21083,a
7460                     ; 1915 }
7463  0028 84            	pop	a
7464  0029 81            	ret	
7516                     ; 1922 uint16_t TIM1_GetCapture1(void)
7516                     ; 1923 {
7517                     .text:	section	.text,new
7518  0000               _TIM1_GetCapture1:
7520  0000 5204          	subw	sp,#4
7521       00000004      OFST:	set	4
7524                     ; 1926   uint16_t tmpccr1 = 0;
7526                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7530                     ; 1929   tmpccr1h = TIM1->CCR1H;
7532  0002 c65265        	ld	a,21093
7533  0005 6b02          	ld	(OFST-2,sp),a
7534                     ; 1930   tmpccr1l = TIM1->CCR1L;
7536  0007 c65266        	ld	a,21094
7537  000a 6b01          	ld	(OFST-3,sp),a
7538                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7540  000c 5f            	clrw	x
7541  000d 97            	ld	xl,a
7542  000e 1f03          	ldw	(OFST-1,sp),x
7543                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7545  0010 5f            	clrw	x
7546  0011 7b02          	ld	a,(OFST-2,sp)
7547  0013 97            	ld	xl,a
7548  0014 7b04          	ld	a,(OFST+0,sp)
7549  0016 01            	rrwa	x,a
7550  0017 1a03          	or	a,(OFST-1,sp)
7551  0019 01            	rrwa	x,a
7552                     ; 1935   return (uint16_t)tmpccr1;
7556  001a 5b04          	addw	sp,#4
7557  001c 81            	ret	
7609                     ; 1943 uint16_t TIM1_GetCapture2(void)
7609                     ; 1944 {
7610                     .text:	section	.text,new
7611  0000               _TIM1_GetCapture2:
7613  0000 5204          	subw	sp,#4
7614       00000004      OFST:	set	4
7617                     ; 1947   uint16_t tmpccr2 = 0;
7619                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7623                     ; 1950   tmpccr2h = TIM1->CCR2H;
7625  0002 c65267        	ld	a,21095
7626  0005 6b02          	ld	(OFST-2,sp),a
7627                     ; 1951   tmpccr2l = TIM1->CCR2L;
7629  0007 c65268        	ld	a,21096
7630  000a 6b01          	ld	(OFST-3,sp),a
7631                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7633  000c 5f            	clrw	x
7634  000d 97            	ld	xl,a
7635  000e 1f03          	ldw	(OFST-1,sp),x
7636                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7638  0010 5f            	clrw	x
7639  0011 7b02          	ld	a,(OFST-2,sp)
7640  0013 97            	ld	xl,a
7641  0014 7b04          	ld	a,(OFST+0,sp)
7642  0016 01            	rrwa	x,a
7643  0017 1a03          	or	a,(OFST-1,sp)
7644  0019 01            	rrwa	x,a
7645                     ; 1956   return (uint16_t)tmpccr2;
7649  001a 5b04          	addw	sp,#4
7650  001c 81            	ret	
7702                     ; 1964 uint16_t TIM1_GetCapture3(void)
7702                     ; 1965 {
7703                     .text:	section	.text,new
7704  0000               _TIM1_GetCapture3:
7706  0000 5204          	subw	sp,#4
7707       00000004      OFST:	set	4
7710                     ; 1967   uint16_t tmpccr3 = 0;
7712                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7716                     ; 1970   tmpccr3h = TIM1->CCR3H;
7718  0002 c65269        	ld	a,21097
7719  0005 6b02          	ld	(OFST-2,sp),a
7720                     ; 1971   tmpccr3l = TIM1->CCR3L;
7722  0007 c6526a        	ld	a,21098
7723  000a 6b01          	ld	(OFST-3,sp),a
7724                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7726  000c 5f            	clrw	x
7727  000d 97            	ld	xl,a
7728  000e 1f03          	ldw	(OFST-1,sp),x
7729                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7731  0010 5f            	clrw	x
7732  0011 7b02          	ld	a,(OFST-2,sp)
7733  0013 97            	ld	xl,a
7734  0014 7b04          	ld	a,(OFST+0,sp)
7735  0016 01            	rrwa	x,a
7736  0017 1a03          	or	a,(OFST-1,sp)
7737  0019 01            	rrwa	x,a
7738                     ; 1976   return (uint16_t)tmpccr3;
7742  001a 5b04          	addw	sp,#4
7743  001c 81            	ret	
7795                     ; 1984 uint16_t TIM1_GetCapture4(void)
7795                     ; 1985 {
7796                     .text:	section	.text,new
7797  0000               _TIM1_GetCapture4:
7799  0000 5204          	subw	sp,#4
7800       00000004      OFST:	set	4
7803                     ; 1987   uint16_t tmpccr4 = 0;
7805                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7809                     ; 1990   tmpccr4h = TIM1->CCR4H;
7811  0002 c6526b        	ld	a,21099
7812  0005 6b02          	ld	(OFST-2,sp),a
7813                     ; 1991   tmpccr4l = TIM1->CCR4L;
7815  0007 c6526c        	ld	a,21100
7816  000a 6b01          	ld	(OFST-3,sp),a
7817                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7819  000c 5f            	clrw	x
7820  000d 97            	ld	xl,a
7821  000e 1f03          	ldw	(OFST-1,sp),x
7822                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7824  0010 5f            	clrw	x
7825  0011 7b02          	ld	a,(OFST-2,sp)
7826  0013 97            	ld	xl,a
7827  0014 7b04          	ld	a,(OFST+0,sp)
7828  0016 01            	rrwa	x,a
7829  0017 1a03          	or	a,(OFST-1,sp)
7830  0019 01            	rrwa	x,a
7831                     ; 1996   return (uint16_t)tmpccr4;
7835  001a 5b04          	addw	sp,#4
7836  001c 81            	ret	
7870                     ; 2004 uint16_t TIM1_GetCounter(void)
7870                     ; 2005 {
7871                     .text:	section	.text,new
7872  0000               _TIM1_GetCounter:
7874  0000 89            	pushw	x
7875       00000002      OFST:	set	2
7878                     ; 2006   uint16_t tmpcntr = 0;
7880                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7882  0001 c6525e        	ld	a,21086
7883  0004 97            	ld	xl,a
7884  0005 4f            	clr	a
7885  0006 02            	rlwa	x,a
7886  0007 1f01          	ldw	(OFST-1,sp),x
7887                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7889  0009 5f            	clrw	x
7890  000a c6525f        	ld	a,21087
7891  000d 97            	ld	xl,a
7892  000e 01            	rrwa	x,a
7893  000f 1a02          	or	a,(OFST+0,sp)
7894  0011 01            	rrwa	x,a
7895  0012 1a01          	or	a,(OFST-1,sp)
7896  0014 01            	rrwa	x,a
7899  0015 5b02          	addw	sp,#2
7900  0017 81            	ret	
7934                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7934                     ; 2020 {
7935                     .text:	section	.text,new
7936  0000               _TIM1_GetPrescaler:
7938  0000 89            	pushw	x
7939       00000002      OFST:	set	2
7942                     ; 2021   uint16_t temp = 0;
7944                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7946  0001 c65260        	ld	a,21088
7947  0004 97            	ld	xl,a
7948  0005 4f            	clr	a
7949  0006 02            	rlwa	x,a
7950  0007 1f01          	ldw	(OFST-1,sp),x
7951                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7953  0009 5f            	clrw	x
7954  000a c65261        	ld	a,21089
7955  000d 97            	ld	xl,a
7956  000e 01            	rrwa	x,a
7957  000f 1a02          	or	a,(OFST+0,sp)
7958  0011 01            	rrwa	x,a
7959  0012 1a01          	or	a,(OFST-1,sp)
7960  0014 01            	rrwa	x,a
7963  0015 5b02          	addw	sp,#2
7964  0017 81            	ret	
8139                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8139                     ; 2048 {
8140                     .text:	section	.text,new
8141  0000               _TIM1_GetFlagStatus:
8143  0000 89            	pushw	x
8144  0001 89            	pushw	x
8145       00000002      OFST:	set	2
8148                     ; 2049   FlagStatus bitstatus = RESET;
8150                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8154                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8156  0002 a30001        	cpw	x,#1
8157  0005 2745          	jreq	L6071
8158  0007 a30002        	cpw	x,#2
8159  000a 2740          	jreq	L6071
8160  000c a30004        	cpw	x,#4
8161  000f 273b          	jreq	L6071
8162  0011 a30008        	cpw	x,#8
8163  0014 2736          	jreq	L6071
8164  0016 a30010        	cpw	x,#16
8165  0019 2731          	jreq	L6071
8166  001b a30020        	cpw	x,#32
8167  001e 272c          	jreq	L6071
8168  0020 a30040        	cpw	x,#64
8169  0023 2727          	jreq	L6071
8170  0025 a30080        	cpw	x,#128
8171  0028 2722          	jreq	L6071
8172  002a a30200        	cpw	x,#512
8173  002d 271d          	jreq	L6071
8174  002f a30400        	cpw	x,#1024
8175  0032 2718          	jreq	L6071
8176  0034 a30800        	cpw	x,#2048
8177  0037 2713          	jreq	L6071
8178  0039 a31000        	cpw	x,#4096
8179  003c 270e          	jreq	L6071
8180  003e ae0805        	ldw	x,#2053
8181  0041 89            	pushw	x
8182  0042 5f            	clrw	x
8183  0043 89            	pushw	x
8184  0044 ae0000        	ldw	x,#L101
8185  0047 cd0000        	call	_assert_failed
8187  004a 5b04          	addw	sp,#4
8188  004c               L6071:
8189                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8191  004c c65255        	ld	a,21077
8192  004f 1404          	and	a,(OFST+2,sp)
8193  0051 6b01          	ld	(OFST-1,sp),a
8194                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8196  0053 7b03          	ld	a,(OFST+1,sp)
8197  0055 6b02          	ld	(OFST+0,sp),a
8198                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8200  0057 c45256        	and	a,21078
8201  005a 1a01          	or	a,(OFST-1,sp)
8202  005c 2702          	jreq	L7643
8203                     ; 2060     bitstatus = SET;
8205  005e a601          	ld	a,#1
8207  0060               L7643:
8208                     ; 2064     bitstatus = RESET;
8210                     ; 2066   return (FlagStatus)(bitstatus);
8214  0060 5b04          	addw	sp,#4
8215  0062 81            	ret	
8251                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8251                     ; 2088 {
8252                     .text:	section	.text,new
8253  0000               _TIM1_ClearFlag:
8255  0000 89            	pushw	x
8256       00000000      OFST:	set	0
8259                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8261  0001 01            	rrwa	x,a
8262  0002 9f            	ld	a,xl
8263  0003 a4e1          	and	a,#225
8264  0005 97            	ld	xl,a
8265  0006 4f            	clr	a
8266  0007 02            	rlwa	x,a
8267  0008 5d            	tnzw	x
8268  0009 2604          	jrne	L4171
8269  000b 1e01          	ldw	x,(OFST+1,sp)
8270  000d 260e          	jrne	L6171
8271  000f               L4171:
8272  000f ae082a        	ldw	x,#2090
8273  0012 89            	pushw	x
8274  0013 5f            	clrw	x
8275  0014 89            	pushw	x
8276  0015 ae0000        	ldw	x,#L101
8277  0018 cd0000        	call	_assert_failed
8279  001b 5b04          	addw	sp,#4
8280  001d               L6171:
8281                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8283  001d 7b02          	ld	a,(OFST+2,sp)
8284  001f 43            	cpl	a
8285  0020 c75255        	ld	21077,a
8286                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8286                     ; 2095                         (uint8_t)0x1E);
8288  0023 7b01          	ld	a,(OFST+1,sp)
8289  0025 43            	cpl	a
8290  0026 a41e          	and	a,#30
8291  0028 c75256        	ld	21078,a
8292                     ; 2096 }
8295  002b 85            	popw	x
8296  002c 81            	ret	
8361                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8361                     ; 2113 {
8362                     .text:	section	.text,new
8363  0000               _TIM1_GetITStatus:
8365  0000 88            	push	a
8366  0001 89            	pushw	x
8367       00000002      OFST:	set	2
8370                     ; 2114   ITStatus bitstatus = RESET;
8372                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8376                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8378  0002 a101          	cp	a,#1
8379  0004 272a          	jreq	L0371
8380  0006 a102          	cp	a,#2
8381  0008 2726          	jreq	L0371
8382  000a a104          	cp	a,#4
8383  000c 2722          	jreq	L0371
8384  000e a108          	cp	a,#8
8385  0010 271e          	jreq	L0371
8386  0012 a110          	cp	a,#16
8387  0014 271a          	jreq	L0371
8388  0016 a120          	cp	a,#32
8389  0018 2716          	jreq	L0371
8390  001a a140          	cp	a,#64
8391  001c 2712          	jreq	L0371
8392  001e a180          	cp	a,#128
8393  0020 270e          	jreq	L0371
8394  0022 ae0846        	ldw	x,#2118
8395  0025 89            	pushw	x
8396  0026 5f            	clrw	x
8397  0027 89            	pushw	x
8398  0028 ae0000        	ldw	x,#L101
8399  002b cd0000        	call	_assert_failed
8401  002e 5b04          	addw	sp,#4
8402  0030               L0371:
8403                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8405  0030 c65255        	ld	a,21077
8406  0033 1403          	and	a,(OFST+1,sp)
8407  0035 6b01          	ld	(OFST-1,sp),a
8408                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8410  0037 c65254        	ld	a,21076
8411  003a 1403          	and	a,(OFST+1,sp)
8412  003c 6b02          	ld	(OFST+0,sp),a
8413                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8415  003e 7b01          	ld	a,(OFST-1,sp)
8416  0040 2708          	jreq	L3453
8418  0042 7b02          	ld	a,(OFST+0,sp)
8419  0044 2704          	jreq	L3453
8420                     ; 2126     bitstatus = SET;
8422  0046 a601          	ld	a,#1
8424  0048 2001          	jra	L5453
8425  004a               L3453:
8426                     ; 2130     bitstatus = RESET;
8428  004a 4f            	clr	a
8429  004b               L5453:
8430                     ; 2132   return (ITStatus)(bitstatus);
8434  004b 5b03          	addw	sp,#3
8435  004d 81            	ret	
8472                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8472                     ; 2150 {
8473                     .text:	section	.text,new
8474  0000               _TIM1_ClearITPendingBit:
8476  0000 88            	push	a
8477       00000000      OFST:	set	0
8480                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8482  0001 4d            	tnz	a
8483  0002 260e          	jrne	L0471
8484  0004 ae0868        	ldw	x,#2152
8485  0007 89            	pushw	x
8486  0008 5f            	clrw	x
8487  0009 89            	pushw	x
8488  000a ae0000        	ldw	x,#L101
8489  000d cd0000        	call	_assert_failed
8491  0010 5b04          	addw	sp,#4
8492  0012               L0471:
8493                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8495  0012 7b01          	ld	a,(OFST+1,sp)
8496  0014 43            	cpl	a
8497  0015 c75255        	ld	21077,a
8498                     ; 2156 }
8501  0018 84            	pop	a
8502  0019 81            	ret	
8554                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8554                     ; 2175                        uint8_t TIM1_ICSelection,
8554                     ; 2176                        uint8_t TIM1_ICFilter)
8554                     ; 2177 {
8555                     .text:	section	.text,new
8556  0000               L3_TI1_Config:
8558  0000 89            	pushw	x
8559       00000001      OFST:	set	1
8562                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8564  0001 7211525c      	bres	21084,#0
8565  0005 88            	push	a
8566                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8566                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8568  0006 7b06          	ld	a,(OFST+5,sp)
8569  0008 97            	ld	xl,a
8570  0009 a610          	ld	a,#16
8571  000b 42            	mul	x,a
8572  000c 9f            	ld	a,xl
8573  000d 1a03          	or	a,(OFST+2,sp)
8574  000f 6b01          	ld	(OFST+0,sp),a
8575  0011 c65258        	ld	a,21080
8576  0014 a40c          	and	a,#12
8577  0016 1a01          	or	a,(OFST+0,sp)
8578  0018 c75258        	ld	21080,a
8579                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8581  001b 7b02          	ld	a,(OFST+1,sp)
8582  001d 2706          	jreq	L3163
8583                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8585  001f 7212525c      	bset	21084,#1
8587  0023 2004          	jra	L5163
8588  0025               L3163:
8589                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8591  0025 7213525c      	bres	21084,#1
8592  0029               L5163:
8593                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8595  0029 7210525c      	bset	21084,#0
8596                     ; 2197 }
8599  002d 5b03          	addw	sp,#3
8600  002f 81            	ret	
8652                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8652                     ; 2216                        uint8_t TIM1_ICSelection,
8652                     ; 2217                        uint8_t TIM1_ICFilter)
8652                     ; 2218 {
8653                     .text:	section	.text,new
8654  0000               L5_TI2_Config:
8656  0000 89            	pushw	x
8657       00000001      OFST:	set	1
8660                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8662  0001 7219525c      	bres	21084,#4
8663  0005 88            	push	a
8664                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8664                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8666  0006 7b06          	ld	a,(OFST+5,sp)
8667  0008 97            	ld	xl,a
8668  0009 a610          	ld	a,#16
8669  000b 42            	mul	x,a
8670  000c 9f            	ld	a,xl
8671  000d 1a03          	or	a,(OFST+2,sp)
8672  000f 6b01          	ld	(OFST+0,sp),a
8673  0011 c65259        	ld	a,21081
8674  0014 a40c          	and	a,#12
8675  0016 1a01          	or	a,(OFST+0,sp)
8676  0018 c75259        	ld	21081,a
8677                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8679  001b 7b02          	ld	a,(OFST+1,sp)
8680  001d 2706          	jreq	L5463
8681                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8683  001f 721a525c      	bset	21084,#5
8685  0023 2004          	jra	L7463
8686  0025               L5463:
8687                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8689  0025 721b525c      	bres	21084,#5
8690  0029               L7463:
8691                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8693  0029 7218525c      	bset	21084,#4
8694                     ; 2236 }
8697  002d 5b03          	addw	sp,#3
8698  002f 81            	ret	
8750                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8750                     ; 2255                        uint8_t TIM1_ICSelection,
8750                     ; 2256                        uint8_t TIM1_ICFilter)
8750                     ; 2257 {
8751                     .text:	section	.text,new
8752  0000               L7_TI3_Config:
8754  0000 89            	pushw	x
8755       00000001      OFST:	set	1
8758                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8760  0001 7211525d      	bres	21085,#0
8761  0005 88            	push	a
8762                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8762                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8764  0006 7b06          	ld	a,(OFST+5,sp)
8765  0008 97            	ld	xl,a
8766  0009 a610          	ld	a,#16
8767  000b 42            	mul	x,a
8768  000c 9f            	ld	a,xl
8769  000d 1a03          	or	a,(OFST+2,sp)
8770  000f 6b01          	ld	(OFST+0,sp),a
8771  0011 c6525a        	ld	a,21082
8772  0014 a40c          	and	a,#12
8773  0016 1a01          	or	a,(OFST+0,sp)
8774  0018 c7525a        	ld	21082,a
8775                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8777  001b 7b02          	ld	a,(OFST+1,sp)
8778  001d 2706          	jreq	L7763
8779                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8781  001f 7212525d      	bset	21085,#1
8783  0023 2004          	jra	L1073
8784  0025               L7763:
8785                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8787  0025 7213525d      	bres	21085,#1
8788  0029               L1073:
8789                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8791  0029 7210525d      	bset	21085,#0
8792                     ; 2276 }
8795  002d 5b03          	addw	sp,#3
8796  002f 81            	ret	
8848                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8848                     ; 2295                        uint8_t TIM1_ICSelection,
8848                     ; 2296                        uint8_t TIM1_ICFilter)
8848                     ; 2297 {
8849                     .text:	section	.text,new
8850  0000               L11_TI4_Config:
8852  0000 89            	pushw	x
8853       00000001      OFST:	set	1
8856                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8858  0001 7219525d      	bres	21085,#4
8859  0005 88            	push	a
8860                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8860                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8862  0006 7b06          	ld	a,(OFST+5,sp)
8863  0008 97            	ld	xl,a
8864  0009 a610          	ld	a,#16
8865  000b 42            	mul	x,a
8866  000c 9f            	ld	a,xl
8867  000d 1a03          	or	a,(OFST+2,sp)
8868  000f 6b01          	ld	(OFST+0,sp),a
8869  0011 c6525b        	ld	a,21083
8870  0014 a40c          	and	a,#12
8871  0016 1a01          	or	a,(OFST+0,sp)
8872  0018 c7525b        	ld	21083,a
8873                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8875  001b 7b02          	ld	a,(OFST+1,sp)
8876  001d 2706          	jreq	L1373
8877                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8879  001f 721a525d      	bset	21085,#5
8881  0023 2004          	jra	L3373
8882  0025               L1373:
8883                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8885  0025 721b525d      	bres	21085,#5
8886  0029               L3373:
8887                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8889  0029 7218525d      	bset	21085,#4
8890                     ; 2317 }
8893  002d 5b03          	addw	sp,#3
8894  002f 81            	ret	
8907                     	xdef	_TIM1_ClearITPendingBit
8908                     	xdef	_TIM1_GetITStatus
8909                     	xdef	_TIM1_ClearFlag
8910                     	xdef	_TIM1_GetFlagStatus
8911                     	xdef	_TIM1_GetPrescaler
8912                     	xdef	_TIM1_GetCounter
8913                     	xdef	_TIM1_GetCapture4
8914                     	xdef	_TIM1_GetCapture3
8915                     	xdef	_TIM1_GetCapture2
8916                     	xdef	_TIM1_GetCapture1
8917                     	xdef	_TIM1_SetIC4Prescaler
8918                     	xdef	_TIM1_SetIC3Prescaler
8919                     	xdef	_TIM1_SetIC2Prescaler
8920                     	xdef	_TIM1_SetIC1Prescaler
8921                     	xdef	_TIM1_SetCompare4
8922                     	xdef	_TIM1_SetCompare3
8923                     	xdef	_TIM1_SetCompare2
8924                     	xdef	_TIM1_SetCompare1
8925                     	xdef	_TIM1_SetAutoreload
8926                     	xdef	_TIM1_SetCounter
8927                     	xdef	_TIM1_SelectOCxM
8928                     	xdef	_TIM1_CCxNCmd
8929                     	xdef	_TIM1_CCxCmd
8930                     	xdef	_TIM1_OC4PolarityConfig
8931                     	xdef	_TIM1_OC3NPolarityConfig
8932                     	xdef	_TIM1_OC3PolarityConfig
8933                     	xdef	_TIM1_OC2NPolarityConfig
8934                     	xdef	_TIM1_OC2PolarityConfig
8935                     	xdef	_TIM1_OC1NPolarityConfig
8936                     	xdef	_TIM1_OC1PolarityConfig
8937                     	xdef	_TIM1_GenerateEvent
8938                     	xdef	_TIM1_OC4FastConfig
8939                     	xdef	_TIM1_OC3FastConfig
8940                     	xdef	_TIM1_OC2FastConfig
8941                     	xdef	_TIM1_OC1FastConfig
8942                     	xdef	_TIM1_OC4PreloadConfig
8943                     	xdef	_TIM1_OC3PreloadConfig
8944                     	xdef	_TIM1_OC2PreloadConfig
8945                     	xdef	_TIM1_OC1PreloadConfig
8946                     	xdef	_TIM1_CCPreloadControl
8947                     	xdef	_TIM1_SelectCOM
8948                     	xdef	_TIM1_ARRPreloadConfig
8949                     	xdef	_TIM1_ForcedOC4Config
8950                     	xdef	_TIM1_ForcedOC3Config
8951                     	xdef	_TIM1_ForcedOC2Config
8952                     	xdef	_TIM1_ForcedOC1Config
8953                     	xdef	_TIM1_CounterModeConfig
8954                     	xdef	_TIM1_PrescalerConfig
8955                     	xdef	_TIM1_EncoderInterfaceConfig
8956                     	xdef	_TIM1_SelectMasterSlaveMode
8957                     	xdef	_TIM1_SelectSlaveMode
8958                     	xdef	_TIM1_SelectOutputTrigger
8959                     	xdef	_TIM1_SelectOnePulseMode
8960                     	xdef	_TIM1_SelectHallSensor
8961                     	xdef	_TIM1_UpdateRequestConfig
8962                     	xdef	_TIM1_UpdateDisableConfig
8963                     	xdef	_TIM1_SelectInputTrigger
8964                     	xdef	_TIM1_TIxExternalClockConfig
8965                     	xdef	_TIM1_ETRConfig
8966                     	xdef	_TIM1_ETRClockMode2Config
8967                     	xdef	_TIM1_ETRClockMode1Config
8968                     	xdef	_TIM1_InternalClockConfig
8969                     	xdef	_TIM1_ITConfig
8970                     	xdef	_TIM1_CtrlPWMOutputs
8971                     	xdef	_TIM1_Cmd
8972                     	xdef	_TIM1_PWMIConfig
8973                     	xdef	_TIM1_ICInit
8974                     	xdef	_TIM1_BDTRConfig
8975                     	xdef	_TIM1_OC4Init
8976                     	xdef	_TIM1_OC3Init
8977                     	xdef	_TIM1_OC2Init
8978                     	xdef	_TIM1_OC1Init
8979                     	xdef	_TIM1_TimeBaseInit
8980                     	xdef	_TIM1_DeInit
8981                     	xref	_assert_failed
8982                     .const:	section	.text
8983  0000               L101:
8984  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8985  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8986  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8987  0036 5f74696d312e  	dc.b	"_tim1.c",0
9007                     	end
