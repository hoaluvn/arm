   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 49 void TIM4_DeInit(void)
  50                     ; 50 {
  52                     .text:	section	.text,new
  53  0000               _TIM4_DeInit:
  57                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  59  0000 725f5340      	clr	21312
  60                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  62  0004 725f5343      	clr	21315
  63                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  65  0008 725f5346      	clr	21318
  66                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  68  000c 725f5347      	clr	21319
  69                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  71  0010 35ff5348      	mov	21320,#255
  72                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  74  0014 725f5344      	clr	21316
  75                     ; 57 }
  78  0018 81            	ret	
 185                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 185                     ; 66 {
 186                     .text:	section	.text,new
 187  0000               _TIM4_TimeBaseInit:
 189  0000 89            	pushw	x
 190       00000000      OFST:	set	0
 193                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 195  0001 9e            	ld	a,xh
 196  0002 4d            	tnz	a
 197  0003 2730          	jreq	L41
 198  0005 9e            	ld	a,xh
 199  0006 4a            	dec	a
 200  0007 272c          	jreq	L41
 201  0009 9e            	ld	a,xh
 202  000a a102          	cp	a,#2
 203  000c 2727          	jreq	L41
 204  000e 9e            	ld	a,xh
 205  000f a103          	cp	a,#3
 206  0011 2722          	jreq	L41
 207  0013 9e            	ld	a,xh
 208  0014 a104          	cp	a,#4
 209  0016 271d          	jreq	L41
 210  0018 9e            	ld	a,xh
 211  0019 a105          	cp	a,#5
 212  001b 2718          	jreq	L41
 213  001d 9e            	ld	a,xh
 214  001e a106          	cp	a,#6
 215  0020 2713          	jreq	L41
 216  0022 9e            	ld	a,xh
 217  0023 a107          	cp	a,#7
 218  0025 270e          	jreq	L41
 219  0027 ae0044        	ldw	x,#68
 220  002a 89            	pushw	x
 221  002b 5f            	clrw	x
 222  002c 89            	pushw	x
 223  002d ae0000        	ldw	x,#L76
 224  0030 cd0000        	call	_assert_failed
 226  0033 5b04          	addw	sp,#4
 227  0035               L41:
 228                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 230  0035 7b01          	ld	a,(OFST+1,sp)
 231  0037 c75347        	ld	21319,a
 232                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 234  003a 7b02          	ld	a,(OFST+2,sp)
 235  003c c75348        	ld	21320,a
 236                     ; 73 }
 239  003f 85            	popw	x
 240  0040 81            	ret	
 296                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 296                     ; 82 {
 297                     .text:	section	.text,new
 298  0000               _TIM4_Cmd:
 300  0000 88            	push	a
 301       00000000      OFST:	set	0
 304                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 306  0001 4d            	tnz	a
 307  0002 2711          	jreq	L62
 308  0004 4a            	dec	a
 309  0005 270e          	jreq	L62
 310  0007 ae0054        	ldw	x,#84
 311  000a 89            	pushw	x
 312  000b 5f            	clrw	x
 313  000c 89            	pushw	x
 314  000d ae0000        	ldw	x,#L76
 315  0010 cd0000        	call	_assert_failed
 317  0013 5b04          	addw	sp,#4
 318  0015               L62:
 319                     ; 87   if (NewState != DISABLE)
 321  0015 7b01          	ld	a,(OFST+1,sp)
 322  0017 2706          	jreq	L711
 323                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 325  0019 72105340      	bset	21312,#0
 327  001d 2004          	jra	L121
 328  001f               L711:
 329                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 331  001f 72115340      	bres	21312,#0
 332  0023               L121:
 333                     ; 95 }
 336  0023 84            	pop	a
 337  0024 81            	ret	
 396                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 396                     ; 108 {
 397                     .text:	section	.text,new
 398  0000               _TIM4_ITConfig:
 400  0000 89            	pushw	x
 401       00000000      OFST:	set	0
 404                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 406  0001 9e            	ld	a,xh
 407  0002 4a            	dec	a
 408  0003 2705          	jreq	L63
 409  0005 ae006e        	ldw	x,#110
 410  0008 ad22          	call	LC001
 411  000a               L63:
 412                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 414  000a 7b02          	ld	a,(OFST+2,sp)
 415  000c 2708          	jreq	L64
 416  000e 4a            	dec	a
 417  000f 2705          	jreq	L64
 418  0011 ae006f        	ldw	x,#111
 419  0014 ad16          	call	LC001
 420  0016               L64:
 421                     ; 113   if (NewState != DISABLE)
 423  0016 7b02          	ld	a,(OFST+2,sp)
 424  0018 2707          	jreq	L351
 425                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 427  001a c65343        	ld	a,21315
 428  001d 1a01          	or	a,(OFST+1,sp)
 430  001f 2006          	jra	L551
 431  0021               L351:
 432                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 434  0021 7b01          	ld	a,(OFST+1,sp)
 435  0023 43            	cpl	a
 436  0024 c45343        	and	a,21315
 437  0027               L551:
 438  0027 c75343        	ld	21315,a
 439                     ; 123 }
 442  002a 85            	popw	x
 443  002b 81            	ret	
 444  002c               LC001:
 445  002c 89            	pushw	x
 446  002d 5f            	clrw	x
 447  002e 89            	pushw	x
 448  002f ae0000        	ldw	x,#L76
 449  0032 cd0000        	call	_assert_failed
 451  0035 5b04          	addw	sp,#4
 452  0037 81            	ret	
 489                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 489                     ; 132 {
 490                     .text:	section	.text,new
 491  0000               _TIM4_UpdateDisableConfig:
 493  0000 88            	push	a
 494       00000000      OFST:	set	0
 497                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 499  0001 4d            	tnz	a
 500  0002 2711          	jreq	L06
 501  0004 4a            	dec	a
 502  0005 270e          	jreq	L06
 503  0007 ae0086        	ldw	x,#134
 504  000a 89            	pushw	x
 505  000b 5f            	clrw	x
 506  000c 89            	pushw	x
 507  000d ae0000        	ldw	x,#L76
 508  0010 cd0000        	call	_assert_failed
 510  0013 5b04          	addw	sp,#4
 511  0015               L06:
 512                     ; 137   if (NewState != DISABLE)
 514  0015 7b01          	ld	a,(OFST+1,sp)
 515  0017 2706          	jreq	L571
 516                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 518  0019 72125340      	bset	21312,#1
 520  001d 2004          	jra	L771
 521  001f               L571:
 522                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 524  001f 72135340      	bres	21312,#1
 525  0023               L771:
 526                     ; 145 }
 529  0023 84            	pop	a
 530  0024 81            	ret	
 589                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 589                     ; 156 {
 590                     .text:	section	.text,new
 591  0000               _TIM4_UpdateRequestConfig:
 593  0000 88            	push	a
 594       00000000      OFST:	set	0
 597                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 599  0001 4d            	tnz	a
 600  0002 2711          	jreq	L27
 601  0004 4a            	dec	a
 602  0005 270e          	jreq	L27
 603  0007 ae009e        	ldw	x,#158
 604  000a 89            	pushw	x
 605  000b 5f            	clrw	x
 606  000c 89            	pushw	x
 607  000d ae0000        	ldw	x,#L76
 608  0010 cd0000        	call	_assert_failed
 610  0013 5b04          	addw	sp,#4
 611  0015               L27:
 612                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 614  0015 7b01          	ld	a,(OFST+1,sp)
 615  0017 2706          	jreq	L722
 616                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 618  0019 72145340      	bset	21312,#2
 620  001d 2004          	jra	L132
 621  001f               L722:
 622                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 624  001f 72155340      	bres	21312,#2
 625  0023               L132:
 626                     ; 169 }
 629  0023 84            	pop	a
 630  0024 81            	ret	
 688                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 688                     ; 180 {
 689                     .text:	section	.text,new
 690  0000               _TIM4_SelectOnePulseMode:
 692  0000 88            	push	a
 693       00000000      OFST:	set	0
 696                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 698  0001 a101          	cp	a,#1
 699  0003 2711          	jreq	L401
 700  0005 4d            	tnz	a
 701  0006 270e          	jreq	L401
 702  0008 ae00b6        	ldw	x,#182
 703  000b 89            	pushw	x
 704  000c 5f            	clrw	x
 705  000d 89            	pushw	x
 706  000e ae0000        	ldw	x,#L76
 707  0011 cd0000        	call	_assert_failed
 709  0014 5b04          	addw	sp,#4
 710  0016               L401:
 711                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 713  0016 7b01          	ld	a,(OFST+1,sp)
 714  0018 2706          	jreq	L162
 715                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 717  001a 72165340      	bset	21312,#3
 719  001e 2004          	jra	L362
 720  0020               L162:
 721                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 723  0020 72175340      	bres	21312,#3
 724  0024               L362:
 725                     ; 193 }
 728  0024 84            	pop	a
 729  0025 81            	ret	
 798                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 798                     ; 216 {
 799                     .text:	section	.text,new
 800  0000               _TIM4_PrescalerConfig:
 802  0000 89            	pushw	x
 803       00000000      OFST:	set	0
 806                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 808  0001 9f            	ld	a,xl
 809  0002 4d            	tnz	a
 810  0003 2709          	jreq	L611
 811  0005 9f            	ld	a,xl
 812  0006 4a            	dec	a
 813  0007 2705          	jreq	L611
 814  0009 ae00da        	ldw	x,#218
 815  000c ad31          	call	LC002
 816  000e               L611:
 817                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 819  000e 7b01          	ld	a,(OFST+1,sp)
 820  0010 2723          	jreq	L621
 821  0012 a101          	cp	a,#1
 822  0014 271f          	jreq	L621
 823  0016 a102          	cp	a,#2
 824  0018 271b          	jreq	L621
 825  001a a103          	cp	a,#3
 826  001c 2717          	jreq	L621
 827  001e a104          	cp	a,#4
 828  0020 2713          	jreq	L621
 829  0022 a105          	cp	a,#5
 830  0024 270f          	jreq	L621
 831  0026 a106          	cp	a,#6
 832  0028 270b          	jreq	L621
 833  002a a107          	cp	a,#7
 834  002c 2707          	jreq	L621
 835  002e ae00db        	ldw	x,#219
 836  0031 ad0c          	call	LC002
 837  0033 7b01          	ld	a,(OFST+1,sp)
 838  0035               L621:
 839                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 841  0035 c75347        	ld	21319,a
 842                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 844  0038 7b02          	ld	a,(OFST+2,sp)
 845  003a c75345        	ld	21317,a
 846                     ; 226 }
 849  003d 85            	popw	x
 850  003e 81            	ret	
 851  003f               LC002:
 852  003f 89            	pushw	x
 853  0040 5f            	clrw	x
 854  0041 89            	pushw	x
 855  0042 ae0000        	ldw	x,#L76
 856  0045 cd0000        	call	_assert_failed
 858  0048 5b04          	addw	sp,#4
 859  004a 81            	ret	
 896                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 896                     ; 235 {
 897                     .text:	section	.text,new
 898  0000               _TIM4_ARRPreloadConfig:
 900  0000 88            	push	a
 901       00000000      OFST:	set	0
 904                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 906  0001 4d            	tnz	a
 907  0002 2711          	jreq	L041
 908  0004 4a            	dec	a
 909  0005 270e          	jreq	L041
 910  0007 ae00ed        	ldw	x,#237
 911  000a 89            	pushw	x
 912  000b 5f            	clrw	x
 913  000c 89            	pushw	x
 914  000d ae0000        	ldw	x,#L76
 915  0010 cd0000        	call	_assert_failed
 917  0013 5b04          	addw	sp,#4
 918  0015               L041:
 919                     ; 240   if (NewState != DISABLE)
 921  0015 7b01          	ld	a,(OFST+1,sp)
 922  0017 2706          	jreq	L533
 923                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 925  0019 721e5340      	bset	21312,#7
 927  001d 2004          	jra	L733
 928  001f               L533:
 929                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 931  001f 721f5340      	bres	21312,#7
 932  0023               L733:
 933                     ; 248 }
 936  0023 84            	pop	a
 937  0024 81            	ret	
 987                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 987                     ; 258 {
 988                     .text:	section	.text,new
 989  0000               _TIM4_GenerateEvent:
 991  0000 88            	push	a
 992       00000000      OFST:	set	0
 995                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 997  0001 4a            	dec	a
 998  0002 270e          	jreq	L051
 999  0004 ae0104        	ldw	x,#260
1000  0007 89            	pushw	x
1001  0008 5f            	clrw	x
1002  0009 89            	pushw	x
1003  000a ae0000        	ldw	x,#L76
1004  000d cd0000        	call	_assert_failed
1006  0010 5b04          	addw	sp,#4
1007  0012               L051:
1008                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1010  0012 7b01          	ld	a,(OFST+1,sp)
1011  0014 c75345        	ld	21317,a
1012                     ; 264 }
1015  0017 84            	pop	a
1016  0018 81            	ret	
1050                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1050                     ; 273 {
1051                     .text:	section	.text,new
1052  0000               _TIM4_SetCounter:
1056                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1058  0000 c75346        	ld	21318,a
1059                     ; 276 }
1062  0003 81            	ret	
1096                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1096                     ; 285 {
1097                     .text:	section	.text,new
1098  0000               _TIM4_SetAutoreload:
1102                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1104  0000 c75348        	ld	21320,a
1105                     ; 288 }
1108  0003 81            	ret	
1131                     ; 295 uint8_t TIM4_GetCounter(void)
1131                     ; 296 {
1132                     .text:	section	.text,new
1133  0000               _TIM4_GetCounter:
1137                     ; 298   return (uint8_t)(TIM4->CNTR);
1139  0000 c65346        	ld	a,21318
1142  0003 81            	ret	
1166                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1166                     ; 307 {
1167                     .text:	section	.text,new
1168  0000               _TIM4_GetPrescaler:
1172                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1174  0000 c65347        	ld	a,21319
1177  0003 81            	ret	
1257                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1257                     ; 320 {
1258                     .text:	section	.text,new
1259  0000               _TIM4_GetFlagStatus:
1261  0000 88            	push	a
1262  0001 88            	push	a
1263       00000001      OFST:	set	1
1266                     ; 321   FlagStatus bitstatus = RESET;
1268                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1270  0002 4a            	dec	a
1271  0003 270e          	jreq	L071
1272  0005 ae0144        	ldw	x,#324
1273  0008 89            	pushw	x
1274  0009 5f            	clrw	x
1275  000a 89            	pushw	x
1276  000b ae0000        	ldw	x,#L76
1277  000e cd0000        	call	_assert_failed
1279  0011 5b04          	addw	sp,#4
1280  0013               L071:
1281                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1283  0013 c65344        	ld	a,21316
1284  0016 1502          	bcp	a,(OFST+1,sp)
1285  0018 2704          	jreq	L105
1286                     ; 328     bitstatus = SET;
1288  001a a601          	ld	a,#1
1290  001c 2001          	jra	L305
1291  001e               L105:
1292                     ; 332     bitstatus = RESET;
1294  001e 4f            	clr	a
1295  001f               L305:
1296                     ; 334   return ((FlagStatus)bitstatus);
1300  001f 85            	popw	x
1301  0020 81            	ret	
1337                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1337                     ; 345 {
1338                     .text:	section	.text,new
1339  0000               _TIM4_ClearFlag:
1341  0000 88            	push	a
1342       00000000      OFST:	set	0
1345                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1347  0001 4a            	dec	a
1348  0002 270e          	jreq	L002
1349  0004 ae015b        	ldw	x,#347
1350  0007 89            	pushw	x
1351  0008 5f            	clrw	x
1352  0009 89            	pushw	x
1353  000a ae0000        	ldw	x,#L76
1354  000d cd0000        	call	_assert_failed
1356  0010 5b04          	addw	sp,#4
1357  0012               L002:
1358                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1360  0012 7b01          	ld	a,(OFST+1,sp)
1361  0014 43            	cpl	a
1362  0015 c75344        	ld	21316,a
1363                     ; 351 }
1366  0018 84            	pop	a
1367  0019 81            	ret	
1432                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1432                     ; 361 {
1433                     .text:	section	.text,new
1434  0000               _TIM4_GetITStatus:
1436  0000 88            	push	a
1437  0001 89            	pushw	x
1438       00000002      OFST:	set	2
1441                     ; 362   ITStatus bitstatus = RESET;
1443                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1447                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1449  0002 4a            	dec	a
1450  0003 270e          	jreq	L012
1451  0005 ae016f        	ldw	x,#367
1452  0008 89            	pushw	x
1453  0009 5f            	clrw	x
1454  000a 89            	pushw	x
1455  000b ae0000        	ldw	x,#L76
1456  000e cd0000        	call	_assert_failed
1458  0011 5b04          	addw	sp,#4
1459  0013               L012:
1460                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1462  0013 c65344        	ld	a,21316
1463  0016 1403          	and	a,(OFST+1,sp)
1464  0018 6b01          	ld	(OFST-1,sp),a
1465                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1467  001a c65343        	ld	a,21315
1468  001d 1403          	and	a,(OFST+1,sp)
1469  001f 6b02          	ld	(OFST+0,sp),a
1470                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1472  0021 7b01          	ld	a,(OFST-1,sp)
1473  0023 2708          	jreq	L555
1475  0025 7b02          	ld	a,(OFST+0,sp)
1476  0027 2704          	jreq	L555
1477                     ; 375     bitstatus = (ITStatus)SET;
1479  0029 a601          	ld	a,#1
1481  002b 2001          	jra	L755
1482  002d               L555:
1483                     ; 379     bitstatus = (ITStatus)RESET;
1485  002d 4f            	clr	a
1486  002e               L755:
1487                     ; 381   return ((ITStatus)bitstatus);
1491  002e 5b03          	addw	sp,#3
1492  0030 81            	ret	
1529                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1529                     ; 392 {
1530                     .text:	section	.text,new
1531  0000               _TIM4_ClearITPendingBit:
1533  0000 88            	push	a
1534       00000000      OFST:	set	0
1537                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1539  0001 4a            	dec	a
1540  0002 270e          	jreq	L022
1541  0004 ae018a        	ldw	x,#394
1542  0007 89            	pushw	x
1543  0008 5f            	clrw	x
1544  0009 89            	pushw	x
1545  000a ae0000        	ldw	x,#L76
1546  000d cd0000        	call	_assert_failed
1548  0010 5b04          	addw	sp,#4
1549  0012               L022:
1550                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1552  0012 7b01          	ld	a,(OFST+1,sp)
1553  0014 43            	cpl	a
1554  0015 c75344        	ld	21316,a
1555                     ; 398 }
1558  0018 84            	pop	a
1559  0019 81            	ret	
1572                     	xdef	_TIM4_ClearITPendingBit
1573                     	xdef	_TIM4_GetITStatus
1574                     	xdef	_TIM4_ClearFlag
1575                     	xdef	_TIM4_GetFlagStatus
1576                     	xdef	_TIM4_GetPrescaler
1577                     	xdef	_TIM4_GetCounter
1578                     	xdef	_TIM4_SetAutoreload
1579                     	xdef	_TIM4_SetCounter
1580                     	xdef	_TIM4_GenerateEvent
1581                     	xdef	_TIM4_ARRPreloadConfig
1582                     	xdef	_TIM4_PrescalerConfig
1583                     	xdef	_TIM4_SelectOnePulseMode
1584                     	xdef	_TIM4_UpdateRequestConfig
1585                     	xdef	_TIM4_UpdateDisableConfig
1586                     	xdef	_TIM4_ITConfig
1587                     	xdef	_TIM4_Cmd
1588                     	xdef	_TIM4_TimeBaseInit
1589                     	xdef	_TIM4_DeInit
1590                     	xref	_assert_failed
1591                     .const:	section	.text
1592  0000               L76:
1593  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1594  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1595  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1596  0036 5f74696d342e  	dc.b	"_tim4.c",0
1616                     	end
