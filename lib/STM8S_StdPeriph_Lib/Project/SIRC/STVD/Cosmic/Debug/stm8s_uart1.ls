   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 53 void UART1_DeInit(void)
  50                     ; 54 {
  52                     .text:	section	.text,new
  53  0000               _UART1_DeInit:
  57                     ; 57   (void)UART1->SR;
  59  0000 c65230        	ld	a,21040
  60                     ; 58   (void)UART1->DR;
  62  0003 c65231        	ld	a,21041
  63                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  65  0006 725f5233      	clr	21043
  66                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  68  000a 725f5232      	clr	21042
  69                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  71  000e 725f5234      	clr	21044
  72                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  74  0012 725f5235      	clr	21045
  75                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  77  0016 725f5236      	clr	21046
  78                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  80  001a 725f5237      	clr	21047
  81                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  83  001e 725f5238      	clr	21048
  84                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  86  0022 725f5239      	clr	21049
  87                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  89  0026 725f523a      	clr	21050
  90                     ; 71 }
  93  002a 81            	ret	
 397                     .const:	section	.text
 398  0000               L21:
 399  0000 00098969      	dc.l	625001
 400  0004               L27:
 401  0004 00000064      	dc.l	100
 402                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 402                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 402                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 402                     ; 93 {
 403                     .text:	section	.text,new
 404  0000               _UART1_Init:
 406  0000 520c          	subw	sp,#12
 407       0000000c      OFST:	set	12
 410                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 414                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 416  0002 96            	ldw	x,sp
 417  0003 1c000f        	addw	x,#OFST+3
 418  0006 cd0000        	call	c_ltor
 420  0009 ae0000        	ldw	x,#L21
 421  000c cd0000        	call	c_lcmp
 423  000f 2506          	jrult	L41
 424  0011 ae0061        	ldw	x,#97
 425  0014 cd01b5        	call	LC001
 426  0017               L41:
 427                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 429  0017 7b13          	ld	a,(OFST+7,sp)
 430  0019 270a          	jreq	L42
 431  001b a110          	cp	a,#16
 432  001d 2706          	jreq	L42
 433  001f ae0062        	ldw	x,#98
 434  0022 cd01b5        	call	LC001
 435  0025               L42:
 436                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 438  0025 7b14          	ld	a,(OFST+8,sp)
 439  0027 2712          	jreq	L43
 440  0029 a110          	cp	a,#16
 441  002b 270e          	jreq	L43
 442  002d a120          	cp	a,#32
 443  002f 270a          	jreq	L43
 444  0031 a130          	cp	a,#48
 445  0033 2706          	jreq	L43
 446  0035 ae0063        	ldw	x,#99
 447  0038 cd01b5        	call	LC001
 448  003b               L43:
 449                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 451  003b 7b15          	ld	a,(OFST+9,sp)
 452  003d 270e          	jreq	L44
 453  003f a104          	cp	a,#4
 454  0041 270a          	jreq	L44
 455  0043 a106          	cp	a,#6
 456  0045 2706          	jreq	L44
 457  0047 ae0064        	ldw	x,#100
 458  004a cd01b5        	call	LC001
 459  004d               L44:
 460                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 462  004d 7b17          	ld	a,(OFST+11,sp)
 463  004f a108          	cp	a,#8
 464  0051 2722          	jreq	L45
 465  0053 a140          	cp	a,#64
 466  0055 271e          	jreq	L45
 467  0057 a104          	cp	a,#4
 468  0059 271a          	jreq	L45
 469  005b a180          	cp	a,#128
 470  005d 2716          	jreq	L45
 471  005f a10c          	cp	a,#12
 472  0061 2712          	jreq	L45
 473  0063 a144          	cp	a,#68
 474  0065 270e          	jreq	L45
 475  0067 a1c0          	cp	a,#192
 476  0069 270a          	jreq	L45
 477  006b a188          	cp	a,#136
 478  006d 2706          	jreq	L45
 479  006f ae0065        	ldw	x,#101
 480  0072 cd01b5        	call	LC001
 481  0075               L45:
 482                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 484  0075 7b16          	ld	a,(OFST+10,sp)
 485  0077 a488          	and	a,#136
 486  0079 a188          	cp	a,#136
 487  007b 2718          	jreq	L06
 488  007d 7b16          	ld	a,(OFST+10,sp)
 489  007f a444          	and	a,#68
 490  0081 a144          	cp	a,#68
 491  0083 2710          	jreq	L06
 492  0085 7b16          	ld	a,(OFST+10,sp)
 493  0087 a422          	and	a,#34
 494  0089 a122          	cp	a,#34
 495  008b 2708          	jreq	L06
 496  008d 7b16          	ld	a,(OFST+10,sp)
 497  008f a411          	and	a,#17
 498  0091 a111          	cp	a,#17
 499  0093 2606          	jrne	L26
 500  0095               L06:
 501  0095 ae0066        	ldw	x,#102
 502  0098 cd01b5        	call	LC001
 503  009b               L26:
 504                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 506  009b 72195234      	bres	21044,#4
 507                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 509  009f c65234        	ld	a,21044
 510  00a2 1a13          	or	a,(OFST+7,sp)
 511  00a4 c75234        	ld	21044,a
 512                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 514  00a7 c65236        	ld	a,21046
 515  00aa a4cf          	and	a,#207
 516  00ac c75236        	ld	21046,a
 517                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 519  00af c65236        	ld	a,21046
 520  00b2 1a14          	or	a,(OFST+8,sp)
 521  00b4 c75236        	ld	21046,a
 522                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 524  00b7 c65234        	ld	a,21044
 525  00ba a4f9          	and	a,#249
 526  00bc c75234        	ld	21044,a
 527                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 529  00bf c65234        	ld	a,21044
 530  00c2 1a15          	or	a,(OFST+9,sp)
 531  00c4 c75234        	ld	21044,a
 532                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 534  00c7 725f5232      	clr	21042
 535                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 537  00cb c65233        	ld	a,21043
 538  00ce a40f          	and	a,#15
 539  00d0 c75233        	ld	21043,a
 540                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 542  00d3 c65233        	ld	a,21043
 543  00d6 a4f0          	and	a,#240
 544  00d8 c75233        	ld	21043,a
 545                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 547  00db 96            	ldw	x,sp
 548  00dc cd01c1        	call	LC002
 550  00df 96            	ldw	x,sp
 551  00e0 5c            	incw	x
 552  00e1 cd0000        	call	c_rtol
 554  00e4 cd0000        	call	_CLK_GetClockFreq
 556  00e7 96            	ldw	x,sp
 557  00e8 5c            	incw	x
 558  00e9 cd0000        	call	c_ludv
 560  00ec 96            	ldw	x,sp
 561  00ed 1c0009        	addw	x,#OFST-3
 562  00f0 cd0000        	call	c_rtol
 564                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 566  00f3 96            	ldw	x,sp
 567  00f4 cd01c1        	call	LC002
 569  00f7 96            	ldw	x,sp
 570  00f8 5c            	incw	x
 571  00f9 cd0000        	call	c_rtol
 573  00fc cd0000        	call	_CLK_GetClockFreq
 575  00ff a664          	ld	a,#100
 576  0101 cd0000        	call	c_smul
 578  0104 96            	ldw	x,sp
 579  0105 5c            	incw	x
 580  0106 cd0000        	call	c_ludv
 582  0109 96            	ldw	x,sp
 583  010a 1c0005        	addw	x,#OFST-7
 584  010d cd0000        	call	c_rtol
 586                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 588  0110 96            	ldw	x,sp
 589  0111 1c0009        	addw	x,#OFST-3
 590  0114 cd0000        	call	c_ltor
 592  0117 a664          	ld	a,#100
 593  0119 cd0000        	call	c_smul
 595  011c 96            	ldw	x,sp
 596  011d 5c            	incw	x
 597  011e cd0000        	call	c_rtol
 599  0121 96            	ldw	x,sp
 600  0122 1c0005        	addw	x,#OFST-7
 601  0125 cd0000        	call	c_ltor
 603  0128 96            	ldw	x,sp
 604  0129 5c            	incw	x
 605  012a cd0000        	call	c_lsub
 607  012d a604          	ld	a,#4
 608  012f cd0000        	call	c_llsh
 610  0132 ae0004        	ldw	x,#L27
 611  0135 cd0000        	call	c_ludv
 613  0138 b603          	ld	a,c_lreg+3
 614  013a a40f          	and	a,#15
 615  013c ca5233        	or	a,21043
 616  013f c75233        	ld	21043,a
 617                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 619  0142 96            	ldw	x,sp
 620  0143 1c0009        	addw	x,#OFST-3
 621  0146 cd0000        	call	c_ltor
 623  0149 a604          	ld	a,#4
 624  014b cd0000        	call	c_lursh
 626  014e b603          	ld	a,c_lreg+3
 627  0150 a4f0          	and	a,#240
 628  0152 b703          	ld	c_lreg+3,a
 629  0154 3f02          	clr	c_lreg+2
 630  0156 3f01          	clr	c_lreg+1
 631  0158 3f00          	clr	c_lreg
 632  015a ca5233        	or	a,21043
 633  015d c75233        	ld	21043,a
 634                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 636  0160 c65232        	ld	a,21042
 637  0163 1a0c          	or	a,(OFST+0,sp)
 638  0165 c75232        	ld	21042,a
 639                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 641  0168 c65235        	ld	a,21045
 642  016b a4f3          	and	a,#243
 643  016d c75235        	ld	21045,a
 644                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 646  0170 c65236        	ld	a,21046
 647  0173 a4f8          	and	a,#248
 648  0175 c75236        	ld	21046,a
 649                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 649                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 651  0178 7b16          	ld	a,(OFST+10,sp)
 652  017a a407          	and	a,#7
 653  017c ca5236        	or	a,21046
 654  017f c75236        	ld	21046,a
 655                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 657  0182 7b17          	ld	a,(OFST+11,sp)
 658  0184 a504          	bcp	a,#4
 659  0186 2706          	jreq	L571
 660                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 662  0188 72165235      	bset	21045,#3
 664  018c 2004          	jra	L771
 665  018e               L571:
 666                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 668  018e 72175235      	bres	21045,#3
 669  0192               L771:
 670                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 672  0192 a508          	bcp	a,#8
 673  0194 2706          	jreq	L102
 674                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 676  0196 72145235      	bset	21045,#2
 678  019a 2004          	jra	L302
 679  019c               L102:
 680                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 682  019c 72155235      	bres	21045,#2
 683  01a0               L302:
 684                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 686  01a0 7b16          	ld	a,(OFST+10,sp)
 687  01a2 2a06          	jrpl	L502
 688                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 690  01a4 72175236      	bres	21046,#3
 692  01a8 2008          	jra	L702
 693  01aa               L502:
 694                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 696  01aa a408          	and	a,#8
 697  01ac ca5236        	or	a,21046
 698  01af c75236        	ld	21046,a
 699  01b2               L702:
 700                     ; 176 }
 703  01b2 5b0c          	addw	sp,#12
 704  01b4 81            	ret	
 705  01b5               LC001:
 706  01b5 89            	pushw	x
 707  01b6 5f            	clrw	x
 708  01b7 89            	pushw	x
 709  01b8 ae0008        	ldw	x,#L371
 710  01bb cd0000        	call	_assert_failed
 712  01be 5b04          	addw	sp,#4
 713  01c0 81            	ret	
 714  01c1               LC002:
 715  01c1 1c000f        	addw	x,#OFST+3
 716  01c4 cd0000        	call	c_ltor
 718  01c7 a604          	ld	a,#4
 719  01c9 cc0000        	jp	c_llsh
 774                     ; 184 void UART1_Cmd(FunctionalState NewState)
 774                     ; 185 {
 775                     .text:	section	.text,new
 776  0000               _UART1_Cmd:
 780                     ; 186   if (NewState != DISABLE)
 782  0000 4d            	tnz	a
 783  0001 2705          	jreq	L732
 784                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 786  0003 721b5234      	bres	21044,#5
 789  0007 81            	ret	
 790  0008               L732:
 791                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 793  0008 721a5234      	bset	21044,#5
 794                     ; 196 }
 797  000c 81            	ret	
 923                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 923                     ; 212 {
 924                     .text:	section	.text,new
 925  0000               _UART1_ITConfig:
 927  0000 89            	pushw	x
 928  0001 89            	pushw	x
 929       00000002      OFST:	set	2
 932                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 936                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 938  0002 a30100        	cpw	x,#256
 939  0005 271e          	jreq	L401
 940  0007 a30277        	cpw	x,#631
 941  000a 2719          	jreq	L401
 942  000c a30266        	cpw	x,#614
 943  000f 2714          	jreq	L401
 944  0011 a30205        	cpw	x,#517
 945  0014 270f          	jreq	L401
 946  0016 a30244        	cpw	x,#580
 947  0019 270a          	jreq	L401
 948  001b a30346        	cpw	x,#838
 949  001e 2705          	jreq	L401
 950  0020 ae00d8        	ldw	x,#216
 951  0023 ad70          	call	LC006
 952  0025               L401:
 953                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 955  0025 7b07          	ld	a,(OFST+5,sp)
 956  0027 2708          	jreq	L411
 957  0029 4a            	dec	a
 958  002a 2705          	jreq	L411
 959  002c ae00d9        	ldw	x,#217
 960  002f ad64          	call	LC006
 961  0031               L411:
 962                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 964  0031 7b03          	ld	a,(OFST+1,sp)
 965  0033 6b01          	ld	(OFST-1,sp),a
 966                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 968  0035 7b04          	ld	a,(OFST+2,sp)
 969  0037 a40f          	and	a,#15
 970  0039 5f            	clrw	x
 971  003a 97            	ld	xl,a
 972  003b a601          	ld	a,#1
 973  003d 5d            	tnzw	x
 974  003e 2704          	jreq	L021
 975  0040               L221:
 976  0040 48            	sll	a
 977  0041 5a            	decw	x
 978  0042 26fc          	jrne	L221
 979  0044               L021:
 980  0044 6b02          	ld	(OFST+0,sp),a
 981                     ; 224   if (NewState != DISABLE)
 983  0046 7b07          	ld	a,(OFST+5,sp)
 984  0048 271f          	jreq	L123
 985                     ; 227     if (uartreg == 0x01)
 987  004a 7b01          	ld	a,(OFST-1,sp)
 988  004c a101          	cp	a,#1
 989  004e 2607          	jrne	L323
 990                     ; 229       UART1->CR1 |= itpos;
 992  0050 c65234        	ld	a,21044
 993  0053 1a02          	or	a,(OFST+0,sp)
 995  0055 201e          	jp	LC004
 996  0057               L323:
 997                     ; 231     else if (uartreg == 0x02)
 999  0057 a102          	cp	a,#2
1000  0059 2607          	jrne	L723
1001                     ; 233       UART1->CR2 |= itpos;
1003  005b c65235        	ld	a,21045
1004  005e 1a02          	or	a,(OFST+0,sp)
1006  0060 2022          	jp	LC005
1007  0062               L723:
1008                     ; 237       UART1->CR4 |= itpos;
1010  0062 c65237        	ld	a,21047
1011  0065 1a02          	or	a,(OFST+0,sp)
1012  0067 2026          	jp	LC003
1013  0069               L123:
1014                     ; 243     if (uartreg == 0x01)
1016  0069 7b01          	ld	a,(OFST-1,sp)
1017  006b a101          	cp	a,#1
1018  006d 260b          	jrne	L533
1019                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1021  006f 7b02          	ld	a,(OFST+0,sp)
1022  0071 43            	cpl	a
1023  0072 c45234        	and	a,21044
1024  0075               LC004:
1025  0075 c75234        	ld	21044,a
1027  0078 2018          	jra	L333
1028  007a               L533:
1029                     ; 247     else if (uartreg == 0x02)
1031  007a a102          	cp	a,#2
1032  007c 260b          	jrne	L143
1033                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1035  007e 7b02          	ld	a,(OFST+0,sp)
1036  0080 43            	cpl	a
1037  0081 c45235        	and	a,21045
1038  0084               LC005:
1039  0084 c75235        	ld	21045,a
1041  0087 2009          	jra	L333
1042  0089               L143:
1043                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1045  0089 7b02          	ld	a,(OFST+0,sp)
1046  008b 43            	cpl	a
1047  008c c45237        	and	a,21047
1048  008f               LC003:
1049  008f c75237        	ld	21047,a
1050  0092               L333:
1051                     ; 257 }
1054  0092 5b04          	addw	sp,#4
1055  0094 81            	ret	
1056  0095               LC006:
1057  0095 89            	pushw	x
1058  0096 5f            	clrw	x
1059  0097 89            	pushw	x
1060  0098 ae0008        	ldw	x,#L371
1061  009b cd0000        	call	_assert_failed
1063  009e 5b04          	addw	sp,#4
1064  00a0 81            	ret	
1101                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1101                     ; 266 {
1102                     .text:	section	.text,new
1103  0000               _UART1_HalfDuplexCmd:
1105  0000 88            	push	a
1106       00000000      OFST:	set	0
1109                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1111  0001 4d            	tnz	a
1112  0002 2711          	jreq	L231
1113  0004 4a            	dec	a
1114  0005 270e          	jreq	L231
1115  0007 ae010b        	ldw	x,#267
1116  000a 89            	pushw	x
1117  000b 5f            	clrw	x
1118  000c 89            	pushw	x
1119  000d ae0008        	ldw	x,#L371
1120  0010 cd0000        	call	_assert_failed
1122  0013 5b04          	addw	sp,#4
1123  0015               L231:
1124                     ; 269   if (NewState != DISABLE)
1126  0015 7b01          	ld	a,(OFST+1,sp)
1127  0017 2706          	jreq	L363
1128                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1130  0019 72165238      	bset	21048,#3
1132  001d 2004          	jra	L563
1133  001f               L363:
1134                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1136  001f 72175238      	bres	21048,#3
1137  0023               L563:
1138                     ; 277 }
1141  0023 84            	pop	a
1142  0024 81            	ret	
1200                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1200                     ; 286 {
1201                     .text:	section	.text,new
1202  0000               _UART1_IrDAConfig:
1204  0000 88            	push	a
1205       00000000      OFST:	set	0
1208                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1210  0001 a101          	cp	a,#1
1211  0003 2711          	jreq	L441
1212  0005 4d            	tnz	a
1213  0006 270e          	jreq	L441
1214  0008 ae011f        	ldw	x,#287
1215  000b 89            	pushw	x
1216  000c 5f            	clrw	x
1217  000d 89            	pushw	x
1218  000e ae0008        	ldw	x,#L371
1219  0011 cd0000        	call	_assert_failed
1221  0014 5b04          	addw	sp,#4
1222  0016               L441:
1223                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1225  0016 7b01          	ld	a,(OFST+1,sp)
1226  0018 2706          	jreq	L514
1227                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1229  001a 72145238      	bset	21048,#2
1231  001e 2004          	jra	L714
1232  0020               L514:
1233                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1235  0020 72155238      	bres	21048,#2
1236  0024               L714:
1237                     ; 297 }
1240  0024 84            	pop	a
1241  0025 81            	ret	
1277                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1277                     ; 306 {
1278                     .text:	section	.text,new
1279  0000               _UART1_IrDACmd:
1281  0000 88            	push	a
1282       00000000      OFST:	set	0
1285                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1287  0001 4d            	tnz	a
1288  0002 2711          	jreq	L651
1289  0004 4a            	dec	a
1290  0005 270e          	jreq	L651
1291  0007 ae0134        	ldw	x,#308
1292  000a 89            	pushw	x
1293  000b 5f            	clrw	x
1294  000c 89            	pushw	x
1295  000d ae0008        	ldw	x,#L371
1296  0010 cd0000        	call	_assert_failed
1298  0013 5b04          	addw	sp,#4
1299  0015               L651:
1300                     ; 310   if (NewState != DISABLE)
1302  0015 7b01          	ld	a,(OFST+1,sp)
1303  0017 2706          	jreq	L734
1304                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1306  0019 72125238      	bset	21048,#1
1308  001d 2004          	jra	L144
1309  001f               L734:
1310                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1312  001f 72135238      	bres	21048,#1
1313  0023               L144:
1314                     ; 320 }
1317  0023 84            	pop	a
1318  0024 81            	ret	
1378                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1378                     ; 330 {
1379                     .text:	section	.text,new
1380  0000               _UART1_LINBreakDetectionConfig:
1382  0000 88            	push	a
1383       00000000      OFST:	set	0
1386                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1388  0001 4d            	tnz	a
1389  0002 2711          	jreq	L071
1390  0004 4a            	dec	a
1391  0005 270e          	jreq	L071
1392  0007 ae014b        	ldw	x,#331
1393  000a 89            	pushw	x
1394  000b 5f            	clrw	x
1395  000c 89            	pushw	x
1396  000d ae0008        	ldw	x,#L371
1397  0010 cd0000        	call	_assert_failed
1399  0013 5b04          	addw	sp,#4
1400  0015               L071:
1401                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1403  0015 7b01          	ld	a,(OFST+1,sp)
1404  0017 2706          	jreq	L174
1405                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1407  0019 721a5237      	bset	21047,#5
1409  001d 2004          	jra	L374
1410  001f               L174:
1411                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1413  001f 721b5237      	bres	21047,#5
1414  0023               L374:
1415                     ; 341 }
1418  0023 84            	pop	a
1419  0024 81            	ret	
1455                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1455                     ; 350 {
1456                     .text:	section	.text,new
1457  0000               _UART1_LINCmd:
1459  0000 88            	push	a
1460       00000000      OFST:	set	0
1463                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1465  0001 4d            	tnz	a
1466  0002 2711          	jreq	L202
1467  0004 4a            	dec	a
1468  0005 270e          	jreq	L202
1469  0007 ae015f        	ldw	x,#351
1470  000a 89            	pushw	x
1471  000b 5f            	clrw	x
1472  000c 89            	pushw	x
1473  000d ae0008        	ldw	x,#L371
1474  0010 cd0000        	call	_assert_failed
1476  0013 5b04          	addw	sp,#4
1477  0015               L202:
1478                     ; 353   if (NewState != DISABLE)
1480  0015 7b01          	ld	a,(OFST+1,sp)
1481  0017 2706          	jreq	L315
1482                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1484  0019 721c5236      	bset	21046,#6
1486  001d 2004          	jra	L515
1487  001f               L315:
1488                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1490  001f 721d5236      	bres	21046,#6
1491  0023               L515:
1492                     ; 363 }
1495  0023 84            	pop	a
1496  0024 81            	ret	
1532                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1532                     ; 372 {
1533                     .text:	section	.text,new
1534  0000               _UART1_SmartCardCmd:
1536  0000 88            	push	a
1537       00000000      OFST:	set	0
1540                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1542  0001 4d            	tnz	a
1543  0002 2711          	jreq	L412
1544  0004 4a            	dec	a
1545  0005 270e          	jreq	L412
1546  0007 ae0175        	ldw	x,#373
1547  000a 89            	pushw	x
1548  000b 5f            	clrw	x
1549  000c 89            	pushw	x
1550  000d ae0008        	ldw	x,#L371
1551  0010 cd0000        	call	_assert_failed
1553  0013 5b04          	addw	sp,#4
1554  0015               L412:
1555                     ; 375   if (NewState != DISABLE)
1557  0015 7b01          	ld	a,(OFST+1,sp)
1558  0017 2706          	jreq	L535
1559                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1561  0019 721a5238      	bset	21048,#5
1563  001d 2004          	jra	L735
1564  001f               L535:
1565                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1567  001f 721b5238      	bres	21048,#5
1568  0023               L735:
1569                     ; 385 }
1572  0023 84            	pop	a
1573  0024 81            	ret	
1610                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1610                     ; 395 {
1611                     .text:	section	.text,new
1612  0000               _UART1_SmartCardNACKCmd:
1614  0000 88            	push	a
1615       00000000      OFST:	set	0
1618                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1620  0001 4d            	tnz	a
1621  0002 2711          	jreq	L622
1622  0004 4a            	dec	a
1623  0005 270e          	jreq	L622
1624  0007 ae018c        	ldw	x,#396
1625  000a 89            	pushw	x
1626  000b 5f            	clrw	x
1627  000c 89            	pushw	x
1628  000d ae0008        	ldw	x,#L371
1629  0010 cd0000        	call	_assert_failed
1631  0013 5b04          	addw	sp,#4
1632  0015               L622:
1633                     ; 398   if (NewState != DISABLE)
1635  0015 7b01          	ld	a,(OFST+1,sp)
1636  0017 2706          	jreq	L755
1637                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1639  0019 72185238      	bset	21048,#4
1641  001d 2004          	jra	L165
1642  001f               L755:
1643                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1645  001f 72195238      	bres	21048,#4
1646  0023               L165:
1647                     ; 408 }
1650  0023 84            	pop	a
1651  0024 81            	ret	
1709                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1709                     ; 417 {
1710                     .text:	section	.text,new
1711  0000               _UART1_WakeUpConfig:
1713  0000 88            	push	a
1714       00000000      OFST:	set	0
1717                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1719  0001 4d            	tnz	a
1720  0002 2712          	jreq	L042
1721  0004 a108          	cp	a,#8
1722  0006 270e          	jreq	L042
1723  0008 ae01a2        	ldw	x,#418
1724  000b 89            	pushw	x
1725  000c 5f            	clrw	x
1726  000d 89            	pushw	x
1727  000e ae0008        	ldw	x,#L371
1728  0011 cd0000        	call	_assert_failed
1730  0014 5b04          	addw	sp,#4
1731  0016               L042:
1732                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1734  0016 72175234      	bres	21044,#3
1735                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1737  001a c65234        	ld	a,21044
1738  001d 1a01          	or	a,(OFST+1,sp)
1739  001f c75234        	ld	21044,a
1740                     ; 422 }
1743  0022 84            	pop	a
1744  0023 81            	ret	
1781                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1781                     ; 431 {
1782                     .text:	section	.text,new
1783  0000               _UART1_ReceiverWakeUpCmd:
1785  0000 88            	push	a
1786       00000000      OFST:	set	0
1789                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1791  0001 4d            	tnz	a
1792  0002 2711          	jreq	L252
1793  0004 4a            	dec	a
1794  0005 270e          	jreq	L252
1795  0007 ae01b0        	ldw	x,#432
1796  000a 89            	pushw	x
1797  000b 5f            	clrw	x
1798  000c 89            	pushw	x
1799  000d ae0008        	ldw	x,#L371
1800  0010 cd0000        	call	_assert_failed
1802  0013 5b04          	addw	sp,#4
1803  0015               L252:
1804                     ; 434   if (NewState != DISABLE)
1806  0015 7b01          	ld	a,(OFST+1,sp)
1807  0017 2706          	jreq	L726
1808                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1810  0019 72125235      	bset	21045,#1
1812  001d 2004          	jra	L136
1813  001f               L726:
1814                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1816  001f 72135235      	bres	21045,#1
1817  0023               L136:
1818                     ; 444 }
1821  0023 84            	pop	a
1822  0024 81            	ret	
1845                     ; 451 uint8_t UART1_ReceiveData8(void)
1845                     ; 452 {
1846                     .text:	section	.text,new
1847  0000               _UART1_ReceiveData8:
1851                     ; 453   return ((uint8_t)UART1->DR);
1853  0000 c65231        	ld	a,21041
1856  0003 81            	ret	
1890                     ; 461 uint16_t UART1_ReceiveData9(void)
1890                     ; 462 {
1891                     .text:	section	.text,new
1892  0000               _UART1_ReceiveData9:
1894  0000 89            	pushw	x
1895       00000002      OFST:	set	2
1898                     ; 463   uint16_t temp = 0;
1900                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1902  0001 c65234        	ld	a,21044
1903  0004 a480          	and	a,#128
1904  0006 5f            	clrw	x
1905  0007 02            	rlwa	x,a
1906  0008 58            	sllw	x
1907  0009 1f01          	ldw	(OFST-1,sp),x
1908                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1910  000b 5f            	clrw	x
1911  000c c65231        	ld	a,21041
1912  000f 97            	ld	xl,a
1913  0010 01            	rrwa	x,a
1914  0011 1a02          	or	a,(OFST+0,sp)
1915  0013 01            	rrwa	x,a
1916  0014 1a01          	or	a,(OFST-1,sp)
1917  0016 a401          	and	a,#1
1918  0018 01            	rrwa	x,a
1921  0019 5b02          	addw	sp,#2
1922  001b 81            	ret	
1956                     ; 474 void UART1_SendData8(uint8_t Data)
1956                     ; 475 {
1957                     .text:	section	.text,new
1958  0000               _UART1_SendData8:
1962                     ; 477   UART1->DR = Data;
1964  0000 c75231        	ld	21041,a
1965                     ; 478 }
1968  0003 81            	ret	
2002                     ; 486 void UART1_SendData9(uint16_t Data)
2002                     ; 487 {
2003                     .text:	section	.text,new
2004  0000               _UART1_SendData9:
2006  0000 89            	pushw	x
2007       00000000      OFST:	set	0
2010                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
2012  0001 721d5234      	bres	21044,#6
2013                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
2015  0005 54            	srlw	x
2016  0006 54            	srlw	x
2017  0007 9f            	ld	a,xl
2018  0008 a440          	and	a,#64
2019  000a ca5234        	or	a,21044
2020  000d c75234        	ld	21044,a
2021                     ; 493   UART1->DR   = (uint8_t)(Data);
2023  0010 7b02          	ld	a,(OFST+2,sp)
2024  0012 c75231        	ld	21041,a
2025                     ; 494 }
2028  0015 85            	popw	x
2029  0016 81            	ret	
2052                     ; 501 void UART1_SendBreak(void)
2052                     ; 502 {
2053                     .text:	section	.text,new
2054  0000               _UART1_SendBreak:
2058                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2060  0000 72105235      	bset	21045,#0
2061                     ; 504 }
2064  0004 81            	ret	
2099                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2099                     ; 512 {
2100                     .text:	section	.text,new
2101  0000               _UART1_SetAddress:
2103  0000 88            	push	a
2104       00000000      OFST:	set	0
2107                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2109  0001 a110          	cp	a,#16
2110  0003 250e          	jrult	L472
2111  0005 ae0202        	ldw	x,#514
2112  0008 89            	pushw	x
2113  0009 5f            	clrw	x
2114  000a 89            	pushw	x
2115  000b ae0008        	ldw	x,#L371
2116  000e cd0000        	call	_assert_failed
2118  0011 5b04          	addw	sp,#4
2119  0013               L472:
2120                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2122  0013 c65237        	ld	a,21047
2123  0016 a4f0          	and	a,#240
2124  0018 c75237        	ld	21047,a
2125                     ; 519   UART1->CR4 |= UART1_Address;
2127  001b c65237        	ld	a,21047
2128  001e 1a01          	or	a,(OFST+1,sp)
2129  0020 c75237        	ld	21047,a
2130                     ; 520 }
2133  0023 84            	pop	a
2134  0024 81            	ret	
2168                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2168                     ; 529 {
2169                     .text:	section	.text,new
2170  0000               _UART1_SetGuardTime:
2174                     ; 531   UART1->GTR = UART1_GuardTime;
2176  0000 c75239        	ld	21049,a
2177                     ; 532 }
2180  0003 81            	ret	
2214                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2214                     ; 557 {
2215                     .text:	section	.text,new
2216  0000               _UART1_SetPrescaler:
2220                     ; 559   UART1->PSCR = UART1_Prescaler;
2222  0000 c7523a        	ld	21050,a
2223                     ; 560 }
2226  0003 81            	ret	
2370                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2370                     ; 569 {
2371                     .text:	section	.text,new
2372  0000               _UART1_GetFlagStatus:
2374  0000 89            	pushw	x
2375  0001 88            	push	a
2376       00000001      OFST:	set	1
2379                     ; 570   FlagStatus status = RESET;
2381                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2383  0002 a30080        	cpw	x,#128
2384  0005 273b          	jreq	L213
2385  0007 a30040        	cpw	x,#64
2386  000a 2736          	jreq	L213
2387  000c a30020        	cpw	x,#32
2388  000f 2731          	jreq	L213
2389  0011 a30010        	cpw	x,#16
2390  0014 272c          	jreq	L213
2391  0016 a30008        	cpw	x,#8
2392  0019 2727          	jreq	L213
2393  001b a30004        	cpw	x,#4
2394  001e 2722          	jreq	L213
2395  0020 a30002        	cpw	x,#2
2396  0023 271d          	jreq	L213
2397  0025 a30001        	cpw	x,#1
2398  0028 2718          	jreq	L213
2399  002a a30101        	cpw	x,#257
2400  002d 2713          	jreq	L213
2401  002f a30210        	cpw	x,#528
2402  0032 270e          	jreq	L213
2403  0034 ae023d        	ldw	x,#573
2404  0037 89            	pushw	x
2405  0038 5f            	clrw	x
2406  0039 89            	pushw	x
2407  003a ae0008        	ldw	x,#L371
2408  003d cd0000        	call	_assert_failed
2410  0040 5b04          	addw	sp,#4
2411  0042               L213:
2412                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2414  0042 1e02          	ldw	x,(OFST+1,sp)
2415  0044 a30210        	cpw	x,#528
2416  0047 2605          	jrne	L1601
2417                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2419  0049 c65237        	ld	a,21047
2420                     ; 582       status = SET;
2422  004c 2008          	jp	LC009
2423                     ; 587       status = RESET;
2424  004e               L1601:
2425                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2427  004e a30101        	cpw	x,#257
2428  0051 260b          	jrne	L1701
2429                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2431  0053 c65235        	ld	a,21045
2432  0056               LC009:
2433  0056 1503          	bcp	a,(OFST+2,sp)
2434  0058 270b          	jreq	L1011
2435                     ; 595       status = SET;
2437  005a               LC008:
2440  005a a601          	ld	a,#1
2442  005c 2008          	jra	L7601
2443                     ; 600       status = RESET;
2444  005e               L1701:
2445                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2447  005e c65230        	ld	a,21040
2448  0061 1503          	bcp	a,(OFST+2,sp)
2449                     ; 608       status = SET;
2451  0063 26f5          	jrne	LC008
2452  0065               L1011:
2453                     ; 613       status = RESET;
2457  0065 4f            	clr	a
2458  0066               L7601:
2459                     ; 617   return status;
2463  0066 5b03          	addw	sp,#3
2464  0068 81            	ret	
2500                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2500                     ; 647 {
2501                     .text:	section	.text,new
2502  0000               _UART1_ClearFlag:
2504  0000 89            	pushw	x
2505       00000000      OFST:	set	0
2508                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2510  0001 a30020        	cpw	x,#32
2511  0004 2713          	jreq	L423
2512  0006 a30210        	cpw	x,#528
2513  0009 270e          	jreq	L423
2514  000b ae0288        	ldw	x,#648
2515  000e 89            	pushw	x
2516  000f 5f            	clrw	x
2517  0010 89            	pushw	x
2518  0011 ae0008        	ldw	x,#L371
2519  0014 cd0000        	call	_assert_failed
2521  0017 5b04          	addw	sp,#4
2522  0019               L423:
2523                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2525  0019 1e01          	ldw	x,(OFST+1,sp)
2526  001b a30020        	cpw	x,#32
2527  001e 2606          	jrne	L3211
2528                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2530  0020 35df5230      	mov	21040,#223
2532  0024 2004          	jra	L5211
2533  0026               L3211:
2534                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2536  0026 72195237      	bres	21047,#4
2537  002a               L5211:
2538                     ; 660 }
2541  002a 85            	popw	x
2542  002b 81            	ret	
2625                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2625                     ; 676 {
2626                     .text:	section	.text,new
2627  0000               _UART1_GetITStatus:
2629  0000 89            	pushw	x
2630  0001 89            	pushw	x
2631       00000002      OFST:	set	2
2634                     ; 677   ITStatus pendingbitstatus = RESET;
2636                     ; 678   uint8_t itpos = 0;
2638                     ; 679   uint8_t itmask1 = 0;
2640                     ; 680   uint8_t itmask2 = 0;
2642                     ; 681   uint8_t enablestatus = 0;
2644                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2646  0002 a30277        	cpw	x,#631
2647  0005 272c          	jreq	L633
2648  0007 a30266        	cpw	x,#614
2649  000a 2727          	jreq	L633
2650  000c a30255        	cpw	x,#597
2651  000f 2722          	jreq	L633
2652  0011 a30244        	cpw	x,#580
2653  0014 271d          	jreq	L633
2654  0016 a30235        	cpw	x,#565
2655  0019 2718          	jreq	L633
2656  001b a30346        	cpw	x,#838
2657  001e 2713          	jreq	L633
2658  0020 a30100        	cpw	x,#256
2659  0023 270e          	jreq	L633
2660  0025 ae02ac        	ldw	x,#684
2661  0028 89            	pushw	x
2662  0029 5f            	clrw	x
2663  002a 89            	pushw	x
2664  002b ae0008        	ldw	x,#L371
2665  002e cd0000        	call	_assert_failed
2667  0031 5b04          	addw	sp,#4
2668  0033               L633:
2669                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2671  0033 7b04          	ld	a,(OFST+2,sp)
2672  0035 a40f          	and	a,#15
2673  0037 5f            	clrw	x
2674  0038 97            	ld	xl,a
2675  0039 a601          	ld	a,#1
2676  003b 5d            	tnzw	x
2677  003c 2704          	jreq	L243
2678  003e               L443:
2679  003e 48            	sll	a
2680  003f 5a            	decw	x
2681  0040 26fc          	jrne	L443
2682  0042               L243:
2683  0042 6b01          	ld	(OFST-1,sp),a
2684                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2686  0044 7b04          	ld	a,(OFST+2,sp)
2687  0046 4e            	swap	a
2688  0047 a40f          	and	a,#15
2689  0049 6b02          	ld	(OFST+0,sp),a
2690                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2692  004b 5f            	clrw	x
2693  004c 97            	ld	xl,a
2694  004d a601          	ld	a,#1
2695  004f 5d            	tnzw	x
2696  0050 2704          	jreq	L643
2697  0052               L053:
2698  0052 48            	sll	a
2699  0053 5a            	decw	x
2700  0054 26fc          	jrne	L053
2701  0056               L643:
2702  0056 6b02          	ld	(OFST+0,sp),a
2703                     ; 695   if (UART1_IT == UART1_IT_PE)
2705  0058 1e03          	ldw	x,(OFST+1,sp)
2706  005a a30100        	cpw	x,#256
2707  005d 260c          	jrne	L1711
2708                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2710  005f c65234        	ld	a,21044
2711  0062 1402          	and	a,(OFST+0,sp)
2712  0064 6b02          	ld	(OFST+0,sp),a
2713                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2715  0066 c65230        	ld	a,21040
2717                     ; 704       pendingbitstatus = SET;
2719  0069 200f          	jp	LC012
2720                     ; 709       pendingbitstatus = RESET;
2721  006b               L1711:
2722                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2724  006b a30346        	cpw	x,#838
2725  006e 2616          	jrne	L1021
2726                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2728  0070 c65237        	ld	a,21047
2729  0073 1402          	and	a,(OFST+0,sp)
2730  0075 6b02          	ld	(OFST+0,sp),a
2731                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2733  0077 c65237        	ld	a,21047
2735  007a               LC012:
2736  007a 1501          	bcp	a,(OFST-1,sp)
2737  007c 271a          	jreq	L1121
2738  007e 7b02          	ld	a,(OFST+0,sp)
2739  0080 2716          	jreq	L1121
2740                     ; 721       pendingbitstatus = SET;
2742  0082               LC011:
2745  0082 a601          	ld	a,#1
2747  0084 2013          	jra	L7711
2748                     ; 726       pendingbitstatus = RESET;
2749  0086               L1021:
2750                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2752  0086 c65235        	ld	a,21045
2753  0089 1402          	and	a,(OFST+0,sp)
2754  008b 6b02          	ld	(OFST+0,sp),a
2755                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2757  008d c65230        	ld	a,21040
2758  0090 1501          	bcp	a,(OFST-1,sp)
2759  0092 2704          	jreq	L1121
2761  0094 7b02          	ld	a,(OFST+0,sp)
2762                     ; 737       pendingbitstatus = SET;
2764  0096 26ea          	jrne	LC011
2765  0098               L1121:
2766                     ; 742       pendingbitstatus = RESET;
2770  0098 4f            	clr	a
2771  0099               L7711:
2772                     ; 747   return  pendingbitstatus;
2776  0099 5b04          	addw	sp,#4
2777  009b 81            	ret	
2814                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2814                     ; 776 {
2815                     .text:	section	.text,new
2816  0000               _UART1_ClearITPendingBit:
2818  0000 89            	pushw	x
2819       00000000      OFST:	set	0
2822                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2824  0001 a30255        	cpw	x,#597
2825  0004 2713          	jreq	L063
2826  0006 a30346        	cpw	x,#838
2827  0009 270e          	jreq	L063
2828  000b ae0309        	ldw	x,#777
2829  000e 89            	pushw	x
2830  000f 5f            	clrw	x
2831  0010 89            	pushw	x
2832  0011 ae0008        	ldw	x,#L371
2833  0014 cd0000        	call	_assert_failed
2835  0017 5b04          	addw	sp,#4
2836  0019               L063:
2837                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2839  0019 1e01          	ldw	x,(OFST+1,sp)
2840  001b a30255        	cpw	x,#597
2841  001e 2606          	jrne	L3321
2842                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2844  0020 35df5230      	mov	21040,#223
2846  0024 2004          	jra	L5321
2847  0026               L3321:
2848                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2850  0026 72195237      	bres	21047,#4
2851  002a               L5321:
2852                     ; 789 }
2855  002a 85            	popw	x
2856  002b 81            	ret	
2869                     	xdef	_UART1_ClearITPendingBit
2870                     	xdef	_UART1_GetITStatus
2871                     	xdef	_UART1_ClearFlag
2872                     	xdef	_UART1_GetFlagStatus
2873                     	xdef	_UART1_SetPrescaler
2874                     	xdef	_UART1_SetGuardTime
2875                     	xdef	_UART1_SetAddress
2876                     	xdef	_UART1_SendBreak
2877                     	xdef	_UART1_SendData9
2878                     	xdef	_UART1_SendData8
2879                     	xdef	_UART1_ReceiveData9
2880                     	xdef	_UART1_ReceiveData8
2881                     	xdef	_UART1_ReceiverWakeUpCmd
2882                     	xdef	_UART1_WakeUpConfig
2883                     	xdef	_UART1_SmartCardNACKCmd
2884                     	xdef	_UART1_SmartCardCmd
2885                     	xdef	_UART1_LINCmd
2886                     	xdef	_UART1_LINBreakDetectionConfig
2887                     	xdef	_UART1_IrDACmd
2888                     	xdef	_UART1_IrDAConfig
2889                     	xdef	_UART1_HalfDuplexCmd
2890                     	xdef	_UART1_ITConfig
2891                     	xdef	_UART1_Cmd
2892                     	xdef	_UART1_Init
2893                     	xdef	_UART1_DeInit
2894                     	xref	_assert_failed
2895                     	xref	_CLK_GetClockFreq
2896                     	switch	.const
2897  0008               L371:
2898  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2899  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2900  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2901  003e 5f7561727431  	dc.b	"_uart1.c",0
2902                     	xref.b	c_lreg
2903                     	xref.b	c_x
2923                     	xref	c_lursh
2924                     	xref	c_lsub
2925                     	xref	c_smul
2926                     	xref	c_ludv
2927                     	xref	c_rtol
2928                     	xref	c_llsh
2929                     	xref	c_lcmp
2930                     	xref	c_ltor
2931                     	end
