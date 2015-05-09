   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     .const:	section	.text
  23  0000               _HSIDivFactor:
  24  0000 01            	dc.b	1
  25  0001 02            	dc.b	2
  26  0002 04            	dc.b	4
  27  0003 08            	dc.b	8
  28  0004               _CLKPrescTable:
  29  0004 01            	dc.b	1
  30  0005 02            	dc.b	2
  31  0006 04            	dc.b	4
  32  0007 08            	dc.b	8
  33  0008 0a            	dc.b	10
  34  0009 10            	dc.b	16
  35  000a 14            	dc.b	20
  36  000b 28            	dc.b	40
  65                     ; 72 void CLK_DeInit(void)
  65                     ; 73 {
  67                     .text:	section	.text,new
  68  0000               _CLK_DeInit:
  72                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  74  0000 350150c0      	mov	20672,#1
  75                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  77  0004 725f50c1      	clr	20673
  78                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  80  0008 35e150c4      	mov	20676,#225
  81                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  83  000c 725f50c5      	clr	20677
  84                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  86  0010 351850c6      	mov	20678,#24
  87                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  89  0014 35ff50c7      	mov	20679,#255
  90                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  92  0018 35ff50ca      	mov	20682,#255
  93                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  95  001c 725f50c8      	clr	20680
  96                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  98  0020 725f50c9      	clr	20681
 100  0024               L52:
 101                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 103  0024 720050c9fb    	btjt	20681,#0,L52
 104                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 106  0029 725f50c9      	clr	20681
 107                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 109  002d 725f50cc      	clr	20684
 110                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 112  0031 725f50cd      	clr	20685
 113                     ; 88 }
 116  0035 81            	ret	
 173                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 173                     ; 100 {
 174                     .text:	section	.text,new
 175  0000               _CLK_FastHaltWakeUpCmd:
 177  0000 88            	push	a
 178       00000000      OFST:	set	0
 181                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 183  0001 4d            	tnz	a
 184  0002 2711          	jreq	L41
 185  0004 4a            	dec	a
 186  0005 270e          	jreq	L41
 187  0007 ae0066        	ldw	x,#102
 188  000a 89            	pushw	x
 189  000b 5f            	clrw	x
 190  000c 89            	pushw	x
 191  000d ae000c        	ldw	x,#L75
 192  0010 cd0000        	call	_assert_failed
 194  0013 5b04          	addw	sp,#4
 195  0015               L41:
 196                     ; 104   if (NewState != DISABLE)
 198  0015 7b01          	ld	a,(OFST+1,sp)
 199  0017 2706          	jreq	L16
 200                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 202  0019 721450c0      	bset	20672,#2
 204  001d 2004          	jra	L36
 205  001f               L16:
 206                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 208  001f 721550c0      	bres	20672,#2
 209  0023               L36:
 210                     ; 114 }
 213  0023 84            	pop	a
 214  0024 81            	ret	
 250                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 250                     ; 122 {
 251                     .text:	section	.text,new
 252  0000               _CLK_HSECmd:
 254  0000 88            	push	a
 255       00000000      OFST:	set	0
 258                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 260  0001 4d            	tnz	a
 261  0002 2711          	jreq	L62
 262  0004 4a            	dec	a
 263  0005 270e          	jreq	L62
 264  0007 ae007c        	ldw	x,#124
 265  000a 89            	pushw	x
 266  000b 5f            	clrw	x
 267  000c 89            	pushw	x
 268  000d ae000c        	ldw	x,#L75
 269  0010 cd0000        	call	_assert_failed
 271  0013 5b04          	addw	sp,#4
 272  0015               L62:
 273                     ; 126   if (NewState != DISABLE)
 275  0015 7b01          	ld	a,(OFST+1,sp)
 276  0017 2706          	jreq	L301
 277                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 279  0019 721050c1      	bset	20673,#0
 281  001d 2004          	jra	L501
 282  001f               L301:
 283                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 285  001f 721150c1      	bres	20673,#0
 286  0023               L501:
 287                     ; 136 }
 290  0023 84            	pop	a
 291  0024 81            	ret	
 327                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 327                     ; 144 {
 328                     .text:	section	.text,new
 329  0000               _CLK_HSICmd:
 331  0000 88            	push	a
 332       00000000      OFST:	set	0
 335                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 337  0001 4d            	tnz	a
 338  0002 2711          	jreq	L04
 339  0004 4a            	dec	a
 340  0005 270e          	jreq	L04
 341  0007 ae0092        	ldw	x,#146
 342  000a 89            	pushw	x
 343  000b 5f            	clrw	x
 344  000c 89            	pushw	x
 345  000d ae000c        	ldw	x,#L75
 346  0010 cd0000        	call	_assert_failed
 348  0013 5b04          	addw	sp,#4
 349  0015               L04:
 350                     ; 148   if (NewState != DISABLE)
 352  0015 7b01          	ld	a,(OFST+1,sp)
 353  0017 2706          	jreq	L521
 354                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 356  0019 721050c0      	bset	20672,#0
 358  001d 2004          	jra	L721
 359  001f               L521:
 360                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 362  001f 721150c0      	bres	20672,#0
 363  0023               L721:
 364                     ; 158 }
 367  0023 84            	pop	a
 368  0024 81            	ret	
 404                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 404                     ; 167 {
 405                     .text:	section	.text,new
 406  0000               _CLK_LSICmd:
 408  0000 88            	push	a
 409       00000000      OFST:	set	0
 412                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  0001 4d            	tnz	a
 415  0002 2711          	jreq	L25
 416  0004 4a            	dec	a
 417  0005 270e          	jreq	L25
 418  0007 ae00a9        	ldw	x,#169
 419  000a 89            	pushw	x
 420  000b 5f            	clrw	x
 421  000c 89            	pushw	x
 422  000d ae000c        	ldw	x,#L75
 423  0010 cd0000        	call	_assert_failed
 425  0013 5b04          	addw	sp,#4
 426  0015               L25:
 427                     ; 171   if (NewState != DISABLE)
 429  0015 7b01          	ld	a,(OFST+1,sp)
 430  0017 2706          	jreq	L741
 431                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 433  0019 721650c0      	bset	20672,#3
 435  001d 2004          	jra	L151
 436  001f               L741:
 437                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 439  001f 721750c0      	bres	20672,#3
 440  0023               L151:
 441                     ; 181 }
 444  0023 84            	pop	a
 445  0024 81            	ret	
 481                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 481                     ; 190 {
 482                     .text:	section	.text,new
 483  0000               _CLK_CCOCmd:
 485  0000 88            	push	a
 486       00000000      OFST:	set	0
 489                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 491  0001 4d            	tnz	a
 492  0002 2711          	jreq	L46
 493  0004 4a            	dec	a
 494  0005 270e          	jreq	L46
 495  0007 ae00c0        	ldw	x,#192
 496  000a 89            	pushw	x
 497  000b 5f            	clrw	x
 498  000c 89            	pushw	x
 499  000d ae000c        	ldw	x,#L75
 500  0010 cd0000        	call	_assert_failed
 502  0013 5b04          	addw	sp,#4
 503  0015               L46:
 504                     ; 194   if (NewState != DISABLE)
 506  0015 7b01          	ld	a,(OFST+1,sp)
 507  0017 2706          	jreq	L171
 508                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 510  0019 721050c9      	bset	20681,#0
 512  001d 2004          	jra	L371
 513  001f               L171:
 514                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 516  001f 721150c9      	bres	20681,#0
 517  0023               L371:
 518                     ; 204 }
 521  0023 84            	pop	a
 522  0024 81            	ret	
 558                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 558                     ; 214 {
 559                     .text:	section	.text,new
 560  0000               _CLK_ClockSwitchCmd:
 562  0000 88            	push	a
 563       00000000      OFST:	set	0
 566                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 568  0001 4d            	tnz	a
 569  0002 2711          	jreq	L67
 570  0004 4a            	dec	a
 571  0005 270e          	jreq	L67
 572  0007 ae00d8        	ldw	x,#216
 573  000a 89            	pushw	x
 574  000b 5f            	clrw	x
 575  000c 89            	pushw	x
 576  000d ae000c        	ldw	x,#L75
 577  0010 cd0000        	call	_assert_failed
 579  0013 5b04          	addw	sp,#4
 580  0015               L67:
 581                     ; 218   if (NewState != DISABLE )
 583  0015 7b01          	ld	a,(OFST+1,sp)
 584  0017 2706          	jreq	L312
 585                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 587  0019 721250c5      	bset	20677,#1
 589  001d 2004          	jra	L512
 590  001f               L312:
 591                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 593  001f 721350c5      	bres	20677,#1
 594  0023               L512:
 595                     ; 228 }
 598  0023 84            	pop	a
 599  0024 81            	ret	
 636                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 636                     ; 239 {
 637                     .text:	section	.text,new
 638  0000               _CLK_SlowActiveHaltWakeUpCmd:
 640  0000 88            	push	a
 641       00000000      OFST:	set	0
 644                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 646  0001 4d            	tnz	a
 647  0002 2711          	jreq	L011
 648  0004 4a            	dec	a
 649  0005 270e          	jreq	L011
 650  0007 ae00f1        	ldw	x,#241
 651  000a 89            	pushw	x
 652  000b 5f            	clrw	x
 653  000c 89            	pushw	x
 654  000d ae000c        	ldw	x,#L75
 655  0010 cd0000        	call	_assert_failed
 657  0013 5b04          	addw	sp,#4
 658  0015               L011:
 659                     ; 243   if (NewState != DISABLE)
 661  0015 7b01          	ld	a,(OFST+1,sp)
 662  0017 2706          	jreq	L532
 663                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 665  0019 721a50c0      	bset	20672,#5
 667  001d 2004          	jra	L732
 668  001f               L532:
 669                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 671  001f 721b50c0      	bres	20672,#5
 672  0023               L732:
 673                     ; 253 }
 676  0023 84            	pop	a
 677  0024 81            	ret	
 837                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 837                     ; 264 {
 838                     .text:	section	.text,new
 839  0000               _CLK_PeripheralClockConfig:
 841  0000 89            	pushw	x
 842       00000000      OFST:	set	0
 845                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 847  0001 9f            	ld	a,xl
 848  0002 4d            	tnz	a
 849  0003 270a          	jreq	L221
 850  0005 9f            	ld	a,xl
 851  0006 4a            	dec	a
 852  0007 2706          	jreq	L221
 853  0009 ae010a        	ldw	x,#266
 854  000c cd0092        	call	LC004
 855  000f               L221:
 856                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 858  000f 7b01          	ld	a,(OFST+1,sp)
 859  0011 272f          	jreq	L231
 860  0013 a101          	cp	a,#1
 861  0015 272b          	jreq	L231
 862  0017 a103          	cp	a,#3
 863  0019 2727          	jreq	L231
 864  001b a104          	cp	a,#4
 865  001d 2723          	jreq	L231
 866  001f a105          	cp	a,#5
 867  0021 271f          	jreq	L231
 868  0023 a104          	cp	a,#4
 869  0025 271b          	jreq	L231
 870  0027 a106          	cp	a,#6
 871  0029 2717          	jreq	L231
 872  002b a107          	cp	a,#7
 873  002d 2713          	jreq	L231
 874  002f a117          	cp	a,#23
 875  0031 270f          	jreq	L231
 876  0033 a113          	cp	a,#19
 877  0035 270b          	jreq	L231
 878  0037 a112          	cp	a,#18
 879  0039 2707          	jreq	L231
 880  003b ae010b        	ldw	x,#267
 881  003e ad52          	call	LC004
 882  0040 7b01          	ld	a,(OFST+1,sp)
 883  0042               L231:
 884                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 886  0042 a510          	bcp	a,#16
 887  0044 2622          	jrne	L323
 888                     ; 271     if (NewState != DISABLE)
 890  0046 0d02          	tnz	(OFST+2,sp)
 891  0048 270d          	jreq	L523
 892                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 894  004a ad3e          	call	LC003
 895  004c 2704          	jreq	L631
 896  004e               L041:
 897  004e 48            	sll	a
 898  004f 5a            	decw	x
 899  0050 26fc          	jrne	L041
 900  0052               L631:
 901  0052 ca50c7        	or	a,20679
 903  0055 200c          	jp	LC002
 904  0057               L523:
 905                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 907  0057 ad31          	call	LC003
 908  0059 2704          	jreq	L241
 909  005b               L441:
 910  005b 48            	sll	a
 911  005c 5a            	decw	x
 912  005d 26fc          	jrne	L441
 913  005f               L241:
 914  005f 43            	cpl	a
 915  0060 c450c7        	and	a,20679
 916  0063               LC002:
 917  0063 c750c7        	ld	20679,a
 918  0066 2020          	jra	L133
 919  0068               L323:
 920                     ; 284     if (NewState != DISABLE)
 922  0068 0d02          	tnz	(OFST+2,sp)
 923  006a 270d          	jreq	L333
 924                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 926  006c ad1c          	call	LC003
 927  006e 2704          	jreq	L641
 928  0070               L051:
 929  0070 48            	sll	a
 930  0071 5a            	decw	x
 931  0072 26fc          	jrne	L051
 932  0074               L641:
 933  0074 ca50ca        	or	a,20682
 935  0077 200c          	jp	LC001
 936  0079               L333:
 937                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 939  0079 ad0f          	call	LC003
 940  007b 2704          	jreq	L251
 941  007d               L451:
 942  007d 48            	sll	a
 943  007e 5a            	decw	x
 944  007f 26fc          	jrne	L451
 945  0081               L251:
 946  0081 43            	cpl	a
 947  0082 c450ca        	and	a,20682
 948  0085               LC001:
 949  0085 c750ca        	ld	20682,a
 950  0088               L133:
 951                     ; 295 }
 954  0088 85            	popw	x
 955  0089 81            	ret	
 956  008a               LC003:
 957  008a a40f          	and	a,#15
 958  008c 5f            	clrw	x
 959  008d 97            	ld	xl,a
 960  008e a601          	ld	a,#1
 961  0090 5d            	tnzw	x
 962  0091 81            	ret	
 963  0092               LC004:
 964  0092 89            	pushw	x
 965  0093 5f            	clrw	x
 966  0094 89            	pushw	x
 967  0095 ae000c        	ldw	x,#L75
 968  0098 cd0000        	call	_assert_failed
 970  009b 5b04          	addw	sp,#4
 971  009d 81            	ret	
1160                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1160                     ; 310 {
1161                     .text:	section	.text,new
1162  0000               _CLK_ClockSwitchConfig:
1164  0000 89            	pushw	x
1165  0001 5204          	subw	sp,#4
1166       00000004      OFST:	set	4
1169                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1171  0003 aeffff        	ldw	x,#65535
1172  0006 1f03          	ldw	(OFST-1,sp),x
1173                     ; 313   ErrorStatus Swif = ERROR;
1175                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1177  0008 7b06          	ld	a,(OFST+2,sp)
1178  000a a1e1          	cp	a,#225
1179  000c 270e          	jreq	L461
1180  000e a1d2          	cp	a,#210
1181  0010 270a          	jreq	L461
1182  0012 a1b4          	cp	a,#180
1183  0014 2706          	jreq	L461
1184  0016 ae013c        	ldw	x,#316
1185  0019 cd00dc        	call	LC007
1186  001c               L461:
1187                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1189  001c 7b05          	ld	a,(OFST+1,sp)
1190  001e 2709          	jreq	L471
1191  0020 4a            	dec	a
1192  0021 2706          	jreq	L471
1193  0023 ae013d        	ldw	x,#317
1194  0026 cd00dc        	call	LC007
1195  0029               L471:
1196                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1198  0029 7b09          	ld	a,(OFST+5,sp)
1199  002b 2709          	jreq	L402
1200  002d 4a            	dec	a
1201  002e 2706          	jreq	L402
1202  0030 ae013e        	ldw	x,#318
1203  0033 cd00dc        	call	LC007
1204  0036               L402:
1205                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1207  0036 7b0a          	ld	a,(OFST+6,sp)
1208  0038 2709          	jreq	L412
1209  003a 4a            	dec	a
1210  003b 2706          	jreq	L412
1211  003d ae013f        	ldw	x,#319
1212  0040 cd00dc        	call	LC007
1213  0043               L412:
1214                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1216  0043 c650c3        	ld	a,20675
1217  0046 6b01          	ld	(OFST-3,sp),a
1218                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1220  0048 7b05          	ld	a,(OFST+1,sp)
1221  004a 4a            	dec	a
1222  004b 263d          	jrne	L744
1223                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1225  004d 721250c5      	bset	20677,#1
1226                     ; 331     if (ITState != DISABLE)
1228  0051 7b09          	ld	a,(OFST+5,sp)
1229  0053 2706          	jreq	L154
1230                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1232  0055 721450c5      	bset	20677,#2
1234  0059 2004          	jra	L354
1235  005b               L154:
1236                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1238  005b 721550c5      	bres	20677,#2
1239  005f               L354:
1240                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1242  005f 7b06          	ld	a,(OFST+2,sp)
1243  0061 c750c4        	ld	20676,a
1245  0064 2003          	jra	L164
1246  0066               L554:
1247                     ; 346       DownCounter--;
1249  0066 5a            	decw	x
1250  0067 1f03          	ldw	(OFST-1,sp),x
1251  0069               L164:
1252                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1254  0069 720150c504    	btjf	20677,#0,L564
1256  006e 1e03          	ldw	x,(OFST-1,sp)
1257  0070 26f4          	jrne	L554
1258  0072               L564:
1259                     ; 349     if(DownCounter != 0)
1261  0072 1e03          	ldw	x,(OFST-1,sp)
1262                     ; 351       Swif = SUCCESS;
1264  0074 263d          	jrne	LC006
1265  0076               L764:
1266                     ; 355       Swif = ERROR;
1269  0076 0f02          	clr	(OFST-2,sp)
1270  0078               L374:
1271                     ; 390   if(Swif != ERROR)
1273  0078 275d          	jreq	L715
1274                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1276  007a 7b0a          	ld	a,(OFST+6,sp)
1277  007c 263b          	jrne	L125
1279  007e 7b01          	ld	a,(OFST-3,sp)
1280  0080 a1e1          	cp	a,#225
1281  0082 2635          	jrne	L125
1282                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1284  0084 721150c0      	bres	20672,#0
1286  0088 204d          	jra	L715
1287  008a               L744:
1288                     ; 361     if (ITState != DISABLE)
1290  008a 7b09          	ld	a,(OFST+5,sp)
1291  008c 2706          	jreq	L574
1292                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1294  008e 721450c5      	bset	20677,#2
1296  0092 2004          	jra	L774
1297  0094               L574:
1298                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1300  0094 721550c5      	bres	20677,#2
1301  0098               L774:
1302                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1304  0098 7b06          	ld	a,(OFST+2,sp)
1305  009a c750c4        	ld	20676,a
1307  009d 2003          	jra	L505
1308  009f               L105:
1309                     ; 376       DownCounter--;
1311  009f 5a            	decw	x
1312  00a0 1f03          	ldw	(OFST-1,sp),x
1313  00a2               L505:
1314                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1316  00a2 720750c504    	btjf	20677,#3,L115
1318  00a7 1e03          	ldw	x,(OFST-1,sp)
1319  00a9 26f4          	jrne	L105
1320  00ab               L115:
1321                     ; 379     if(DownCounter != 0)
1323  00ab 1e03          	ldw	x,(OFST-1,sp)
1324  00ad 27c7          	jreq	L764
1325                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1327  00af 721250c5      	bset	20677,#1
1328                     ; 383       Swif = SUCCESS;
1330  00b3               LC006:
1332  00b3 a601          	ld	a,#1
1333  00b5 6b02          	ld	(OFST-2,sp),a
1335  00b7 20bf          	jra	L374
1336                     ; 387       Swif = ERROR;
1337  00b9               L125:
1338                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1340  00b9 7b0a          	ld	a,(OFST+6,sp)
1341  00bb 260c          	jrne	L525
1343  00bd 7b01          	ld	a,(OFST-3,sp)
1344  00bf a1d2          	cp	a,#210
1345  00c1 2606          	jrne	L525
1346                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1348  00c3 721750c0      	bres	20672,#3
1350  00c7 200e          	jra	L715
1351  00c9               L525:
1352                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1354  00c9 7b0a          	ld	a,(OFST+6,sp)
1355  00cb 260a          	jrne	L715
1357  00cd 7b01          	ld	a,(OFST-3,sp)
1358  00cf a1b4          	cp	a,#180
1359  00d1 2604          	jrne	L715
1360                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1362  00d3 721150c1      	bres	20673,#0
1363  00d7               L715:
1364                     ; 406   return(Swif);
1366  00d7 7b02          	ld	a,(OFST-2,sp)
1369  00d9 5b06          	addw	sp,#6
1370  00db 81            	ret	
1371  00dc               LC007:
1372  00dc 89            	pushw	x
1373  00dd 5f            	clrw	x
1374  00de 89            	pushw	x
1375  00df ae000c        	ldw	x,#L75
1376  00e2 cd0000        	call	_assert_failed
1378  00e5 5b04          	addw	sp,#4
1379  00e7 81            	ret	
1518                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1518                     ; 416 {
1519                     .text:	section	.text,new
1520  0000               _CLK_HSIPrescalerConfig:
1522  0000 88            	push	a
1523       00000000      OFST:	set	0
1526                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1528  0001 4d            	tnz	a
1529  0002 271a          	jreq	L622
1530  0004 a108          	cp	a,#8
1531  0006 2716          	jreq	L622
1532  0008 a110          	cp	a,#16
1533  000a 2712          	jreq	L622
1534  000c a118          	cp	a,#24
1535  000e 270e          	jreq	L622
1536  0010 ae01a2        	ldw	x,#418
1537  0013 89            	pushw	x
1538  0014 5f            	clrw	x
1539  0015 89            	pushw	x
1540  0016 ae000c        	ldw	x,#L75
1541  0019 cd0000        	call	_assert_failed
1543  001c 5b04          	addw	sp,#4
1544  001e               L622:
1545                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1547  001e c650c6        	ld	a,20678
1548  0021 a4e7          	and	a,#231
1549  0023 c750c6        	ld	20678,a
1550                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1552  0026 c650c6        	ld	a,20678
1553  0029 1a01          	or	a,(OFST+1,sp)
1554  002b c750c6        	ld	20678,a
1555                     ; 425 }
1558  002e 84            	pop	a
1559  002f 81            	ret	
1695                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1695                     ; 437 {
1696                     .text:	section	.text,new
1697  0000               _CLK_CCOConfig:
1699  0000 88            	push	a
1700       00000000      OFST:	set	0
1703                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1705  0001 4d            	tnz	a
1706  0002 273e          	jreq	L042
1707  0004 a104          	cp	a,#4
1708  0006 273a          	jreq	L042
1709  0008 a102          	cp	a,#2
1710  000a 2736          	jreq	L042
1711  000c a108          	cp	a,#8
1712  000e 2732          	jreq	L042
1713  0010 a10a          	cp	a,#10
1714  0012 272e          	jreq	L042
1715  0014 a10c          	cp	a,#12
1716  0016 272a          	jreq	L042
1717  0018 a10e          	cp	a,#14
1718  001a 2726          	jreq	L042
1719  001c a110          	cp	a,#16
1720  001e 2722          	jreq	L042
1721  0020 a112          	cp	a,#18
1722  0022 271e          	jreq	L042
1723  0024 a114          	cp	a,#20
1724  0026 271a          	jreq	L042
1725  0028 a116          	cp	a,#22
1726  002a 2716          	jreq	L042
1727  002c a118          	cp	a,#24
1728  002e 2712          	jreq	L042
1729  0030 a11a          	cp	a,#26
1730  0032 270e          	jreq	L042
1731  0034 ae01b7        	ldw	x,#439
1732  0037 89            	pushw	x
1733  0038 5f            	clrw	x
1734  0039 89            	pushw	x
1735  003a ae000c        	ldw	x,#L75
1736  003d cd0000        	call	_assert_failed
1738  0040 5b04          	addw	sp,#4
1739  0042               L042:
1740                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1742  0042 c650c9        	ld	a,20681
1743  0045 a4e1          	and	a,#225
1744  0047 c750c9        	ld	20681,a
1745                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1747  004a c650c9        	ld	a,20681
1748  004d 1a01          	or	a,(OFST+1,sp)
1749  004f c750c9        	ld	20681,a
1750                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1752                     ; 449 }
1755  0052 84            	pop	a
1756  0053 721050c9      	bset	20681,#0
1757  0057 81            	ret	
1823                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1823                     ; 460 {
1824                     .text:	section	.text,new
1825  0000               _CLK_ITConfig:
1827  0000 89            	pushw	x
1828       00000000      OFST:	set	0
1831                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1833  0001 9f            	ld	a,xl
1834  0002 4d            	tnz	a
1835  0003 2709          	jreq	L252
1836  0005 9f            	ld	a,xl
1837  0006 4a            	dec	a
1838  0007 2705          	jreq	L252
1839  0009 ae01ce        	ldw	x,#462
1840  000c ad3f          	call	LC008
1841  000e               L252:
1842                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1844  000e 7b01          	ld	a,(OFST+1,sp)
1845  0010 a10c          	cp	a,#12
1846  0012 2709          	jreq	L262
1847  0014 a11c          	cp	a,#28
1848  0016 2705          	jreq	L262
1849  0018 ae01cf        	ldw	x,#463
1850  001b ad30          	call	LC008
1851  001d               L262:
1852                     ; 465   if (NewState != DISABLE)
1854  001d 7b02          	ld	a,(OFST+2,sp)
1855  001f 2716          	jreq	L727
1856                     ; 467     switch (CLK_IT)
1858  0021 7b01          	ld	a,(OFST+1,sp)
1860                     ; 475     default:
1860                     ; 476       break;
1861  0023 a00c          	sub	a,#12
1862  0025 270a          	jreq	L366
1863  0027 a010          	sub	a,#16
1864  0029 2620          	jrne	L537
1865                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1865                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1867  002b 721450c5      	bset	20677,#2
1868                     ; 471       break;
1870  002f 201a          	jra	L537
1871  0031               L366:
1872                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1872                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1874  0031 721450c8      	bset	20680,#2
1875                     ; 474       break;
1877  0035 2014          	jra	L537
1878                     ; 475     default:
1878                     ; 476       break;
1881  0037               L727:
1882                     ; 481     switch (CLK_IT)
1884  0037 7b01          	ld	a,(OFST+1,sp)
1886                     ; 489     default:
1886                     ; 490       break;
1887  0039 a00c          	sub	a,#12
1888  003b 270a          	jreq	L176
1889  003d a010          	sub	a,#16
1890  003f 260a          	jrne	L537
1891                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1891                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1893  0041 721550c5      	bres	20677,#2
1894                     ; 485       break;
1896  0045 2004          	jra	L537
1897  0047               L176:
1898                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1898                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1900  0047 721550c8      	bres	20680,#2
1901                     ; 488       break;
1902  004b               L537:
1903                     ; 493 }
1906  004b 85            	popw	x
1907  004c 81            	ret	
1908                     ; 489     default:
1908                     ; 490       break;
1910  004d               LC008:
1911  004d 89            	pushw	x
1912  004e 5f            	clrw	x
1913  004f 89            	pushw	x
1914  0050 ae000c        	ldw	x,#L75
1915  0053 cd0000        	call	_assert_failed
1917  0056 5b04          	addw	sp,#4
1918  0058 81            	ret	
1954                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1954                     ; 501 {
1955                     .text:	section	.text,new
1956  0000               _CLK_SYSCLKConfig:
1958  0000 88            	push	a
1959       00000000      OFST:	set	0
1962                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1964  0001 4d            	tnz	a
1965  0002 273a          	jreq	L472
1966  0004 a108          	cp	a,#8
1967  0006 2736          	jreq	L472
1968  0008 a110          	cp	a,#16
1969  000a 2732          	jreq	L472
1970  000c a118          	cp	a,#24
1971  000e 272e          	jreq	L472
1972  0010 a180          	cp	a,#128
1973  0012 272a          	jreq	L472
1974  0014 a181          	cp	a,#129
1975  0016 2726          	jreq	L472
1976  0018 a182          	cp	a,#130
1977  001a 2722          	jreq	L472
1978  001c a183          	cp	a,#131
1979  001e 271e          	jreq	L472
1980  0020 a184          	cp	a,#132
1981  0022 271a          	jreq	L472
1982  0024 a185          	cp	a,#133
1983  0026 2716          	jreq	L472
1984  0028 a186          	cp	a,#134
1985  002a 2712          	jreq	L472
1986  002c a187          	cp	a,#135
1987  002e 270e          	jreq	L472
1988  0030 ae01f7        	ldw	x,#503
1989  0033 89            	pushw	x
1990  0034 5f            	clrw	x
1991  0035 89            	pushw	x
1992  0036 ae000c        	ldw	x,#L75
1993  0039 cd0000        	call	_assert_failed
1995  003c 5b04          	addw	sp,#4
1996  003e               L472:
1997                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1999  003e 7b01          	ld	a,(OFST+1,sp)
2000  0040 2b0e          	jrmi	L167
2001                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2003  0042 c650c6        	ld	a,20678
2004  0045 a4e7          	and	a,#231
2005  0047 c750c6        	ld	20678,a
2006                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2008  004a 7b01          	ld	a,(OFST+1,sp)
2009  004c a418          	and	a,#24
2011  004e 200c          	jra	L367
2012  0050               L167:
2013                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2015  0050 c650c6        	ld	a,20678
2016  0053 a4f8          	and	a,#248
2017  0055 c750c6        	ld	20678,a
2018                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2020  0058 7b01          	ld	a,(OFST+1,sp)
2021  005a a407          	and	a,#7
2022  005c               L367:
2023  005c ca50c6        	or	a,20678
2024  005f c750c6        	ld	20678,a
2025                     ; 515 }
2028  0062 84            	pop	a
2029  0063 81            	ret	
2086                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2086                     ; 524 {
2087                     .text:	section	.text,new
2088  0000               _CLK_SWIMConfig:
2090  0000 88            	push	a
2091       00000000      OFST:	set	0
2094                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2096  0001 4d            	tnz	a
2097  0002 2711          	jreq	L603
2098  0004 4a            	dec	a
2099  0005 270e          	jreq	L603
2100  0007 ae020e        	ldw	x,#526
2101  000a 89            	pushw	x
2102  000b 5f            	clrw	x
2103  000c 89            	pushw	x
2104  000d ae000c        	ldw	x,#L75
2105  0010 cd0000        	call	_assert_failed
2107  0013 5b04          	addw	sp,#4
2108  0015               L603:
2109                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2111  0015 7b01          	ld	a,(OFST+1,sp)
2112  0017 2706          	jreq	L3101
2113                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2115  0019 721050cd      	bset	20685,#0
2117  001d 2004          	jra	L5101
2118  001f               L3101:
2119                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2121  001f 721150cd      	bres	20685,#0
2122  0023               L5101:
2123                     ; 538 }
2126  0023 84            	pop	a
2127  0024 81            	ret	
2151                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2151                     ; 548 {
2152                     .text:	section	.text,new
2153  0000               _CLK_ClockSecuritySystemEnable:
2157                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2159  0000 721050c8      	bset	20680,#0
2160                     ; 551 }
2163  0004 81            	ret	
2188                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2188                     ; 560 {
2189                     .text:	section	.text,new
2190  0000               _CLK_GetSYSCLKSource:
2194                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2196  0000 c650c3        	ld	a,20675
2199  0003 81            	ret	
2262                     ; 569 uint32_t CLK_GetClockFreq(void)
2262                     ; 570 {
2263                     .text:	section	.text,new
2264  0000               _CLK_GetClockFreq:
2266  0000 5209          	subw	sp,#9
2267       00000009      OFST:	set	9
2270                     ; 571   uint32_t clockfrequency = 0;
2272                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2274                     ; 573   uint8_t tmp = 0, presc = 0;
2278                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2280  0002 c650c3        	ld	a,20675
2281  0005 6b09          	ld	(OFST+0,sp),a
2282                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2284  0007 a1e1          	cp	a,#225
2285  0009 2634          	jrne	L1701
2286                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2288  000b c650c6        	ld	a,20678
2289  000e a418          	and	a,#24
2290  0010 44            	srl	a
2291  0011 44            	srl	a
2292  0012 44            	srl	a
2293                     ; 581     tmp = (uint8_t)(tmp >> 3);
2295                     ; 582     presc = HSIDivFactor[tmp];
2297  0013 5f            	clrw	x
2298  0014 97            	ld	xl,a
2299  0015 d60000        	ld	a,(_HSIDivFactor,x)
2300  0018 6b09          	ld	(OFST+0,sp),a
2301                     ; 583     clockfrequency = HSI_VALUE / presc;
2303  001a b703          	ld	c_lreg+3,a
2304  001c 3f02          	clr	c_lreg+2
2305  001e 3f01          	clr	c_lreg+1
2306  0020 3f00          	clr	c_lreg
2307  0022 96            	ldw	x,sp
2308  0023 5c            	incw	x
2309  0024 cd0000        	call	c_rtol
2311  0027 ae2400        	ldw	x,#9216
2312  002a bf02          	ldw	c_lreg+2,x
2313  002c ae00f4        	ldw	x,#244
2314  002f bf00          	ldw	c_lreg,x
2315  0031 96            	ldw	x,sp
2316  0032 5c            	incw	x
2317  0033 cd0000        	call	c_ludv
2319  0036 96            	ldw	x,sp
2320  0037 1c0005        	addw	x,#OFST-4
2321  003a cd0000        	call	c_rtol
2324  003d 2018          	jra	L3701
2325  003f               L1701:
2326                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2328  003f a1d2          	cp	a,#210
2329  0041 260a          	jrne	L5701
2330                     ; 587     clockfrequency = LSI_VALUE;
2332  0043 aef400        	ldw	x,#62464
2333  0046 1f07          	ldw	(OFST-2,sp),x
2334  0048 ae0001        	ldw	x,#1
2336  004b 2008          	jp	LC009
2337  004d               L5701:
2338                     ; 591     clockfrequency = HSE_VALUE;
2340  004d ae2400        	ldw	x,#9216
2341  0050 1f07          	ldw	(OFST-2,sp),x
2342  0052 ae00f4        	ldw	x,#244
2343  0055               LC009:
2344  0055 1f05          	ldw	(OFST-4,sp),x
2345  0057               L3701:
2346                     ; 594   return((uint32_t)clockfrequency);
2348  0057 96            	ldw	x,sp
2349  0058 1c0005        	addw	x,#OFST-4
2350  005b cd0000        	call	c_ltor
2354  005e 5b09          	addw	sp,#9
2355  0060 81            	ret	
2455                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2455                     ; 605 {
2456                     .text:	section	.text,new
2457  0000               _CLK_AdjustHSICalibrationValue:
2459  0000 88            	push	a
2460       00000000      OFST:	set	0
2463                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2465  0001 4d            	tnz	a
2466  0002 272a          	jreq	L623
2467  0004 a101          	cp	a,#1
2468  0006 2726          	jreq	L623
2469  0008 a102          	cp	a,#2
2470  000a 2722          	jreq	L623
2471  000c a103          	cp	a,#3
2472  000e 271e          	jreq	L623
2473  0010 a104          	cp	a,#4
2474  0012 271a          	jreq	L623
2475  0014 a105          	cp	a,#5
2476  0016 2716          	jreq	L623
2477  0018 a106          	cp	a,#6
2478  001a 2712          	jreq	L623
2479  001c a107          	cp	a,#7
2480  001e 270e          	jreq	L623
2481  0020 ae025f        	ldw	x,#607
2482  0023 89            	pushw	x
2483  0024 5f            	clrw	x
2484  0025 89            	pushw	x
2485  0026 ae000c        	ldw	x,#L75
2486  0029 cd0000        	call	_assert_failed
2488  002c 5b04          	addw	sp,#4
2489  002e               L623:
2490                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2492  002e c650cc        	ld	a,20684
2493  0031 a4f8          	and	a,#248
2494  0033 1a01          	or	a,(OFST+1,sp)
2495  0035 c750cc        	ld	20684,a
2496                     ; 611 }
2499  0038 84            	pop	a
2500  0039 81            	ret	
2524                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2524                     ; 623 {
2525                     .text:	section	.text,new
2526  0000               _CLK_SYSCLKEmergencyClear:
2530                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2532  0000 721150c5      	bres	20677,#0
2533                     ; 625 }
2536  0004 81            	ret	
2690                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2690                     ; 635 {
2691                     .text:	section	.text,new
2692  0000               _CLK_GetFlagStatus:
2694  0000 89            	pushw	x
2695  0001 5203          	subw	sp,#3
2696       00000003      OFST:	set	3
2699                     ; 636   uint16_t statusreg = 0;
2701                     ; 637   uint8_t tmpreg = 0;
2703                     ; 638   FlagStatus bitstatus = RESET;
2705                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2707  0003 a30110        	cpw	x,#272
2708  0006 2736          	jreq	L243
2709  0008 a30102        	cpw	x,#258
2710  000b 2731          	jreq	L243
2711  000d a30202        	cpw	x,#514
2712  0010 272c          	jreq	L243
2713  0012 a30308        	cpw	x,#776
2714  0015 2727          	jreq	L243
2715  0017 a30301        	cpw	x,#769
2716  001a 2722          	jreq	L243
2717  001c a30408        	cpw	x,#1032
2718  001f 271d          	jreq	L243
2719  0021 a30402        	cpw	x,#1026
2720  0024 2718          	jreq	L243
2721  0026 a30504        	cpw	x,#1284
2722  0029 2713          	jreq	L243
2723  002b a30502        	cpw	x,#1282
2724  002e 270e          	jreq	L243
2725  0030 ae0281        	ldw	x,#641
2726  0033 89            	pushw	x
2727  0034 5f            	clrw	x
2728  0035 89            	pushw	x
2729  0036 ae000c        	ldw	x,#L75
2730  0039 cd0000        	call	_assert_failed
2732  003c 5b04          	addw	sp,#4
2733  003e               L243:
2734                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2736  003e 7b04          	ld	a,(OFST+1,sp)
2737  0040 97            	ld	xl,a
2738  0041 4f            	clr	a
2739  0042 02            	rlwa	x,a
2740  0043 1f01          	ldw	(OFST-2,sp),x
2741                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2743  0045 a30100        	cpw	x,#256
2744  0048 2605          	jrne	L3421
2745                     ; 649     tmpreg = CLK->ICKR;
2747  004a c650c0        	ld	a,20672
2749  004d 2021          	jra	L5421
2750  004f               L3421:
2751                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2753  004f a30200        	cpw	x,#512
2754  0052 2605          	jrne	L7421
2755                     ; 653     tmpreg = CLK->ECKR;
2757  0054 c650c1        	ld	a,20673
2759  0057 2017          	jra	L5421
2760  0059               L7421:
2761                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2763  0059 a30300        	cpw	x,#768
2764  005c 2605          	jrne	L3521
2765                     ; 657     tmpreg = CLK->SWCR;
2767  005e c650c5        	ld	a,20677
2769  0061 200d          	jra	L5421
2770  0063               L3521:
2771                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2773  0063 a30400        	cpw	x,#1024
2774  0066 2605          	jrne	L7521
2775                     ; 661     tmpreg = CLK->CSSR;
2777  0068 c650c8        	ld	a,20680
2779  006b 2003          	jra	L5421
2780  006d               L7521:
2781                     ; 665     tmpreg = CLK->CCOR;
2783  006d c650c9        	ld	a,20681
2784  0070               L5421:
2785  0070 6b03          	ld	(OFST+0,sp),a
2786                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2788  0072 7b05          	ld	a,(OFST+2,sp)
2789  0074 1503          	bcp	a,(OFST+0,sp)
2790  0076 2704          	jreq	L3621
2791                     ; 670     bitstatus = SET;
2793  0078 a601          	ld	a,#1
2795  007a 2001          	jra	L5621
2796  007c               L3621:
2797                     ; 674     bitstatus = RESET;
2799  007c 4f            	clr	a
2800  007d               L5621:
2801                     ; 678   return((FlagStatus)bitstatus);
2805  007d 5b05          	addw	sp,#5
2806  007f 81            	ret	
2853                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2853                     ; 688 {
2854                     .text:	section	.text,new
2855  0000               _CLK_GetITStatus:
2857  0000 88            	push	a
2858  0001 88            	push	a
2859       00000001      OFST:	set	1
2862                     ; 689   ITStatus bitstatus = RESET;
2864                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2866  0002 a10c          	cp	a,#12
2867  0004 2712          	jreq	L453
2868  0006 a11c          	cp	a,#28
2869  0008 270e          	jreq	L453
2870  000a ae02b4        	ldw	x,#692
2871  000d 89            	pushw	x
2872  000e 5f            	clrw	x
2873  000f 89            	pushw	x
2874  0010 ae000c        	ldw	x,#L75
2875  0013 cd0000        	call	_assert_failed
2877  0016 5b04          	addw	sp,#4
2878  0018               L453:
2879                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2881  0018 7b02          	ld	a,(OFST+1,sp)
2882  001a a11c          	cp	a,#28
2883  001c 260b          	jrne	L1131
2884                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2886  001e c650c5        	ld	a,20677
2887  0021 1402          	and	a,(OFST+1,sp)
2888  0023 a10c          	cp	a,#12
2889  0025 260f          	jrne	L1231
2890                     ; 699       bitstatus = SET;
2892  0027 2009          	jp	LC011
2893                     ; 703       bitstatus = RESET;
2894  0029               L1131:
2895                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2897  0029 c650c8        	ld	a,20680
2898  002c 1402          	and	a,(OFST+1,sp)
2899  002e a10c          	cp	a,#12
2900  0030 2604          	jrne	L1231
2901                     ; 711       bitstatus = SET;
2903  0032               LC011:
2905  0032 a601          	ld	a,#1
2907  0034 2001          	jra	L7131
2908  0036               L1231:
2909                     ; 715       bitstatus = RESET;
2912  0036 4f            	clr	a
2913  0037               L7131:
2914                     ; 720   return bitstatus;
2918  0037 85            	popw	x
2919  0038 81            	ret	
2956                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2956                     ; 730 {
2957                     .text:	section	.text,new
2958  0000               _CLK_ClearITPendingBit:
2960  0000 88            	push	a
2961       00000000      OFST:	set	0
2964                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2966  0001 a10c          	cp	a,#12
2967  0003 2712          	jreq	L663
2968  0005 a11c          	cp	a,#28
2969  0007 270e          	jreq	L663
2970  0009 ae02dc        	ldw	x,#732
2971  000c 89            	pushw	x
2972  000d 5f            	clrw	x
2973  000e 89            	pushw	x
2974  000f ae000c        	ldw	x,#L75
2975  0012 cd0000        	call	_assert_failed
2977  0015 5b04          	addw	sp,#4
2978  0017               L663:
2979                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2981  0017 7b01          	ld	a,(OFST+1,sp)
2982  0019 a10c          	cp	a,#12
2983  001b 2606          	jrne	L3431
2984                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2986  001d 721750c8      	bres	20680,#3
2988  0021 2004          	jra	L5431
2989  0023               L3431:
2990                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2992  0023 721750c5      	bres	20677,#3
2993  0027               L5431:
2994                     ; 745 }
2997  0027 84            	pop	a
2998  0028 81            	ret	
3033                     	xdef	_CLKPrescTable
3034                     	xdef	_HSIDivFactor
3035                     	xdef	_CLK_ClearITPendingBit
3036                     	xdef	_CLK_GetITStatus
3037                     	xdef	_CLK_GetFlagStatus
3038                     	xdef	_CLK_GetSYSCLKSource
3039                     	xdef	_CLK_GetClockFreq
3040                     	xdef	_CLK_AdjustHSICalibrationValue
3041                     	xdef	_CLK_SYSCLKEmergencyClear
3042                     	xdef	_CLK_ClockSecuritySystemEnable
3043                     	xdef	_CLK_SWIMConfig
3044                     	xdef	_CLK_SYSCLKConfig
3045                     	xdef	_CLK_ITConfig
3046                     	xdef	_CLK_CCOConfig
3047                     	xdef	_CLK_HSIPrescalerConfig
3048                     	xdef	_CLK_ClockSwitchConfig
3049                     	xdef	_CLK_PeripheralClockConfig
3050                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3051                     	xdef	_CLK_FastHaltWakeUpCmd
3052                     	xdef	_CLK_ClockSwitchCmd
3053                     	xdef	_CLK_CCOCmd
3054                     	xdef	_CLK_LSICmd
3055                     	xdef	_CLK_HSICmd
3056                     	xdef	_CLK_HSECmd
3057                     	xdef	_CLK_DeInit
3058                     	xref	_assert_failed
3059                     	switch	.const
3060  000c               L75:
3061  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3062  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3063  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3064  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3065                     	xref.b	c_lreg
3066                     	xref.b	c_x
3086                     	xref	c_ltor
3087                     	xref	c_ludv
3088                     	xref	c_rtol
3089                     	end
