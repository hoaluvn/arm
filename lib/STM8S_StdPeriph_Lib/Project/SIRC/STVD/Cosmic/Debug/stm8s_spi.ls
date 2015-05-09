   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 50 void SPI_DeInit(void)
  50                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               _SPI_DeInit:
  57                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  59  0000 725f5200      	clr	20992
  60                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  62  0004 725f5201      	clr	20993
  63                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  65  0008 725f5202      	clr	20994
  66                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  68  000c 35025203      	mov	20995,#2
  69                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  71  0010 35075205      	mov	20997,#7
  72                     ; 57 }
  75  0014 81            	ret	
 392                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 392                     ; 79 {
 393                     .text:	section	.text,new
 394  0000               _SPI_Init:
 396  0000 89            	pushw	x
 397  0001 88            	push	a
 398       00000001      OFST:	set	1
 401                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 403  0002 9e            	ld	a,xh
 404  0003 4d            	tnz	a
 405  0004 270b          	jreq	L41
 406  0006 9e            	ld	a,xh
 407  0007 a180          	cp	a,#128
 408  0009 2706          	jreq	L41
 409  000b ae0051        	ldw	x,#81
 410  000e cd00c2        	call	LC001
 411  0011               L41:
 412                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 414  0011 7b03          	ld	a,(OFST+2,sp)
 415  0013 2722          	jreq	L42
 416  0015 a108          	cp	a,#8
 417  0017 271e          	jreq	L42
 418  0019 a110          	cp	a,#16
 419  001b 271a          	jreq	L42
 420  001d a118          	cp	a,#24
 421  001f 2716          	jreq	L42
 422  0021 a120          	cp	a,#32
 423  0023 2712          	jreq	L42
 424  0025 a128          	cp	a,#40
 425  0027 270e          	jreq	L42
 426  0029 a130          	cp	a,#48
 427  002b 270a          	jreq	L42
 428  002d a138          	cp	a,#56
 429  002f 2706          	jreq	L42
 430  0031 ae0052        	ldw	x,#82
 431  0034 cd00c2        	call	LC001
 432  0037               L42:
 433                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 435  0037 7b06          	ld	a,(OFST+5,sp)
 436  0039 a104          	cp	a,#4
 437  003b 2709          	jreq	L43
 438  003d 7b06          	ld	a,(OFST+5,sp)
 439  003f 2705          	jreq	L43
 440  0041 ae0053        	ldw	x,#83
 441  0044 ad7c          	call	LC001
 442  0046               L43:
 443                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 445  0046 7b07          	ld	a,(OFST+6,sp)
 446  0048 2709          	jreq	L44
 447  004a a102          	cp	a,#2
 448  004c 2705          	jreq	L44
 449  004e ae0054        	ldw	x,#84
 450  0051 ad6f          	call	LC001
 451  0053               L44:
 452                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 454  0053 7b08          	ld	a,(OFST+7,sp)
 455  0055 2708          	jreq	L45
 456  0057 4a            	dec	a
 457  0058 2705          	jreq	L45
 458  005a ae0055        	ldw	x,#85
 459  005d ad63          	call	LC001
 460  005f               L45:
 461                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 463  005f 7b09          	ld	a,(OFST+8,sp)
 464  0061 2711          	jreq	L46
 465  0063 a104          	cp	a,#4
 466  0065 270d          	jreq	L46
 467  0067 a180          	cp	a,#128
 468  0069 2709          	jreq	L46
 469  006b a1c0          	cp	a,#192
 470  006d 2705          	jreq	L46
 471  006f ae0056        	ldw	x,#86
 472  0072 ad4e          	call	LC001
 473  0074               L46:
 474                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 476  0074 7b0a          	ld	a,(OFST+9,sp)
 477  0076 a102          	cp	a,#2
 478  0078 2709          	jreq	L47
 479  007a 7b0a          	ld	a,(OFST+9,sp)
 480  007c 2705          	jreq	L47
 481  007e ae0057        	ldw	x,#87
 482  0081 ad3f          	call	LC001
 483  0083               L47:
 484                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 486  0083 7b0b          	ld	a,(OFST+10,sp)
 487  0085 2605          	jrne	L201
 488  0087 ae0058        	ldw	x,#88
 489  008a ad36          	call	LC001
 490  008c               L201:
 491                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 491                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 493  008c 7b07          	ld	a,(OFST+6,sp)
 494  008e 1a08          	or	a,(OFST+7,sp)
 495  0090 6b01          	ld	(OFST+0,sp),a
 496  0092 7b02          	ld	a,(OFST+1,sp)
 497  0094 1a03          	or	a,(OFST+2,sp)
 498  0096 1a01          	or	a,(OFST+0,sp)
 499  0098 c75200        	ld	20992,a
 500                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 502  009b 7b09          	ld	a,(OFST+8,sp)
 503  009d 1a0a          	or	a,(OFST+9,sp)
 504  009f c75201        	ld	20993,a
 505                     ; 97   if (Mode == SPI_MODE_MASTER)
 507  00a2 7b06          	ld	a,(OFST+5,sp)
 508  00a4 a104          	cp	a,#4
 509  00a6 2606          	jrne	L502
 510                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 512  00a8 72105201      	bset	20993,#0
 514  00ac 2004          	jra	L702
 515  00ae               L502:
 516                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 518  00ae 72115201      	bres	20993,#0
 519  00b2               L702:
 520                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 522  00b2 c65200        	ld	a,20992
 523  00b5 1a06          	or	a,(OFST+5,sp)
 524  00b7 c75200        	ld	20992,a
 525                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 527  00ba 7b0b          	ld	a,(OFST+10,sp)
 528  00bc c75205        	ld	20997,a
 529                     ; 111 }
 532  00bf 5b03          	addw	sp,#3
 533  00c1 81            	ret	
 534  00c2               LC001:
 535  00c2 89            	pushw	x
 536  00c3 5f            	clrw	x
 537  00c4 89            	pushw	x
 538  00c5 ae0000        	ldw	x,#L302
 539  00c8 cd0000        	call	_assert_failed
 541  00cb 5b04          	addw	sp,#4
 542  00cd 81            	ret	
 598                     ; 119 void SPI_Cmd(FunctionalState NewState)
 598                     ; 120 {
 599                     .text:	section	.text,new
 600  0000               _SPI_Cmd:
 602  0000 88            	push	a
 603       00000000      OFST:	set	0
 606                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 608  0001 4d            	tnz	a
 609  0002 2711          	jreq	L411
 610  0004 4a            	dec	a
 611  0005 270e          	jreq	L411
 612  0007 ae007a        	ldw	x,#122
 613  000a 89            	pushw	x
 614  000b 5f            	clrw	x
 615  000c 89            	pushw	x
 616  000d ae0000        	ldw	x,#L302
 617  0010 cd0000        	call	_assert_failed
 619  0013 5b04          	addw	sp,#4
 620  0015               L411:
 621                     ; 124   if (NewState != DISABLE)
 623  0015 7b01          	ld	a,(OFST+1,sp)
 624  0017 2706          	jreq	L732
 625                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 627  0019 721c5200      	bset	20992,#6
 629  001d 2004          	jra	L142
 630  001f               L732:
 631                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 633  001f 721d5200      	bres	20992,#6
 634  0023               L142:
 635                     ; 132 }
 638  0023 84            	pop	a
 639  0024 81            	ret	
 749                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 749                     ; 142 {
 750                     .text:	section	.text,new
 751  0000               _SPI_ITConfig:
 753  0000 89            	pushw	x
 754  0001 88            	push	a
 755       00000001      OFST:	set	1
 758                     ; 143   uint8_t itpos = 0;
 760                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 762  0002 9e            	ld	a,xh
 763  0003 a117          	cp	a,#23
 764  0005 2714          	jreq	L621
 765  0007 9e            	ld	a,xh
 766  0008 a106          	cp	a,#6
 767  000a 270f          	jreq	L621
 768  000c 9e            	ld	a,xh
 769  000d a105          	cp	a,#5
 770  000f 270a          	jreq	L621
 771  0011 9e            	ld	a,xh
 772  0012 a134          	cp	a,#52
 773  0014 2705          	jreq	L621
 774  0016 ae0091        	ldw	x,#145
 775  0019 ad32          	call	LC002
 776  001b               L621:
 777                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 779  001b 7b03          	ld	a,(OFST+2,sp)
 780  001d 2708          	jreq	L631
 781  001f 4a            	dec	a
 782  0020 2705          	jreq	L631
 783  0022 ae0092        	ldw	x,#146
 784  0025 ad26          	call	LC002
 785  0027               L631:
 786                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 788  0027 7b02          	ld	a,(OFST+1,sp)
 789  0029 a40f          	and	a,#15
 790  002b 5f            	clrw	x
 791  002c 97            	ld	xl,a
 792  002d a601          	ld	a,#1
 793  002f 5d            	tnzw	x
 794  0030 2704          	jreq	L241
 795  0032               L441:
 796  0032 48            	sll	a
 797  0033 5a            	decw	x
 798  0034 26fc          	jrne	L441
 799  0036               L241:
 800  0036 6b01          	ld	(OFST+0,sp),a
 801                     ; 151   if (NewState != DISABLE)
 803  0038 0d03          	tnz	(OFST+2,sp)
 804  003a 2707          	jreq	L313
 805                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 807  003c c65202        	ld	a,20994
 808  003f 1a01          	or	a,(OFST+0,sp)
 810  0041 2004          	jra	L513
 811  0043               L313:
 812                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 814  0043 43            	cpl	a
 815  0044 c45202        	and	a,20994
 816  0047               L513:
 817  0047 c75202        	ld	20994,a
 818                     ; 159 }
 821  004a 5b03          	addw	sp,#3
 822  004c 81            	ret	
 823  004d               LC002:
 824  004d 89            	pushw	x
 825  004e 5f            	clrw	x
 826  004f 89            	pushw	x
 827  0050 ae0000        	ldw	x,#L302
 828  0053 cd0000        	call	_assert_failed
 830  0056 5b04          	addw	sp,#4
 831  0058 81            	ret	
 865                     ; 166 void SPI_SendData(uint8_t Data)
 865                     ; 167 {
 866                     .text:	section	.text,new
 867  0000               _SPI_SendData:
 871                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 873  0000 c75204        	ld	20996,a
 874                     ; 169 }
 877  0003 81            	ret	
 900                     ; 176 uint8_t SPI_ReceiveData(void)
 900                     ; 177 {
 901                     .text:	section	.text,new
 902  0000               _SPI_ReceiveData:
 906                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 908  0000 c65204        	ld	a,20996
 911  0003 81            	ret	
 948                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 948                     ; 188 {
 949                     .text:	section	.text,new
 950  0000               _SPI_NSSInternalSoftwareCmd:
 952  0000 88            	push	a
 953       00000000      OFST:	set	0
 956                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 958  0001 4d            	tnz	a
 959  0002 2711          	jreq	L061
 960  0004 4a            	dec	a
 961  0005 270e          	jreq	L061
 962  0007 ae00be        	ldw	x,#190
 963  000a 89            	pushw	x
 964  000b 5f            	clrw	x
 965  000c 89            	pushw	x
 966  000d ae0000        	ldw	x,#L302
 967  0010 cd0000        	call	_assert_failed
 969  0013 5b04          	addw	sp,#4
 970  0015               L061:
 971                     ; 192   if (NewState != DISABLE)
 973  0015 7b01          	ld	a,(OFST+1,sp)
 974  0017 2706          	jreq	L363
 975                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 977  0019 72105201      	bset	20993,#0
 979  001d 2004          	jra	L563
 980  001f               L363:
 981                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 983  001f 72115201      	bres	20993,#0
 984  0023               L563:
 985                     ; 200 }
 988  0023 84            	pop	a
 989  0024 81            	ret	
1012                     ; 207 void SPI_TransmitCRC(void)
1012                     ; 208 {
1013                     .text:	section	.text,new
1014  0000               _SPI_TransmitCRC:
1018                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1020  0000 72185201      	bset	20993,#4
1021                     ; 210 }
1024  0004 81            	ret	
1061                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1061                     ; 219 {
1062                     .text:	section	.text,new
1063  0000               _SPI_CalculateCRCCmd:
1065  0000 88            	push	a
1066       00000000      OFST:	set	0
1069                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1071  0001 4d            	tnz	a
1072  0002 2711          	jreq	L471
1073  0004 4a            	dec	a
1074  0005 270e          	jreq	L471
1075  0007 ae00dd        	ldw	x,#221
1076  000a 89            	pushw	x
1077  000b 5f            	clrw	x
1078  000c 89            	pushw	x
1079  000d ae0000        	ldw	x,#L302
1080  0010 cd0000        	call	_assert_failed
1082  0013 5b04          	addw	sp,#4
1083  0015               L471:
1084                     ; 223   if (NewState != DISABLE)
1086  0015 7b01          	ld	a,(OFST+1,sp)
1087  0017 2706          	jreq	L514
1088                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1090  0019 721a5201      	bset	20993,#5
1092  001d 2004          	jra	L714
1093  001f               L514:
1094                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1096  001f 721b5201      	bres	20993,#5
1097  0023               L714:
1098                     ; 231 }
1101  0023 84            	pop	a
1102  0024 81            	ret	
1167                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1167                     ; 239 {
1168                     .text:	section	.text,new
1169  0000               _SPI_GetCRC:
1171  0000 88            	push	a
1172  0001 88            	push	a
1173       00000001      OFST:	set	1
1176                     ; 240   uint8_t crcreg = 0;
1178                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1180  0002 a101          	cp	a,#1
1181  0004 2711          	jreq	L602
1182  0006 4d            	tnz	a
1183  0007 270e          	jreq	L602
1184  0009 ae00f3        	ldw	x,#243
1185  000c 89            	pushw	x
1186  000d 5f            	clrw	x
1187  000e 89            	pushw	x
1188  000f ae0000        	ldw	x,#L302
1189  0012 cd0000        	call	_assert_failed
1191  0015 5b04          	addw	sp,#4
1192  0017               L602:
1193                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1195  0017 7b02          	ld	a,(OFST+1,sp)
1196  0019 2705          	jreq	L354
1197                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1199  001b c65207        	ld	a,20999
1201  001e 2003          	jra	L554
1202  0020               L354:
1203                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1205  0020 c65206        	ld	a,20998
1206  0023               L554:
1207                     ; 255   return crcreg;
1211  0023 85            	popw	x
1212  0024 81            	ret	
1237                     ; 263 void SPI_ResetCRC(void)
1237                     ; 264 {
1238                     .text:	section	.text,new
1239  0000               _SPI_ResetCRC:
1243                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1245  0000 a601          	ld	a,#1
1246  0002 cd0000        	call	_SPI_CalculateCRCCmd
1248                     ; 270   SPI_Cmd(ENABLE);
1250  0005 a601          	ld	a,#1
1252                     ; 271 }
1255  0007 cc0000        	jp	_SPI_Cmd
1279                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1279                     ; 279 {
1280                     .text:	section	.text,new
1281  0000               _SPI_GetCRCPolynomial:
1285                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1287  0000 c65205        	ld	a,20997
1290  0003 81            	ret	
1347                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1347                     ; 289 {
1348                     .text:	section	.text,new
1349  0000               _SPI_BiDirectionalLineConfig:
1351  0000 88            	push	a
1352       00000000      OFST:	set	0
1355                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1357  0001 4d            	tnz	a
1358  0002 2711          	jreq	L032
1359  0004 4a            	dec	a
1360  0005 270e          	jreq	L032
1361  0007 ae0123        	ldw	x,#291
1362  000a 89            	pushw	x
1363  000b 5f            	clrw	x
1364  000c 89            	pushw	x
1365  000d ae0000        	ldw	x,#L302
1366  0010 cd0000        	call	_assert_failed
1368  0013 5b04          	addw	sp,#4
1369  0015               L032:
1370                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1372  0015 7b01          	ld	a,(OFST+1,sp)
1373  0017 2706          	jreq	L525
1374                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1376  0019 721c5201      	bset	20993,#6
1378  001d 2004          	jra	L725
1379  001f               L525:
1380                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1382  001f 721d5201      	bres	20993,#6
1383  0023               L725:
1384                     ; 301 }
1387  0023 84            	pop	a
1388  0024 81            	ret	
1510                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1510                     ; 312 {
1511                     .text:	section	.text,new
1512  0000               _SPI_GetFlagStatus:
1514  0000 88            	push	a
1515  0001 88            	push	a
1516       00000001      OFST:	set	1
1519                     ; 313   FlagStatus status = RESET;
1521                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1523  0002 a140          	cp	a,#64
1524  0004 2726          	jreq	L242
1525  0006 a120          	cp	a,#32
1526  0008 2722          	jreq	L242
1527  000a a110          	cp	a,#16
1528  000c 271e          	jreq	L242
1529  000e a108          	cp	a,#8
1530  0010 271a          	jreq	L242
1531  0012 a102          	cp	a,#2
1532  0014 2716          	jreq	L242
1533  0016 a101          	cp	a,#1
1534  0018 2712          	jreq	L242
1535  001a a180          	cp	a,#128
1536  001c 270e          	jreq	L242
1537  001e ae013b        	ldw	x,#315
1538  0021 89            	pushw	x
1539  0022 5f            	clrw	x
1540  0023 89            	pushw	x
1541  0024 ae0000        	ldw	x,#L302
1542  0027 cd0000        	call	_assert_failed
1544  002a 5b04          	addw	sp,#4
1545  002c               L242:
1546                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1548  002c c65203        	ld	a,20995
1549  002f 1502          	bcp	a,(OFST+1,sp)
1550  0031 2704          	jreq	L506
1551                     ; 320     status = SET; /* SPI_FLAG is set */
1553  0033 a601          	ld	a,#1
1555  0035 2001          	jra	L706
1556  0037               L506:
1557                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1559  0037 4f            	clr	a
1560  0038               L706:
1561                     ; 328   return status;
1565  0038 85            	popw	x
1566  0039 81            	ret	
1602                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1602                     ; 347 {
1603                     .text:	section	.text,new
1604  0000               _SPI_ClearFlag:
1606  0000 88            	push	a
1607       00000000      OFST:	set	0
1610                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1612  0001 a110          	cp	a,#16
1613  0003 2712          	jreq	L452
1614  0005 a108          	cp	a,#8
1615  0007 270e          	jreq	L452
1616  0009 ae015c        	ldw	x,#348
1617  000c 89            	pushw	x
1618  000d 5f            	clrw	x
1619  000e 89            	pushw	x
1620  000f ae0000        	ldw	x,#L302
1621  0012 cd0000        	call	_assert_failed
1623  0015 5b04          	addw	sp,#4
1624  0017               L452:
1625                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1627  0017 7b01          	ld	a,(OFST+1,sp)
1628  0019 43            	cpl	a
1629  001a c75203        	ld	20995,a
1630                     ; 351 }
1633  001d 84            	pop	a
1634  001e 81            	ret	
1717                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1717                     ; 367 {
1718                     .text:	section	.text,new
1719  0000               _SPI_GetITStatus:
1721  0000 88            	push	a
1722  0001 89            	pushw	x
1723       00000002      OFST:	set	2
1726                     ; 368   ITStatus pendingbitstatus = RESET;
1728                     ; 369   uint8_t itpos = 0;
1730                     ; 370   uint8_t itmask1 = 0;
1732                     ; 371   uint8_t itmask2 = 0;
1734                     ; 372   uint8_t enablestatus = 0;
1736                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1738  0002 a165          	cp	a,#101
1739  0004 2722          	jreq	L662
1740  0006 a155          	cp	a,#85
1741  0008 271e          	jreq	L662
1742  000a a145          	cp	a,#69
1743  000c 271a          	jreq	L662
1744  000e a134          	cp	a,#52
1745  0010 2716          	jreq	L662
1746  0012 a117          	cp	a,#23
1747  0014 2712          	jreq	L662
1748  0016 a106          	cp	a,#6
1749  0018 270e          	jreq	L662
1750  001a ae0175        	ldw	x,#373
1751  001d 89            	pushw	x
1752  001e 5f            	clrw	x
1753  001f 89            	pushw	x
1754  0020 ae0000        	ldw	x,#L302
1755  0023 cd0000        	call	_assert_failed
1757  0026 5b04          	addw	sp,#4
1758  0028               L662:
1759                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1761  0028 7b03          	ld	a,(OFST+1,sp)
1762  002a a40f          	and	a,#15
1763  002c 5f            	clrw	x
1764  002d 97            	ld	xl,a
1765  002e a601          	ld	a,#1
1766  0030 5d            	tnzw	x
1767  0031 2704          	jreq	L272
1768  0033               L472:
1769  0033 48            	sll	a
1770  0034 5a            	decw	x
1771  0035 26fc          	jrne	L472
1772  0037               L272:
1773  0037 6b01          	ld	(OFST-1,sp),a
1774                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1776  0039 7b03          	ld	a,(OFST+1,sp)
1777  003b 4e            	swap	a
1778  003c a40f          	and	a,#15
1779  003e 6b02          	ld	(OFST+0,sp),a
1780                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1782  0040 5f            	clrw	x
1783  0041 97            	ld	xl,a
1784  0042 a601          	ld	a,#1
1785  0044 5d            	tnzw	x
1786  0045 2704          	jreq	L672
1787  0047               L003:
1788  0047 48            	sll	a
1789  0048 5a            	decw	x
1790  0049 26fc          	jrne	L003
1791  004b               L672:
1792                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1794  004b c45203        	and	a,20995
1795  004e 6b02          	ld	(OFST+0,sp),a
1796                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1798  0050 c65202        	ld	a,20994
1799  0053 1501          	bcp	a,(OFST-1,sp)
1800  0055 2708          	jreq	L176
1802  0057 7b02          	ld	a,(OFST+0,sp)
1803  0059 2704          	jreq	L176
1804                     ; 387     pendingbitstatus = SET;
1806  005b a601          	ld	a,#1
1808  005d 2001          	jra	L376
1809  005f               L176:
1810                     ; 392     pendingbitstatus = RESET;
1812  005f 4f            	clr	a
1813  0060               L376:
1814                     ; 395   return  pendingbitstatus;
1818  0060 5b03          	addw	sp,#3
1819  0062 81            	ret	
1865                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1865                     ; 413 {
1866                     .text:	section	.text,new
1867  0000               _SPI_ClearITPendingBit:
1869  0000 88            	push	a
1870  0001 88            	push	a
1871       00000001      OFST:	set	1
1874                     ; 414   uint8_t itpos = 0;
1876                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1878  0002 a145          	cp	a,#69
1879  0004 2712          	jreq	L013
1880  0006 a134          	cp	a,#52
1881  0008 270e          	jreq	L013
1882  000a ae019f        	ldw	x,#415
1883  000d 89            	pushw	x
1884  000e 5f            	clrw	x
1885  000f 89            	pushw	x
1886  0010 ae0000        	ldw	x,#L302
1887  0013 cd0000        	call	_assert_failed
1889  0016 5b04          	addw	sp,#4
1890  0018               L013:
1891                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1893  0018 7b02          	ld	a,(OFST+1,sp)
1894  001a 4e            	swap	a
1895  001b a40f          	and	a,#15
1896  001d 5f            	clrw	x
1897  001e 97            	ld	xl,a
1898  001f a601          	ld	a,#1
1899  0021 5d            	tnzw	x
1900  0022 2704          	jreq	L413
1901  0024               L613:
1902  0024 48            	sll	a
1903  0025 5a            	decw	x
1904  0026 26fc          	jrne	L613
1905  0028               L413:
1906                     ; 422   SPI->SR = (uint8_t)(~itpos);
1908  0028 43            	cpl	a
1909  0029 c75203        	ld	20995,a
1910                     ; 424 }
1913  002c 85            	popw	x
1914  002d 81            	ret	
1927                     	xdef	_SPI_ClearITPendingBit
1928                     	xdef	_SPI_GetITStatus
1929                     	xdef	_SPI_ClearFlag
1930                     	xdef	_SPI_GetFlagStatus
1931                     	xdef	_SPI_BiDirectionalLineConfig
1932                     	xdef	_SPI_GetCRCPolynomial
1933                     	xdef	_SPI_ResetCRC
1934                     	xdef	_SPI_GetCRC
1935                     	xdef	_SPI_CalculateCRCCmd
1936                     	xdef	_SPI_TransmitCRC
1937                     	xdef	_SPI_NSSInternalSoftwareCmd
1938                     	xdef	_SPI_ReceiveData
1939                     	xdef	_SPI_SendData
1940                     	xdef	_SPI_ITConfig
1941                     	xdef	_SPI_Cmd
1942                     	xdef	_SPI_Init
1943                     	xdef	_SPI_DeInit
1944                     	xref	_assert_failed
1945                     .const:	section	.text
1946  0000               L302:
1947  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1948  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1949  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1950  0036 5f7370692e63  	dc.b	"_spi.c",0
1970                     	end
