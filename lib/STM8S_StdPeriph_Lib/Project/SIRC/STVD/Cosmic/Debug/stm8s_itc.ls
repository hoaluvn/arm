   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 50 uint8_t ITC_GetCPUCC(void)
  50                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               _ITC_GetCPUCC:
  57                     ; 53   _asm("push cc");
  60  0000 8a            	push	cc
  62                     ; 54   _asm("pop a");
  65  0001 84            	pop	a
  67                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  70  0002 81            	ret	
  93                     ; 80 void ITC_DeInit(void)
  93                     ; 81 {
  94                     .text:	section	.text,new
  95  0000               _ITC_DeInit:
  99                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 101  0000 35ff7f70      	mov	32624,#255
 102                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 104  0004 35ff7f71      	mov	32625,#255
 105                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 107  0008 35ff7f72      	mov	32626,#255
 108                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 110  000c 35ff7f73      	mov	32627,#255
 111                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 113  0010 35ff7f74      	mov	32628,#255
 114                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 116  0014 35ff7f75      	mov	32629,#255
 117                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 119  0018 35ff7f76      	mov	32630,#255
 120                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 122  001c 35ff7f77      	mov	32631,#255
 123                     ; 90 }
 126  0020 81            	ret	
 151                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 151                     ; 98 {
 152                     .text:	section	.text,new
 153  0000               _ITC_GetSoftIntStatus:
 157                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 159  0000 cd0000        	call	_ITC_GetCPUCC
 161  0003 a428          	and	a,#40
 164  0005 81            	ret	
 414                     .const:	section	.text
 415  0000               L23:
 416  0000 0035          	dc.w	L14
 417  0002 0035          	dc.w	L14
 418  0004 0035          	dc.w	L14
 419  0006 0035          	dc.w	L14
 420  0008 003a          	dc.w	L34
 421  000a 003a          	dc.w	L34
 422  000c 003a          	dc.w	L34
 423  000e 003a          	dc.w	L34
 424  0010 005a          	dc.w	L502
 425  0012 005a          	dc.w	L502
 426  0014 003f          	dc.w	L54
 427  0016 003f          	dc.w	L54
 428  0018 0044          	dc.w	L74
 429  001a 0044          	dc.w	L74
 430  001c 0044          	dc.w	L74
 431  001e 0044          	dc.w	L74
 432  0020 0049          	dc.w	L15
 433  0022 0049          	dc.w	L15
 434  0024 0049          	dc.w	L15
 435  0026 0049          	dc.w	L15
 436  0028 005a          	dc.w	L502
 437  002a 005a          	dc.w	L502
 438  002c 004e          	dc.w	L35
 439  002e 004e          	dc.w	L35
 440  0030 0053          	dc.w	L55
 441                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 441                     ; 108 {
 442                     .text:	section	.text,new
 443  0000               _ITC_GetSoftwarePriority:
 445  0000 88            	push	a
 446  0001 89            	pushw	x
 447       00000002      OFST:	set	2
 450                     ; 109   uint8_t Value = 0;
 452  0002 0f02          	clr	(OFST+0,sp)
 453                     ; 110   uint8_t Mask = 0;
 455                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 457  0004 a119          	cp	a,#25
 458  0006 250e          	jrult	L02
 459  0008 ae0071        	ldw	x,#113
 460  000b 89            	pushw	x
 461  000c 5f            	clrw	x
 462  000d 89            	pushw	x
 463  000e ae0064        	ldw	x,#L102
 464  0011 cd0000        	call	_assert_failed
 466  0014 5b04          	addw	sp,#4
 467  0016               L02:
 468                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 470  0016 7b03          	ld	a,(OFST+1,sp)
 471  0018 a403          	and	a,#3
 472  001a 48            	sll	a
 473  001b 5f            	clrw	x
 474  001c 97            	ld	xl,a
 475  001d a603          	ld	a,#3
 476  001f 5d            	tnzw	x
 477  0020 2704          	jreq	L42
 478  0022               L62:
 479  0022 48            	sll	a
 480  0023 5a            	decw	x
 481  0024 26fc          	jrne	L62
 482  0026               L42:
 483  0026 6b01          	ld	(OFST-1,sp),a
 484                     ; 118   switch (IrqNum)
 486  0028 7b03          	ld	a,(OFST+1,sp)
 488                     ; 198   default:
 488                     ; 199     break;
 489  002a a119          	cp	a,#25
 490  002c 242c          	jruge	L502
 491  002e 5f            	clrw	x
 492  002f 97            	ld	xl,a
 493  0030 58            	sllw	x
 494  0031 de0000        	ldw	x,(L23,x)
 495  0034 fc            	jp	(x)
 496  0035               L14:
 497                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 497                     ; 121   case ITC_IRQ_AWU:
 497                     ; 122   case ITC_IRQ_CLK:
 497                     ; 123   case ITC_IRQ_PORTA:
 497                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 499  0035 c67f70        	ld	a,32624
 500                     ; 125     break;
 502  0038 201c          	jp	LC001
 503  003a               L34:
 504                     ; 127   case ITC_IRQ_PORTB:
 504                     ; 128   case ITC_IRQ_PORTC:
 504                     ; 129   case ITC_IRQ_PORTD:
 504                     ; 130   case ITC_IRQ_PORTE:
 504                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 506  003a c67f71        	ld	a,32625
 507                     ; 132     break;
 509  003d 2017          	jp	LC001
 510  003f               L54:
 511                     ; 141   case ITC_IRQ_SPI:
 511                     ; 142   case ITC_IRQ_TIM1_OVF:
 511                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 513  003f c67f72        	ld	a,32626
 514                     ; 144     break;
 516  0042 2012          	jp	LC001
 517  0044               L74:
 518                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 518                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 518                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 518                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 518                     ; 150 #else
 518                     ; 151   case ITC_IRQ_TIM2_OVF:
 518                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 518                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 518                     ; 154   case ITC_IRQ_TIM3_OVF:
 518                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 520  0044 c67f73        	ld	a,32627
 521                     ; 156     break;
 523  0047 200d          	jp	LC001
 524  0049               L15:
 525                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 525                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 525                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 525                     ; 161   case ITC_IRQ_UART1_TX:
 525                     ; 162   case ITC_IRQ_UART1_RX:
 525                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 525                     ; 164 #if defined(STM8AF622x)
 525                     ; 165   case ITC_IRQ_UART4_TX:
 525                     ; 166   case ITC_IRQ_UART4_RX:
 525                     ; 167 #endif /*STM8AF622x */
 525                     ; 168   case ITC_IRQ_I2C:
 525                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 527  0049 c67f74        	ld	a,32628
 528                     ; 170     break;
 530  004c 2008          	jp	LC001
 531  004e               L35:
 532                     ; 184   case ITC_IRQ_ADC1:
 532                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 532                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 532                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 532                     ; 188 #else
 532                     ; 189   case ITC_IRQ_TIM4_OVF:
 532                     ; 190 #endif /*STM8S903 or STM8AF622x */
 532                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 534  004e c67f75        	ld	a,32629
 535                     ; 192     break;
 537  0051 2003          	jp	LC001
 538  0053               L55:
 539                     ; 194   case ITC_IRQ_EEPROM_EEC:
 539                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 541  0053 c67f76        	ld	a,32630
 542  0056               LC001:
 543  0056 1401          	and	a,(OFST-1,sp)
 544  0058 6b02          	ld	(OFST+0,sp),a
 545                     ; 196     break;
 547                     ; 198   default:
 547                     ; 199     break;
 549  005a               L502:
 550                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 552  005a 7b03          	ld	a,(OFST+1,sp)
 553  005c a403          	and	a,#3
 554  005e 48            	sll	a
 555  005f 5f            	clrw	x
 556  0060 97            	ld	xl,a
 557  0061 7b02          	ld	a,(OFST+0,sp)
 558  0063 5d            	tnzw	x
 559  0064 2704          	jreq	L43
 560  0066               L63:
 561  0066 44            	srl	a
 562  0067 5a            	decw	x
 563  0068 26fc          	jrne	L63
 564  006a               L43:
 565                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 569  006a 5b03          	addw	sp,#3
 570  006c 81            	ret	
 636                     	switch	.const
 637  0032               L201:
 638  0032 0066          	dc.w	L702
 639  0034 0066          	dc.w	L702
 640  0036 0066          	dc.w	L702
 641  0038 0066          	dc.w	L702
 642  003a 0078          	dc.w	L112
 643  003c 0078          	dc.w	L112
 644  003e 0078          	dc.w	L112
 645  0040 0078          	dc.w	L112
 646  0042 00e2          	dc.w	L362
 647  0044 00e2          	dc.w	L362
 648  0046 008a          	dc.w	L312
 649  0048 008a          	dc.w	L312
 650  004a 009c          	dc.w	L512
 651  004c 009c          	dc.w	L512
 652  004e 009c          	dc.w	L512
 653  0050 009c          	dc.w	L512
 654  0052 00ae          	dc.w	L712
 655  0054 00ae          	dc.w	L712
 656  0056 00ae          	dc.w	L712
 657  0058 00ae          	dc.w	L712
 658  005a 00e2          	dc.w	L362
 659  005c 00e2          	dc.w	L362
 660  005e 00c0          	dc.w	L122
 661  0060 00c0          	dc.w	L122
 662  0062 00d2          	dc.w	L322
 663                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 663                     ; 221 {
 664                     .text:	section	.text,new
 665  0000               _ITC_SetSoftwarePriority:
 667  0000 89            	pushw	x
 668  0001 89            	pushw	x
 669       00000002      OFST:	set	2
 672                     ; 222   uint8_t Mask = 0;
 674                     ; 223   uint8_t NewPriority = 0;
 676                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 678  0002 9e            	ld	a,xh
 679  0003 a119          	cp	a,#25
 680  0005 2506          	jrult	L44
 681  0007 ae00e2        	ldw	x,#226
 682  000a cd00e5        	call	LC002
 683  000d               L44:
 684                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 686  000d 7b04          	ld	a,(OFST+2,sp)
 687  000f a102          	cp	a,#2
 688  0011 2711          	jreq	L45
 689  0013 4a            	dec	a
 690  0014 270e          	jreq	L45
 691  0016 7b04          	ld	a,(OFST+2,sp)
 692  0018 270a          	jreq	L45
 693  001a a103          	cp	a,#3
 694  001c 2706          	jreq	L45
 695  001e ae00e3        	ldw	x,#227
 696  0021 cd00e5        	call	LC002
 697  0024               L45:
 698                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 700  0024 cd0000        	call	_ITC_GetSoftIntStatus
 702  0027 a128          	cp	a,#40
 703  0029 2706          	jreq	L46
 704  002b ae00e6        	ldw	x,#230
 705  002e cd00e5        	call	LC002
 706  0031               L46:
 707                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 709  0031 7b03          	ld	a,(OFST+1,sp)
 710  0033 a403          	and	a,#3
 711  0035 48            	sll	a
 712  0036 5f            	clrw	x
 713  0037 97            	ld	xl,a
 714  0038 a603          	ld	a,#3
 715  003a 5d            	tnzw	x
 716  003b 2704          	jreq	L07
 717  003d               L27:
 718  003d 48            	sll	a
 719  003e 5a            	decw	x
 720  003f 26fc          	jrne	L27
 721  0041               L07:
 722  0041 43            	cpl	a
 723  0042 6b01          	ld	(OFST-1,sp),a
 724                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 726  0044 7b03          	ld	a,(OFST+1,sp)
 727  0046 a403          	and	a,#3
 728  0048 48            	sll	a
 729  0049 5f            	clrw	x
 730  004a 97            	ld	xl,a
 731  004b 7b04          	ld	a,(OFST+2,sp)
 732  004d 5d            	tnzw	x
 733  004e 2704          	jreq	L47
 734  0050               L67:
 735  0050 48            	sll	a
 736  0051 5a            	decw	x
 737  0052 26fc          	jrne	L67
 738  0054               L47:
 739  0054 6b02          	ld	(OFST+0,sp),a
 740                     ; 239   switch (IrqNum)
 742  0056 7b03          	ld	a,(OFST+1,sp)
 744                     ; 329   default:
 744                     ; 330     break;
 745  0058 a119          	cp	a,#25
 746  005a 2503cc00e2    	jruge	L362
 747  005f 5f            	clrw	x
 748  0060 97            	ld	xl,a
 749  0061 58            	sllw	x
 750  0062 de0032        	ldw	x,(L201,x)
 751  0065 fc            	jp	(x)
 752  0066               L702:
 753                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 753                     ; 242   case ITC_IRQ_AWU:
 753                     ; 243   case ITC_IRQ_CLK:
 753                     ; 244   case ITC_IRQ_PORTA:
 753                     ; 245     ITC->ISPR1 &= Mask;
 755  0066 c67f70        	ld	a,32624
 756  0069 1401          	and	a,(OFST-1,sp)
 757  006b c77f70        	ld	32624,a
 758                     ; 246     ITC->ISPR1 |= NewPriority;
 760  006e c67f70        	ld	a,32624
 761  0071 1a02          	or	a,(OFST+0,sp)
 762  0073 c77f70        	ld	32624,a
 763                     ; 247     break;
 765  0076 206a          	jra	L362
 766  0078               L112:
 767                     ; 249   case ITC_IRQ_PORTB:
 767                     ; 250   case ITC_IRQ_PORTC:
 767                     ; 251   case ITC_IRQ_PORTD:
 767                     ; 252   case ITC_IRQ_PORTE:
 767                     ; 253     ITC->ISPR2 &= Mask;
 769  0078 c67f71        	ld	a,32625
 770  007b 1401          	and	a,(OFST-1,sp)
 771  007d c77f71        	ld	32625,a
 772                     ; 254     ITC->ISPR2 |= NewPriority;
 774  0080 c67f71        	ld	a,32625
 775  0083 1a02          	or	a,(OFST+0,sp)
 776  0085 c77f71        	ld	32625,a
 777                     ; 255     break;
 779  0088 2058          	jra	L362
 780  008a               L312:
 781                     ; 264   case ITC_IRQ_SPI:
 781                     ; 265   case ITC_IRQ_TIM1_OVF:
 781                     ; 266     ITC->ISPR3 &= Mask;
 783  008a c67f72        	ld	a,32626
 784  008d 1401          	and	a,(OFST-1,sp)
 785  008f c77f72        	ld	32626,a
 786                     ; 267     ITC->ISPR3 |= NewPriority;
 788  0092 c67f72        	ld	a,32626
 789  0095 1a02          	or	a,(OFST+0,sp)
 790  0097 c77f72        	ld	32626,a
 791                     ; 268     break;
 793  009a 2046          	jra	L362
 794  009c               L512:
 795                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 795                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 795                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 795                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 795                     ; 274 #else
 795                     ; 275   case ITC_IRQ_TIM2_OVF:
 795                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 795                     ; 277 #endif /*STM8S903 or STM8AF622x */
 795                     ; 278   case ITC_IRQ_TIM3_OVF:
 795                     ; 279     ITC->ISPR4 &= Mask;
 797  009c c67f73        	ld	a,32627
 798  009f 1401          	and	a,(OFST-1,sp)
 799  00a1 c77f73        	ld	32627,a
 800                     ; 280     ITC->ISPR4 |= NewPriority;
 802  00a4 c67f73        	ld	a,32627
 803  00a7 1a02          	or	a,(OFST+0,sp)
 804  00a9 c77f73        	ld	32627,a
 805                     ; 281     break;
 807  00ac 2034          	jra	L362
 808  00ae               L712:
 809                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 809                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 809                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 809                     ; 286   case ITC_IRQ_UART1_TX:
 809                     ; 287   case ITC_IRQ_UART1_RX:
 809                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 809                     ; 289 #if defined(STM8AF622x)
 809                     ; 290   case ITC_IRQ_UART4_TX:
 809                     ; 291   case ITC_IRQ_UART4_RX:
 809                     ; 292 #endif /*STM8AF622x */
 809                     ; 293   case ITC_IRQ_I2C:
 809                     ; 294     ITC->ISPR5 &= Mask;
 811  00ae c67f74        	ld	a,32628
 812  00b1 1401          	and	a,(OFST-1,sp)
 813  00b3 c77f74        	ld	32628,a
 814                     ; 295     ITC->ISPR5 |= NewPriority;
 816  00b6 c67f74        	ld	a,32628
 817  00b9 1a02          	or	a,(OFST+0,sp)
 818  00bb c77f74        	ld	32628,a
 819                     ; 296     break;
 821  00be 2022          	jra	L362
 822  00c0               L122:
 823                     ; 312   case ITC_IRQ_ADC1:
 823                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 823                     ; 314     
 823                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 823                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 823                     ; 317 #else
 823                     ; 318   case ITC_IRQ_TIM4_OVF:
 823                     ; 319 #endif /* STM8S903 or STM8AF622x */
 823                     ; 320     ITC->ISPR6 &= Mask;
 825  00c0 c67f75        	ld	a,32629
 826  00c3 1401          	and	a,(OFST-1,sp)
 827  00c5 c77f75        	ld	32629,a
 828                     ; 321     ITC->ISPR6 |= NewPriority;
 830  00c8 c67f75        	ld	a,32629
 831  00cb 1a02          	or	a,(OFST+0,sp)
 832  00cd c77f75        	ld	32629,a
 833                     ; 322     break;
 835  00d0 2010          	jra	L362
 836  00d2               L322:
 837                     ; 324   case ITC_IRQ_EEPROM_EEC:
 837                     ; 325     ITC->ISPR7 &= Mask;
 839  00d2 c67f76        	ld	a,32630
 840  00d5 1401          	and	a,(OFST-1,sp)
 841  00d7 c77f76        	ld	32630,a
 842                     ; 326     ITC->ISPR7 |= NewPriority;
 844  00da c67f76        	ld	a,32630
 845  00dd 1a02          	or	a,(OFST+0,sp)
 846  00df c77f76        	ld	32630,a
 847                     ; 327     break;
 849                     ; 329   default:
 849                     ; 330     break;
 851  00e2               L362:
 852                     ; 332 }
 855  00e2 5b04          	addw	sp,#4
 856  00e4 81            	ret	
 857  00e5               LC002:
 858  00e5 89            	pushw	x
 859  00e6 5f            	clrw	x
 860  00e7 89            	pushw	x
 861  00e8 ae0064        	ldw	x,#L102
 862  00eb cd0000        	call	_assert_failed
 864  00ee 5b04          	addw	sp,#4
 865  00f0 81            	ret	
 878                     	xdef	_ITC_GetSoftwarePriority
 879                     	xdef	_ITC_SetSoftwarePriority
 880                     	xdef	_ITC_GetSoftIntStatus
 881                     	xdef	_ITC_DeInit
 882                     	xdef	_ITC_GetCPUCC
 883                     	xref	_assert_failed
 884                     	switch	.const
 885  0064               L102:
 886  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 887  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 888  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 889  009a 5f6974632e63  	dc.b	"_itc.c",0
 909                     	end
