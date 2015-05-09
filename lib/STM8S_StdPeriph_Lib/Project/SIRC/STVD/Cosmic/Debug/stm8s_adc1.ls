   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  50                     ; 52 void ADC1_DeInit(void)
  50                     ; 53 {
  52                     .text:	section	.text,new
  53  0000               _ADC1_DeInit:
  57                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  59  0000 725f5400      	clr	21504
  60                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  62  0004 725f5401      	clr	21505
  63                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  65  0008 725f5402      	clr	21506
  66                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  68  000c 725f5403      	clr	21507
  69                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  71  0010 725f5406      	clr	21510
  72                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  74  0014 725f5407      	clr	21511
  75                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  77  0018 35ff5408      	mov	21512,#255
  78                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  80  001c 35035409      	mov	21513,#3
  81                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  83  0020 725f540a      	clr	21514
  84                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  86  0024 725f540b      	clr	21515
  87                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  89  0028 725f540e      	clr	21518
  90                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  92  002c 725f540f      	clr	21519
  93                     ; 66 }
  96  0030 81            	ret	
 548                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 548                     ; 89 {
 549                     .text:	section	.text,new
 550  0000               _ADC1_Init:
 552  0000 89            	pushw	x
 553       00000000      OFST:	set	0
 556                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 558  0001 9e            	ld	a,xh
 559  0002 4d            	tnz	a
 560  0003 270a          	jreq	L41
 561  0005 9e            	ld	a,xh
 562  0006 4a            	dec	a
 563  0007 2706          	jreq	L41
 564  0009 ae005b        	ldw	x,#91
 565  000c cd00f9        	call	LC001
 566  000f               L41:
 567                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 569  000f 7b02          	ld	a,(OFST+2,sp)
 570  0011 272e          	jreq	L42
 571  0013 a101          	cp	a,#1
 572  0015 272a          	jreq	L42
 573  0017 a102          	cp	a,#2
 574  0019 2726          	jreq	L42
 575  001b a103          	cp	a,#3
 576  001d 2722          	jreq	L42
 577  001f a104          	cp	a,#4
 578  0021 271e          	jreq	L42
 579  0023 a105          	cp	a,#5
 580  0025 271a          	jreq	L42
 581  0027 a106          	cp	a,#6
 582  0029 2716          	jreq	L42
 583  002b a107          	cp	a,#7
 584  002d 2712          	jreq	L42
 585  002f a108          	cp	a,#8
 586  0031 270e          	jreq	L42
 587  0033 a10c          	cp	a,#12
 588  0035 270a          	jreq	L42
 589  0037 a109          	cp	a,#9
 590  0039 2706          	jreq	L42
 591  003b ae005c        	ldw	x,#92
 592  003e cd00f9        	call	LC001
 593  0041               L42:
 594                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 596  0041 7b05          	ld	a,(OFST+5,sp)
 597  0043 2722          	jreq	L43
 598  0045 a110          	cp	a,#16
 599  0047 271e          	jreq	L43
 600  0049 a120          	cp	a,#32
 601  004b 271a          	jreq	L43
 602  004d a130          	cp	a,#48
 603  004f 2716          	jreq	L43
 604  0051 a140          	cp	a,#64
 605  0053 2712          	jreq	L43
 606  0055 a150          	cp	a,#80
 607  0057 270e          	jreq	L43
 608  0059 a160          	cp	a,#96
 609  005b 270a          	jreq	L43
 610  005d a170          	cp	a,#112
 611  005f 2706          	jreq	L43
 612  0061 ae005d        	ldw	x,#93
 613  0064 cd00f9        	call	LC001
 614  0067               L43:
 615                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 617  0067 7b06          	ld	a,(OFST+6,sp)
 618  0069 270a          	jreq	L44
 619  006b a110          	cp	a,#16
 620  006d 2706          	jreq	L44
 621  006f ae005e        	ldw	x,#94
 622  0072 cd00f9        	call	LC001
 623  0075               L44:
 624                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 626  0075 7b07          	ld	a,(OFST+7,sp)
 627  0077 2708          	jreq	L45
 628  0079 4a            	dec	a
 629  007a 2705          	jreq	L45
 630  007c ae005f        	ldw	x,#95
 631  007f ad78          	call	LC001
 632  0081               L45:
 633                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 635  0081 7b08          	ld	a,(OFST+8,sp)
 636  0083 2709          	jreq	L46
 637  0085 a108          	cp	a,#8
 638  0087 2705          	jreq	L46
 639  0089 ae0060        	ldw	x,#96
 640  008c ad6b          	call	LC001
 641  008e               L46:
 642                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 644  008e 7b09          	ld	a,(OFST+9,sp)
 645  0090 2731          	jreq	L47
 646  0092 a101          	cp	a,#1
 647  0094 272d          	jreq	L47
 648  0096 a102          	cp	a,#2
 649  0098 2729          	jreq	L47
 650  009a a103          	cp	a,#3
 651  009c 2725          	jreq	L47
 652  009e a104          	cp	a,#4
 653  00a0 2721          	jreq	L47
 654  00a2 a105          	cp	a,#5
 655  00a4 271d          	jreq	L47
 656  00a6 a106          	cp	a,#6
 657  00a8 2719          	jreq	L47
 658  00aa a107          	cp	a,#7
 659  00ac 2715          	jreq	L47
 660  00ae a108          	cp	a,#8
 661  00b0 2711          	jreq	L47
 662  00b2 a10c          	cp	a,#12
 663  00b4 270d          	jreq	L47
 664  00b6 a1ff          	cp	a,#255
 665  00b8 2709          	jreq	L47
 666  00ba a109          	cp	a,#9
 667  00bc 2705          	jreq	L47
 668  00be ae0061        	ldw	x,#97
 669  00c1 ad36          	call	LC001
 670  00c3               L47:
 671                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 673  00c3 7b0a          	ld	a,(OFST+10,sp)
 674  00c5 2708          	jreq	L401
 675  00c7 4a            	dec	a
 676  00c8 2705          	jreq	L401
 677  00ca ae0062        	ldw	x,#98
 678  00cd ad2a          	call	LC001
 679  00cf               L401:
 680                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 682  00cf 7b08          	ld	a,(OFST+8,sp)
 683  00d1 88            	push	a
 684  00d2 7b03          	ld	a,(OFST+3,sp)
 685  00d4 97            	ld	xl,a
 686  00d5 7b02          	ld	a,(OFST+2,sp)
 687  00d7 95            	ld	xh,a
 688  00d8 cd0000        	call	_ADC1_ConversionConfig
 690  00db 84            	pop	a
 691                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 693  00dc 7b05          	ld	a,(OFST+5,sp)
 694  00de cd0000        	call	_ADC1_PrescalerConfig
 696                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 698  00e1 7b07          	ld	a,(OFST+7,sp)
 699  00e3 97            	ld	xl,a
 700  00e4 7b06          	ld	a,(OFST+6,sp)
 701  00e6 95            	ld	xh,a
 702  00e7 cd0000        	call	_ADC1_ExternalTriggerConfig
 704                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 706  00ea 7b0a          	ld	a,(OFST+10,sp)
 707  00ec 97            	ld	xl,a
 708  00ed 7b09          	ld	a,(OFST+9,sp)
 709  00ef 95            	ld	xh,a
 710  00f0 cd0000        	call	_ADC1_SchmittTriggerConfig
 712                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 714  00f3 72105401      	bset	21505,#0
 715                     ; 119 }
 718  00f7 85            	popw	x
 719  00f8 81            	ret	
 720  00f9               LC001:
 721  00f9 89            	pushw	x
 722  00fa 5f            	clrw	x
 723  00fb 89            	pushw	x
 724  00fc ae0000        	ldw	x,#L542
 725  00ff cd0000        	call	_assert_failed
 727  0102 5b04          	addw	sp,#4
 728  0104 81            	ret	
 764                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 764                     ; 127 {
 765                     .text:	section	.text,new
 766  0000               _ADC1_Cmd:
 768  0000 88            	push	a
 769       00000000      OFST:	set	0
 772                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 774  0001 4d            	tnz	a
 775  0002 2711          	jreq	L621
 776  0004 4a            	dec	a
 777  0005 270e          	jreq	L621
 778  0007 ae0081        	ldw	x,#129
 779  000a 89            	pushw	x
 780  000b 5f            	clrw	x
 781  000c 89            	pushw	x
 782  000d ae0000        	ldw	x,#L542
 783  0010 cd0000        	call	_assert_failed
 785  0013 5b04          	addw	sp,#4
 786  0015               L621:
 787                     ; 131   if (NewState != DISABLE)
 789  0015 7b01          	ld	a,(OFST+1,sp)
 790  0017 2706          	jreq	L562
 791                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 793  0019 72105401      	bset	21505,#0
 795  001d 2004          	jra	L762
 796  001f               L562:
 797                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 799  001f 72115401      	bres	21505,#0
 800  0023               L762:
 801                     ; 139 }
 804  0023 84            	pop	a
 805  0024 81            	ret	
 841                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 841                     ; 147 {
 842                     .text:	section	.text,new
 843  0000               _ADC1_ScanModeCmd:
 845  0000 88            	push	a
 846       00000000      OFST:	set	0
 849                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 851  0001 4d            	tnz	a
 852  0002 2711          	jreq	L041
 853  0004 4a            	dec	a
 854  0005 270e          	jreq	L041
 855  0007 ae0095        	ldw	x,#149
 856  000a 89            	pushw	x
 857  000b 5f            	clrw	x
 858  000c 89            	pushw	x
 859  000d ae0000        	ldw	x,#L542
 860  0010 cd0000        	call	_assert_failed
 862  0013 5b04          	addw	sp,#4
 863  0015               L041:
 864                     ; 151   if (NewState != DISABLE)
 866  0015 7b01          	ld	a,(OFST+1,sp)
 867  0017 2706          	jreq	L703
 868                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 870  0019 72125402      	bset	21506,#1
 872  001d 2004          	jra	L113
 873  001f               L703:
 874                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 876  001f 72135402      	bres	21506,#1
 877  0023               L113:
 878                     ; 159 }
 881  0023 84            	pop	a
 882  0024 81            	ret	
 918                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 918                     ; 167 {
 919                     .text:	section	.text,new
 920  0000               _ADC1_DataBufferCmd:
 922  0000 88            	push	a
 923       00000000      OFST:	set	0
 926                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 928  0001 4d            	tnz	a
 929  0002 2711          	jreq	L251
 930  0004 4a            	dec	a
 931  0005 270e          	jreq	L251
 932  0007 ae00a9        	ldw	x,#169
 933  000a 89            	pushw	x
 934  000b 5f            	clrw	x
 935  000c 89            	pushw	x
 936  000d ae0000        	ldw	x,#L542
 937  0010 cd0000        	call	_assert_failed
 939  0013 5b04          	addw	sp,#4
 940  0015               L251:
 941                     ; 171   if (NewState != DISABLE)
 943  0015 7b01          	ld	a,(OFST+1,sp)
 944  0017 2706          	jreq	L133
 945                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 947  0019 721e5403      	bset	21507,#7
 949  001d 2004          	jra	L333
 950  001f               L133:
 951                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 953  001f 721f5403      	bres	21507,#7
 954  0023               L333:
 955                     ; 179 }
 958  0023 84            	pop	a
 959  0024 81            	ret	
1116                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1116                     ; 191 {
1117                     .text:	section	.text,new
1118  0000               _ADC1_ITConfig:
1120  0000 89            	pushw	x
1121       00000000      OFST:	set	0
1124                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1126  0001 a30020        	cpw	x,#32
1127  0004 270a          	jreq	L461
1128  0006 a30010        	cpw	x,#16
1129  0009 2705          	jreq	L461
1130  000b ae00c1        	ldw	x,#193
1131  000e ad22          	call	LC002
1132  0010               L461:
1133                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1135  0010 7b05          	ld	a,(OFST+5,sp)
1136  0012 2708          	jreq	L471
1137  0014 4a            	dec	a
1138  0015 2705          	jreq	L471
1139  0017 ae00c2        	ldw	x,#194
1140  001a ad16          	call	LC002
1141  001c               L471:
1142                     ; 196   if (NewState != DISABLE)
1144  001c 7b05          	ld	a,(OFST+5,sp)
1145  001e 2707          	jreq	L124
1146                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1148  0020 c65400        	ld	a,21504
1149  0023 1a02          	or	a,(OFST+2,sp)
1151  0025 2006          	jra	L324
1152  0027               L124:
1153                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1155  0027 7b02          	ld	a,(OFST+2,sp)
1156  0029 43            	cpl	a
1157  002a c45400        	and	a,21504
1158  002d               L324:
1159  002d c75400        	ld	21504,a
1160                     ; 206 }
1163  0030 85            	popw	x
1164  0031 81            	ret	
1165  0032               LC002:
1166  0032 89            	pushw	x
1167  0033 5f            	clrw	x
1168  0034 89            	pushw	x
1169  0035 ae0000        	ldw	x,#L542
1170  0038 cd0000        	call	_assert_failed
1172  003b 5b04          	addw	sp,#4
1173  003d 81            	ret	
1210                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1210                     ; 215 {
1211                     .text:	section	.text,new
1212  0000               _ADC1_PrescalerConfig:
1214  0000 88            	push	a
1215       00000000      OFST:	set	0
1218                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1220  0001 4d            	tnz	a
1221  0002 272a          	jreq	L602
1222  0004 a110          	cp	a,#16
1223  0006 2726          	jreq	L602
1224  0008 a120          	cp	a,#32
1225  000a 2722          	jreq	L602
1226  000c a130          	cp	a,#48
1227  000e 271e          	jreq	L602
1228  0010 a140          	cp	a,#64
1229  0012 271a          	jreq	L602
1230  0014 a150          	cp	a,#80
1231  0016 2716          	jreq	L602
1232  0018 a160          	cp	a,#96
1233  001a 2712          	jreq	L602
1234  001c a170          	cp	a,#112
1235  001e 270e          	jreq	L602
1236  0020 ae00d9        	ldw	x,#217
1237  0023 89            	pushw	x
1238  0024 5f            	clrw	x
1239  0025 89            	pushw	x
1240  0026 ae0000        	ldw	x,#L542
1241  0029 cd0000        	call	_assert_failed
1243  002c 5b04          	addw	sp,#4
1244  002e               L602:
1245                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1247  002e c65401        	ld	a,21505
1248  0031 a48f          	and	a,#143
1249  0033 c75401        	ld	21505,a
1250                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1252  0036 c65401        	ld	a,21505
1253  0039 1a01          	or	a,(OFST+1,sp)
1254  003b c75401        	ld	21505,a
1255                     ; 223 }
1258  003e 84            	pop	a
1259  003f 81            	ret	
1307                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1307                     ; 234 {
1308                     .text:	section	.text,new
1309  0000               _ADC1_SchmittTriggerConfig:
1311  0000 89            	pushw	x
1312       00000000      OFST:	set	0
1315                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1317  0001 9e            	ld	a,xh
1318  0002 4d            	tnz	a
1319  0003 273b          	jreq	L022
1320  0005 9e            	ld	a,xh
1321  0006 4a            	dec	a
1322  0007 2737          	jreq	L022
1323  0009 9e            	ld	a,xh
1324  000a a102          	cp	a,#2
1325  000c 2732          	jreq	L022
1326  000e 9e            	ld	a,xh
1327  000f a103          	cp	a,#3
1328  0011 272d          	jreq	L022
1329  0013 9e            	ld	a,xh
1330  0014 a104          	cp	a,#4
1331  0016 2728          	jreq	L022
1332  0018 9e            	ld	a,xh
1333  0019 a105          	cp	a,#5
1334  001b 2723          	jreq	L022
1335  001d 9e            	ld	a,xh
1336  001e a106          	cp	a,#6
1337  0020 271e          	jreq	L022
1338  0022 9e            	ld	a,xh
1339  0023 a107          	cp	a,#7
1340  0025 2719          	jreq	L022
1341  0027 9e            	ld	a,xh
1342  0028 a108          	cp	a,#8
1343  002a 2714          	jreq	L022
1344  002c 9e            	ld	a,xh
1345  002d a10c          	cp	a,#12
1346  002f 270f          	jreq	L022
1347  0031 9e            	ld	a,xh
1348  0032 4c            	inc	a
1349  0033 270b          	jreq	L022
1350  0035 9e            	ld	a,xh
1351  0036 a109          	cp	a,#9
1352  0038 2706          	jreq	L022
1353  003a ae00ec        	ldw	x,#236
1354  003d cd00bf        	call	LC006
1355  0040               L022:
1356                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1358  0040 7b02          	ld	a,(OFST+2,sp)
1359  0042 2708          	jreq	L032
1360  0044 4a            	dec	a
1361  0045 2705          	jreq	L032
1362  0047 ae00ed        	ldw	x,#237
1363  004a ad73          	call	LC006
1364  004c               L032:
1365                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1367  004c 7b01          	ld	a,(OFST+1,sp)
1368  004e a1ff          	cp	a,#255
1369  0050 261d          	jrne	L564
1370                     ; 241     if (NewState != DISABLE)
1372  0052 7b02          	ld	a,(OFST+2,sp)
1373  0054 270a          	jreq	L764
1374                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1376  0056 725f5407      	clr	21511
1377                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1379  005a 725f5406      	clr	21510
1381  005e 2057          	jra	L374
1382  0060               L764:
1383                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1385  0060 c65407        	ld	a,21511
1386  0063 aaff          	or	a,#255
1387  0065 c75407        	ld	21511,a
1388                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1390  0068 c65406        	ld	a,21510
1391  006b aaff          	or	a,#255
1392  006d 2045          	jp	LC003
1393  006f               L564:
1394                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1396  006f a108          	cp	a,#8
1397  0071 0d02          	tnz	(OFST+2,sp)
1398  0073 2420          	jruge	L574
1399                     ; 254     if (NewState != DISABLE)
1401  0075 2711          	jreq	L774
1402                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1404  0077 ad40          	call	LC005
1405  0079 2704          	jreq	L432
1406  007b               L632:
1407  007b 48            	sll	a
1408  007c 5a            	decw	x
1409  007d 26fc          	jrne	L632
1410  007f               L432:
1411  007f 43            	cpl	a
1412  0080 c45407        	and	a,21511
1413  0083               LC004:
1414  0083 c75407        	ld	21511,a
1416  0086 202f          	jra	L374
1417  0088               L774:
1418                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1420  0088 ad2f          	call	LC005
1421  008a 2704          	jreq	L042
1422  008c               L242:
1423  008c 48            	sll	a
1424  008d 5a            	decw	x
1425  008e 26fc          	jrne	L242
1426  0090               L042:
1427  0090 ca5407        	or	a,21511
1428  0093 20ee          	jp	LC004
1429  0095               L574:
1430                     ; 265     if (NewState != DISABLE)
1432  0095 2710          	jreq	L505
1433                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1435  0097 a008          	sub	a,#8
1436  0099 ad1e          	call	LC005
1437  009b 2704          	jreq	L442
1438  009d               L642:
1439  009d 48            	sll	a
1440  009e 5a            	decw	x
1441  009f 26fc          	jrne	L642
1442  00a1               L442:
1443  00a1 43            	cpl	a
1444  00a2 c45406        	and	a,21510
1446  00a5 200d          	jp	LC003
1447  00a7               L505:
1448                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1450  00a7 a008          	sub	a,#8
1451  00a9 ad0e          	call	LC005
1452  00ab 2704          	jreq	L052
1453  00ad               L252:
1454  00ad 48            	sll	a
1455  00ae 5a            	decw	x
1456  00af 26fc          	jrne	L252
1457  00b1               L052:
1458  00b1 ca5406        	or	a,21510
1459  00b4               LC003:
1460  00b4 c75406        	ld	21510,a
1461  00b7               L374:
1462                     ; 274 }
1465  00b7 85            	popw	x
1466  00b8 81            	ret	
1467  00b9               LC005:
1468  00b9 5f            	clrw	x
1469  00ba 97            	ld	xl,a
1470  00bb a601          	ld	a,#1
1471  00bd 5d            	tnzw	x
1472  00be 81            	ret	
1473  00bf               LC006:
1474  00bf 89            	pushw	x
1475  00c0 5f            	clrw	x
1476  00c1 89            	pushw	x
1477  00c2 ae0000        	ldw	x,#L542
1478  00c5 cd0000        	call	_assert_failed
1480  00c8 5b04          	addw	sp,#4
1481  00ca 81            	ret	
1539                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1539                     ; 287 {
1540                     .text:	section	.text,new
1541  0000               _ADC1_ConversionConfig:
1543  0000 89            	pushw	x
1544       00000000      OFST:	set	0
1547                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1549  0001 9e            	ld	a,xh
1550  0002 4d            	tnz	a
1551  0003 2709          	jreq	L262
1552  0005 9e            	ld	a,xh
1553  0006 4a            	dec	a
1554  0007 2705          	jreq	L262
1555  0009 ae0121        	ldw	x,#289
1556  000c ad6b          	call	LC007
1557  000e               L262:
1558                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1560  000e 7b02          	ld	a,(OFST+2,sp)
1561  0010 272d          	jreq	L272
1562  0012 a101          	cp	a,#1
1563  0014 2729          	jreq	L272
1564  0016 a102          	cp	a,#2
1565  0018 2725          	jreq	L272
1566  001a a103          	cp	a,#3
1567  001c 2721          	jreq	L272
1568  001e a104          	cp	a,#4
1569  0020 271d          	jreq	L272
1570  0022 a105          	cp	a,#5
1571  0024 2719          	jreq	L272
1572  0026 a106          	cp	a,#6
1573  0028 2715          	jreq	L272
1574  002a a107          	cp	a,#7
1575  002c 2711          	jreq	L272
1576  002e a108          	cp	a,#8
1577  0030 270d          	jreq	L272
1578  0032 a10c          	cp	a,#12
1579  0034 2709          	jreq	L272
1580  0036 a109          	cp	a,#9
1581  0038 2705          	jreq	L272
1582  003a ae0122        	ldw	x,#290
1583  003d ad3a          	call	LC007
1584  003f               L272:
1585                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1587  003f 7b05          	ld	a,(OFST+5,sp)
1588  0041 2709          	jreq	L203
1589  0043 a108          	cp	a,#8
1590  0045 2705          	jreq	L203
1591  0047 ae0123        	ldw	x,#291
1592  004a ad2d          	call	LC007
1593  004c               L203:
1594                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1596  004c 72175402      	bres	21506,#3
1597                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1599  0050 c65402        	ld	a,21506
1600  0053 1a05          	or	a,(OFST+5,sp)
1601  0055 c75402        	ld	21506,a
1602                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1604  0058 7b01          	ld	a,(OFST+1,sp)
1605  005a 4a            	dec	a
1606  005b 2606          	jrne	L735
1607                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1609  005d 72125401      	bset	21505,#1
1611  0061 2004          	jra	L145
1612  0063               L735:
1613                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1615  0063 72135401      	bres	21505,#1
1616  0067               L145:
1617                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1619  0067 c65400        	ld	a,21504
1620  006a a4f0          	and	a,#240
1621  006c c75400        	ld	21504,a
1622                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1624  006f c65400        	ld	a,21504
1625  0072 1a02          	or	a,(OFST+2,sp)
1626  0074 c75400        	ld	21504,a
1627                     ; 313 }
1630  0077 85            	popw	x
1631  0078 81            	ret	
1632  0079               LC007:
1633  0079 89            	pushw	x
1634  007a 5f            	clrw	x
1635  007b 89            	pushw	x
1636  007c ae0000        	ldw	x,#L542
1637  007f cd0000        	call	_assert_failed
1639  0082 5b04          	addw	sp,#4
1640  0084 81            	ret	
1687                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1687                     ; 326 {
1688                     .text:	section	.text,new
1689  0000               _ADC1_ExternalTriggerConfig:
1691  0000 89            	pushw	x
1692       00000000      OFST:	set	0
1695                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1697  0001 9e            	ld	a,xh
1698  0002 4d            	tnz	a
1699  0003 270a          	jreq	L413
1700  0005 9e            	ld	a,xh
1701  0006 a110          	cp	a,#16
1702  0008 2705          	jreq	L413
1703  000a ae0148        	ldw	x,#328
1704  000d ad2c          	call	LC008
1705  000f               L413:
1706                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1708  000f 7b02          	ld	a,(OFST+2,sp)
1709  0011 2708          	jreq	L423
1710  0013 4a            	dec	a
1711  0014 2705          	jreq	L423
1712  0016 ae0149        	ldw	x,#329
1713  0019 ad20          	call	LC008
1714  001b               L423:
1715                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1717  001b c65402        	ld	a,21506
1718  001e a4cf          	and	a,#207
1719  0020 c75402        	ld	21506,a
1720                     ; 334   if (NewState != DISABLE)
1722  0023 7b02          	ld	a,(OFST+2,sp)
1723  0025 2706          	jreq	L565
1724                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1726  0027 721c5402      	bset	21506,#6
1728  002b 2004          	jra	L765
1729  002d               L565:
1730                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1732  002d 721d5402      	bres	21506,#6
1733  0031               L765:
1734                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1736  0031 c65402        	ld	a,21506
1737  0034 1a01          	or	a,(OFST+1,sp)
1738  0036 c75402        	ld	21506,a
1739                     ; 347 }
1742  0039 85            	popw	x
1743  003a 81            	ret	
1744  003b               LC008:
1745  003b 89            	pushw	x
1746  003c 5f            	clrw	x
1747  003d 89            	pushw	x
1748  003e ae0000        	ldw	x,#L542
1749  0041 cd0000        	call	_assert_failed
1751  0044 5b04          	addw	sp,#4
1752  0046 81            	ret	
1776                     ; 358 void ADC1_StartConversion(void)
1776                     ; 359 {
1777                     .text:	section	.text,new
1778  0000               _ADC1_StartConversion:
1782                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1784  0000 72105401      	bset	21505,#0
1785                     ; 361 }
1788  0004 81            	ret	
1832                     ; 370 uint16_t ADC1_GetConversionValue(void)
1832                     ; 371 {
1833                     .text:	section	.text,new
1834  0000               _ADC1_GetConversionValue:
1836  0000 5205          	subw	sp,#5
1837       00000005      OFST:	set	5
1840                     ; 372   uint16_t temph = 0;
1842                     ; 373   uint8_t templ = 0;
1844                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1846  0002 720754020e    	btjf	21506,#3,L326
1847                     ; 378     templ = ADC1->DRL;
1849  0007 c65405        	ld	a,21509
1850  000a 6b03          	ld	(OFST-2,sp),a
1851                     ; 380     temph = ADC1->DRH;
1853  000c c65404        	ld	a,21508
1854  000f 97            	ld	xl,a
1855                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1857  0010 7b03          	ld	a,(OFST-2,sp)
1858  0012 02            	rlwa	x,a
1860  0013 201a          	jra	L526
1861  0015               L326:
1862                     ; 387     temph = ADC1->DRH;
1864  0015 c65404        	ld	a,21508
1865  0018 97            	ld	xl,a
1866                     ; 389     templ = ADC1->DRL;
1868  0019 c65405        	ld	a,21509
1869  001c 6b03          	ld	(OFST-2,sp),a
1870                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1872  001e 4f            	clr	a
1873  001f 02            	rlwa	x,a
1874  0020 1f01          	ldw	(OFST-4,sp),x
1875  0022 7b03          	ld	a,(OFST-2,sp)
1876  0024 97            	ld	xl,a
1877  0025 a640          	ld	a,#64
1878  0027 42            	mul	x,a
1879  0028 01            	rrwa	x,a
1880  0029 1a02          	or	a,(OFST-3,sp)
1881  002b 01            	rrwa	x,a
1882  002c 1a01          	or	a,(OFST-4,sp)
1883  002e 01            	rrwa	x,a
1884  002f               L526:
1885                     ; 394   return ((uint16_t)temph);
1889  002f 5b05          	addw	sp,#5
1890  0031 81            	ret	
1937                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1937                     ; 406 {
1938                     .text:	section	.text,new
1939  0000               _ADC1_AWDChannelConfig:
1941  0000 89            	pushw	x
1942       00000000      OFST:	set	0
1945                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1947  0001 9f            	ld	a,xl
1948  0002 4d            	tnz	a
1949  0003 270a          	jreq	L243
1950  0005 9f            	ld	a,xl
1951  0006 4a            	dec	a
1952  0007 2706          	jreq	L243
1953  0009 ae0198        	ldw	x,#408
1954  000c cd0092        	call	LC012
1955  000f               L243:
1956                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1958  000f 7b01          	ld	a,(OFST+1,sp)
1959  0011 272f          	jreq	L253
1960  0013 a101          	cp	a,#1
1961  0015 272b          	jreq	L253
1962  0017 a102          	cp	a,#2
1963  0019 2727          	jreq	L253
1964  001b a103          	cp	a,#3
1965  001d 2723          	jreq	L253
1966  001f a104          	cp	a,#4
1967  0021 271f          	jreq	L253
1968  0023 a105          	cp	a,#5
1969  0025 271b          	jreq	L253
1970  0027 a106          	cp	a,#6
1971  0029 2717          	jreq	L253
1972  002b a107          	cp	a,#7
1973  002d 2713          	jreq	L253
1974  002f a108          	cp	a,#8
1975  0031 270f          	jreq	L253
1976  0033 a10c          	cp	a,#12
1977  0035 270b          	jreq	L253
1978  0037 a109          	cp	a,#9
1979  0039 2707          	jreq	L253
1980  003b ae0199        	ldw	x,#409
1981  003e ad52          	call	LC012
1982  0040 7b01          	ld	a,(OFST+1,sp)
1983  0042               L253:
1984                     ; 411   if (Channel < (uint8_t)8)
1986  0042 a108          	cp	a,#8
1987  0044 0d02          	tnz	(OFST+2,sp)
1988  0046 2420          	jruge	L156
1989                     ; 413     if (NewState != DISABLE)
1991  0048 270d          	jreq	L356
1992                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1994  004a ad40          	call	LC011
1995  004c 2704          	jreq	L653
1996  004e               L063:
1997  004e 48            	sll	a
1998  004f 5a            	decw	x
1999  0050 26fc          	jrne	L063
2000  0052               L653:
2001  0052 ca540f        	or	a,21519
2003  0055 200c          	jp	LC010
2004  0057               L356:
2005                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2007  0057 ad33          	call	LC011
2008  0059 2704          	jreq	L263
2009  005b               L463:
2010  005b 48            	sll	a
2011  005c 5a            	decw	x
2012  005d 26fc          	jrne	L463
2013  005f               L263:
2014  005f 43            	cpl	a
2015  0060 c4540f        	and	a,21519
2016  0063               LC010:
2017  0063 c7540f        	ld	21519,a
2018  0066 2022          	jra	L756
2019  0068               L156:
2020                     ; 424     if (NewState != DISABLE)
2022  0068 270f          	jreq	L166
2023                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2025  006a a008          	sub	a,#8
2026  006c ad1e          	call	LC011
2027  006e 2704          	jreq	L663
2028  0070               L073:
2029  0070 48            	sll	a
2030  0071 5a            	decw	x
2031  0072 26fc          	jrne	L073
2032  0074               L663:
2033  0074 ca540e        	or	a,21518
2035  0077 200e          	jp	LC009
2036  0079               L166:
2037                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2039  0079 a008          	sub	a,#8
2040  007b ad0f          	call	LC011
2041  007d 2704          	jreq	L273
2042  007f               L473:
2043  007f 48            	sll	a
2044  0080 5a            	decw	x
2045  0081 26fc          	jrne	L473
2046  0083               L273:
2047  0083 43            	cpl	a
2048  0084 c4540e        	and	a,21518
2049  0087               LC009:
2050  0087 c7540e        	ld	21518,a
2051  008a               L756:
2052                     ; 433 }
2055  008a 85            	popw	x
2056  008b 81            	ret	
2057  008c               LC011:
2058  008c 5f            	clrw	x
2059  008d 97            	ld	xl,a
2060  008e a601          	ld	a,#1
2061  0090 5d            	tnzw	x
2062  0091 81            	ret	
2063  0092               LC012:
2064  0092 89            	pushw	x
2065  0093 5f            	clrw	x
2066  0094 89            	pushw	x
2067  0095 ae0000        	ldw	x,#L542
2068  0098 cd0000        	call	_assert_failed
2070  009b 5b04          	addw	sp,#4
2071  009d 81            	ret	
2106                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2106                     ; 442 {
2107                     .text:	section	.text,new
2108  0000               _ADC1_SetHighThreshold:
2110  0000 89            	pushw	x
2111       00000000      OFST:	set	0
2114                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2116  0001 54            	srlw	x
2117  0002 54            	srlw	x
2118  0003 9f            	ld	a,xl
2119  0004 c75408        	ld	21512,a
2120                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2122  0007 7b02          	ld	a,(OFST+2,sp)
2123  0009 c75409        	ld	21513,a
2124                     ; 445 }
2127  000c 85            	popw	x
2128  000d 81            	ret	
2163                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2163                     ; 454 {
2164                     .text:	section	.text,new
2165  0000               _ADC1_SetLowThreshold:
2169                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2171  0000 9f            	ld	a,xl
2172  0001 c7540b        	ld	21515,a
2173                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2175  0004 54            	srlw	x
2176  0005 54            	srlw	x
2177  0006 9f            	ld	a,xl
2178  0007 c7540a        	ld	21514,a
2179                     ; 457 }
2182  000a 81            	ret	
2236                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2236                     ; 467 {
2237                     .text:	section	.text,new
2238  0000               _ADC1_GetBufferValue:
2240  0000 88            	push	a
2241  0001 5205          	subw	sp,#5
2242       00000005      OFST:	set	5
2245                     ; 468   uint16_t temph = 0;
2247                     ; 469   uint8_t templ = 0;
2249                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2251  0003 a10a          	cp	a,#10
2252  0005 250e          	jrult	L604
2253  0007 ae01d8        	ldw	x,#472
2254  000a 89            	pushw	x
2255  000b 5f            	clrw	x
2256  000c 89            	pushw	x
2257  000d ae0000        	ldw	x,#L542
2258  0010 cd0000        	call	_assert_failed
2260  0013 5b04          	addw	sp,#4
2261  0015               L604:
2262                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2264  0015 7b06          	ld	a,(OFST+1,sp)
2265  0017 48            	sll	a
2266  0018 5f            	clrw	x
2267  0019 97            	ld	xl,a
2268  001a 7207540213    	btjf	21506,#3,L747
2269                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2271  001f d653e1        	ld	a,(21473,x)
2272  0022 6b03          	ld	(OFST-2,sp),a
2273                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2275  0024 7b06          	ld	a,(OFST+1,sp)
2276  0026 48            	sll	a
2277  0027 5f            	clrw	x
2278  0028 97            	ld	xl,a
2279  0029 d653e0        	ld	a,(21472,x)
2280  002c 97            	ld	xl,a
2281                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2283  002d 7b03          	ld	a,(OFST-2,sp)
2284  002f 02            	rlwa	x,a
2286  0030 2024          	jra	L157
2287  0032               L747:
2288                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2290  0032 d653e0        	ld	a,(21472,x)
2291  0035 5f            	clrw	x
2292  0036 97            	ld	xl,a
2293  0037 1f04          	ldw	(OFST-1,sp),x
2294                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2296  0039 7b06          	ld	a,(OFST+1,sp)
2297  003b 48            	sll	a
2298  003c 5f            	clrw	x
2299  003d 97            	ld	xl,a
2300  003e d653e1        	ld	a,(21473,x)
2301  0041 6b03          	ld	(OFST-2,sp),a
2302                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2304  0043 4f            	clr	a
2305  0044 1e04          	ldw	x,(OFST-1,sp)
2306  0046 02            	rlwa	x,a
2307  0047 1f01          	ldw	(OFST-4,sp),x
2308  0049 7b03          	ld	a,(OFST-2,sp)
2309  004b 97            	ld	xl,a
2310  004c a640          	ld	a,#64
2311  004e 42            	mul	x,a
2312  004f 01            	rrwa	x,a
2313  0050 1a02          	or	a,(OFST-3,sp)
2314  0052 01            	rrwa	x,a
2315  0053 1a01          	or	a,(OFST-4,sp)
2316  0055 01            	rrwa	x,a
2317  0056               L157:
2318                     ; 493   return ((uint16_t)temph);
2322  0056 5b06          	addw	sp,#6
2323  0058 81            	ret	
2390                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2390                     ; 503 {
2391                     .text:	section	.text,new
2392  0000               _ADC1_GetAWDChannelStatus:
2394  0000 88            	push	a
2395  0001 88            	push	a
2396       00000001      OFST:	set	1
2399                     ; 504   uint8_t status = 0;
2401                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2403  0002 4d            	tnz	a
2404  0003 2736          	jreq	L024
2405  0005 a101          	cp	a,#1
2406  0007 2732          	jreq	L024
2407  0009 a102          	cp	a,#2
2408  000b 272e          	jreq	L024
2409  000d a103          	cp	a,#3
2410  000f 272a          	jreq	L024
2411  0011 a104          	cp	a,#4
2412  0013 2726          	jreq	L024
2413  0015 a105          	cp	a,#5
2414  0017 2722          	jreq	L024
2415  0019 a106          	cp	a,#6
2416  001b 271e          	jreq	L024
2417  001d a107          	cp	a,#7
2418  001f 271a          	jreq	L024
2419  0021 a108          	cp	a,#8
2420  0023 2716          	jreq	L024
2421  0025 a10c          	cp	a,#12
2422  0027 2712          	jreq	L024
2423  0029 a109          	cp	a,#9
2424  002b 270e          	jreq	L024
2425  002d ae01fb        	ldw	x,#507
2426  0030 89            	pushw	x
2427  0031 5f            	clrw	x
2428  0032 89            	pushw	x
2429  0033 ae0000        	ldw	x,#L542
2430  0036 cd0000        	call	_assert_failed
2432  0039 5b04          	addw	sp,#4
2433  003b               L024:
2434                     ; 509   if (Channel < (uint8_t)8)
2436  003b 7b02          	ld	a,(OFST+1,sp)
2437  003d a108          	cp	a,#8
2438  003f 2410          	jruge	L5001
2439                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2441  0041 5f            	clrw	x
2442  0042 97            	ld	xl,a
2443  0043 a601          	ld	a,#1
2444  0045 5d            	tnzw	x
2445  0046 2704          	jreq	L424
2446  0048               L624:
2447  0048 48            	sll	a
2448  0049 5a            	decw	x
2449  004a 26fc          	jrne	L624
2450  004c               L424:
2451  004c c4540d        	and	a,21517
2453  004f 2010          	jra	L7001
2454  0051               L5001:
2455                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2457  0051 a008          	sub	a,#8
2458  0053 5f            	clrw	x
2459  0054 97            	ld	xl,a
2460  0055 a601          	ld	a,#1
2461  0057 5d            	tnzw	x
2462  0058 2704          	jreq	L034
2463  005a               L234:
2464  005a 48            	sll	a
2465  005b 5a            	decw	x
2466  005c 26fc          	jrne	L234
2467  005e               L034:
2468  005e c4540c        	and	a,21516
2469  0061               L7001:
2470                     ; 518   return ((FlagStatus)status);
2474  0061 85            	popw	x
2475  0062 81            	ret	
2634                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2634                     ; 528 {
2635                     .text:	section	.text,new
2636  0000               _ADC1_GetFlagStatus:
2638  0000 88            	push	a
2639  0001 88            	push	a
2640       00000001      OFST:	set	1
2643                     ; 529   uint8_t flagstatus = 0;
2645                     ; 530   uint8_t temp = 0;
2647                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2649  0002 a180          	cp	a,#128
2650  0004 273e          	jreq	L244
2651  0006 a141          	cp	a,#65
2652  0008 273a          	jreq	L244
2653  000a a140          	cp	a,#64
2654  000c 2736          	jreq	L244
2655  000e a110          	cp	a,#16
2656  0010 2732          	jreq	L244
2657  0012 a111          	cp	a,#17
2658  0014 272e          	jreq	L244
2659  0016 a112          	cp	a,#18
2660  0018 272a          	jreq	L244
2661  001a a113          	cp	a,#19
2662  001c 2726          	jreq	L244
2663  001e a114          	cp	a,#20
2664  0020 2722          	jreq	L244
2665  0022 a115          	cp	a,#21
2666  0024 271e          	jreq	L244
2667  0026 a116          	cp	a,#22
2668  0028 271a          	jreq	L244
2669  002a a117          	cp	a,#23
2670  002c 2716          	jreq	L244
2671  002e a118          	cp	a,#24
2672  0030 2712          	jreq	L244
2673  0032 a119          	cp	a,#25
2674  0034 270e          	jreq	L244
2675  0036 ae0215        	ldw	x,#533
2676  0039 89            	pushw	x
2677  003a 5f            	clrw	x
2678  003b 89            	pushw	x
2679  003c ae0000        	ldw	x,#L542
2680  003f cd0000        	call	_assert_failed
2682  0042 5b04          	addw	sp,#4
2683  0044               L244:
2684                     ; 535   if ((Flag & 0x0F) == 0x01)
2686  0044 7b02          	ld	a,(OFST+1,sp)
2687  0046 a40f          	and	a,#15
2688  0048 4a            	dec	a
2689  0049 2607          	jrne	L7701
2690                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2692  004b c65403        	ld	a,21507
2693  004e a440          	and	a,#64
2695  0050 2039          	jra	L1011
2696  0052               L7701:
2697                     ; 540   else if ((Flag & 0xF0) == 0x10)
2699  0052 7b02          	ld	a,(OFST+1,sp)
2700  0054 a4f0          	and	a,#240
2701  0056 a110          	cp	a,#16
2702  0058 262c          	jrne	L3011
2703                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2705  005a 7b02          	ld	a,(OFST+1,sp)
2706  005c a40f          	and	a,#15
2707  005e 6b01          	ld	(OFST+0,sp),a
2708                     ; 544     if (temp < 8)
2710  0060 a108          	cp	a,#8
2711  0062 2410          	jruge	L5011
2712                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2714  0064 5f            	clrw	x
2715  0065 97            	ld	xl,a
2716  0066 a601          	ld	a,#1
2717  0068 5d            	tnzw	x
2718  0069 2704          	jreq	L644
2719  006b               L054:
2720  006b 48            	sll	a
2721  006c 5a            	decw	x
2722  006d 26fc          	jrne	L054
2723  006f               L644:
2724  006f c4540d        	and	a,21517
2726  0072 2017          	jra	L1011
2727  0074               L5011:
2728                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2730  0074 a008          	sub	a,#8
2731  0076 5f            	clrw	x
2732  0077 97            	ld	xl,a
2733  0078 a601          	ld	a,#1
2734  007a 5d            	tnzw	x
2735  007b 2704          	jreq	L254
2736  007d               L454:
2737  007d 48            	sll	a
2738  007e 5a            	decw	x
2739  007f 26fc          	jrne	L454
2740  0081               L254:
2741  0081 c4540c        	and	a,21516
2742  0084 2005          	jra	L1011
2743  0086               L3011:
2744                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2746  0086 c65400        	ld	a,21504
2747  0089 1402          	and	a,(OFST+1,sp)
2748  008b               L1011:
2749                     ; 557   return ((FlagStatus)flagstatus);
2753  008b 85            	popw	x
2754  008c 81            	ret	
2799                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2799                     ; 568 {
2800                     .text:	section	.text,new
2801  0000               _ADC1_ClearFlag:
2803  0000 88            	push	a
2804  0001 88            	push	a
2805       00000001      OFST:	set	1
2808                     ; 569   uint8_t temp = 0;
2810                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2812  0002 a180          	cp	a,#128
2813  0004 273e          	jreq	L464
2814  0006 a141          	cp	a,#65
2815  0008 273a          	jreq	L464
2816  000a a140          	cp	a,#64
2817  000c 2736          	jreq	L464
2818  000e a110          	cp	a,#16
2819  0010 2732          	jreq	L464
2820  0012 a111          	cp	a,#17
2821  0014 272e          	jreq	L464
2822  0016 a112          	cp	a,#18
2823  0018 272a          	jreq	L464
2824  001a a113          	cp	a,#19
2825  001c 2726          	jreq	L464
2826  001e a114          	cp	a,#20
2827  0020 2722          	jreq	L464
2828  0022 a115          	cp	a,#21
2829  0024 271e          	jreq	L464
2830  0026 a116          	cp	a,#22
2831  0028 271a          	jreq	L464
2832  002a a117          	cp	a,#23
2833  002c 2716          	jreq	L464
2834  002e a118          	cp	a,#24
2835  0030 2712          	jreq	L464
2836  0032 a119          	cp	a,#25
2837  0034 270e          	jreq	L464
2838  0036 ae023c        	ldw	x,#572
2839  0039 89            	pushw	x
2840  003a 5f            	clrw	x
2841  003b 89            	pushw	x
2842  003c ae0000        	ldw	x,#L542
2843  003f cd0000        	call	_assert_failed
2845  0042 5b04          	addw	sp,#4
2846  0044               L464:
2847                     ; 574   if ((Flag & 0x0F) == 0x01)
2849  0044 7b02          	ld	a,(OFST+1,sp)
2850  0046 a40f          	and	a,#15
2851  0048 4a            	dec	a
2852  0049 2606          	jrne	L5311
2853                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2855  004b 721d5403      	bres	21507,#6
2857  004f 2045          	jra	L7311
2858  0051               L5311:
2859                     ; 579   else if ((Flag & 0xF0) == 0x10)
2861  0051 7b02          	ld	a,(OFST+1,sp)
2862  0053 a4f0          	and	a,#240
2863  0055 a110          	cp	a,#16
2864  0057 2634          	jrne	L1411
2865                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2867  0059 7b02          	ld	a,(OFST+1,sp)
2868  005b a40f          	and	a,#15
2869  005d 6b01          	ld	(OFST+0,sp),a
2870                     ; 583     if (temp < 8)
2872  005f a108          	cp	a,#8
2873  0061 2414          	jruge	L3411
2874                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2876  0063 5f            	clrw	x
2877  0064 97            	ld	xl,a
2878  0065 a601          	ld	a,#1
2879  0067 5d            	tnzw	x
2880  0068 2704          	jreq	L074
2881  006a               L274:
2882  006a 48            	sll	a
2883  006b 5a            	decw	x
2884  006c 26fc          	jrne	L274
2885  006e               L074:
2886  006e 43            	cpl	a
2887  006f c4540d        	and	a,21517
2888  0072 c7540d        	ld	21517,a
2890  0075 201f          	jra	L7311
2891  0077               L3411:
2892                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2894  0077 a008          	sub	a,#8
2895  0079 5f            	clrw	x
2896  007a 97            	ld	xl,a
2897  007b a601          	ld	a,#1
2898  007d 5d            	tnzw	x
2899  007e 2704          	jreq	L474
2900  0080               L674:
2901  0080 48            	sll	a
2902  0081 5a            	decw	x
2903  0082 26fc          	jrne	L674
2904  0084               L474:
2905  0084 43            	cpl	a
2906  0085 c4540c        	and	a,21516
2907  0088 c7540c        	ld	21516,a
2908  008b 2009          	jra	L7311
2909  008d               L1411:
2910                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2912  008d 7b02          	ld	a,(OFST+1,sp)
2913  008f 43            	cpl	a
2914  0090 c45400        	and	a,21504
2915  0093 c75400        	ld	21504,a
2916  0096               L7311:
2917                     ; 596 }
2920  0096 85            	popw	x
2921  0097 81            	ret	
2977                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2977                     ; 617 {
2978                     .text:	section	.text,new
2979  0000               _ADC1_GetITStatus:
2981  0000 89            	pushw	x
2982  0001 88            	push	a
2983       00000001      OFST:	set	1
2986                     ; 618   ITStatus itstatus = RESET;
2988                     ; 619   uint8_t temp = 0;
2990                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2992  0002 a30080        	cpw	x,#128
2993  0005 274a          	jreq	L605
2994  0007 a30140        	cpw	x,#320
2995  000a 2745          	jreq	L605
2996  000c a30110        	cpw	x,#272
2997  000f 2740          	jreq	L605
2998  0011 a30111        	cpw	x,#273
2999  0014 273b          	jreq	L605
3000  0016 a30112        	cpw	x,#274
3001  0019 2736          	jreq	L605
3002  001b a30113        	cpw	x,#275
3003  001e 2731          	jreq	L605
3004  0020 a30114        	cpw	x,#276
3005  0023 272c          	jreq	L605
3006  0025 a30115        	cpw	x,#277
3007  0028 2727          	jreq	L605
3008  002a a30116        	cpw	x,#278
3009  002d 2722          	jreq	L605
3010  002f a30117        	cpw	x,#279
3011  0032 271d          	jreq	L605
3012  0034 a30118        	cpw	x,#280
3013  0037 2718          	jreq	L605
3014  0039 a3011c        	cpw	x,#284
3015  003c 2713          	jreq	L605
3016  003e a30119        	cpw	x,#281
3017  0041 270e          	jreq	L605
3018  0043 ae026e        	ldw	x,#622
3019  0046 89            	pushw	x
3020  0047 5f            	clrw	x
3021  0048 89            	pushw	x
3022  0049 ae0000        	ldw	x,#L542
3023  004c cd0000        	call	_assert_failed
3025  004f 5b04          	addw	sp,#4
3026  0051               L605:
3027                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3029  0051 7b03          	ld	a,(OFST+2,sp)
3030  0053 a4f0          	and	a,#240
3031  0055 5f            	clrw	x
3032  0056 02            	rlwa	x,a
3033  0057 a30010        	cpw	x,#16
3034  005a 262c          	jrne	L7711
3035                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3037  005c 7b03          	ld	a,(OFST+2,sp)
3038  005e a40f          	and	a,#15
3039  0060 6b01          	ld	(OFST+0,sp),a
3040                     ; 628     if (temp < 8)
3042  0062 a108          	cp	a,#8
3043  0064 2410          	jruge	L1021
3044                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3046  0066 5f            	clrw	x
3047  0067 97            	ld	xl,a
3048  0068 a601          	ld	a,#1
3049  006a 5d            	tnzw	x
3050  006b 2704          	jreq	L215
3051  006d               L415:
3052  006d 48            	sll	a
3053  006e 5a            	decw	x
3054  006f 26fc          	jrne	L415
3055  0071               L215:
3056  0071 c4540d        	and	a,21517
3058  0074 2017          	jra	L5021
3059  0076               L1021:
3060                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3062  0076 a008          	sub	a,#8
3063  0078 5f            	clrw	x
3064  0079 97            	ld	xl,a
3065  007a a601          	ld	a,#1
3066  007c 5d            	tnzw	x
3067  007d 2704          	jreq	L615
3068  007f               L025:
3069  007f 48            	sll	a
3070  0080 5a            	decw	x
3071  0081 26fc          	jrne	L025
3072  0083               L615:
3073  0083 c4540c        	and	a,21516
3074  0086 2005          	jra	L5021
3075  0088               L7711:
3076                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3078  0088 c65400        	ld	a,21504
3079  008b 1403          	and	a,(OFST+2,sp)
3080  008d               L5021:
3081                     ; 641   return ((ITStatus)itstatus);
3085  008d 5b03          	addw	sp,#3
3086  008f 81            	ret	
3132                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3132                     ; 663 {
3133                     .text:	section	.text,new
3134  0000               _ADC1_ClearITPendingBit:
3136  0000 89            	pushw	x
3137  0001 88            	push	a
3138       00000001      OFST:	set	1
3141                     ; 664   uint8_t temp = 0;
3143                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3145  0002 a30080        	cpw	x,#128
3146  0005 274a          	jreq	L035
3147  0007 a30140        	cpw	x,#320
3148  000a 2745          	jreq	L035
3149  000c a30110        	cpw	x,#272
3150  000f 2740          	jreq	L035
3151  0011 a30111        	cpw	x,#273
3152  0014 273b          	jreq	L035
3153  0016 a30112        	cpw	x,#274
3154  0019 2736          	jreq	L035
3155  001b a30113        	cpw	x,#275
3156  001e 2731          	jreq	L035
3157  0020 a30114        	cpw	x,#276
3158  0023 272c          	jreq	L035
3159  0025 a30115        	cpw	x,#277
3160  0028 2727          	jreq	L035
3161  002a a30116        	cpw	x,#278
3162  002d 2722          	jreq	L035
3163  002f a30117        	cpw	x,#279
3164  0032 271d          	jreq	L035
3165  0034 a30118        	cpw	x,#280
3166  0037 2718          	jreq	L035
3167  0039 a3011c        	cpw	x,#284
3168  003c 2713          	jreq	L035
3169  003e a30119        	cpw	x,#281
3170  0041 270e          	jreq	L035
3171  0043 ae029b        	ldw	x,#667
3172  0046 89            	pushw	x
3173  0047 5f            	clrw	x
3174  0048 89            	pushw	x
3175  0049 ae0000        	ldw	x,#L542
3176  004c cd0000        	call	_assert_failed
3178  004f 5b04          	addw	sp,#4
3179  0051               L035:
3180                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3182  0051 7b03          	ld	a,(OFST+2,sp)
3183  0053 a4f0          	and	a,#240
3184  0055 5f            	clrw	x
3185  0056 02            	rlwa	x,a
3186  0057 a30010        	cpw	x,#16
3187  005a 2634          	jrne	L1321
3188                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3190  005c 7b03          	ld	a,(OFST+2,sp)
3191  005e a40f          	and	a,#15
3192  0060 6b01          	ld	(OFST+0,sp),a
3193                     ; 673     if (temp < 8)
3195  0062 a108          	cp	a,#8
3196  0064 2414          	jruge	L3321
3197                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3199  0066 5f            	clrw	x
3200  0067 97            	ld	xl,a
3201  0068 a601          	ld	a,#1
3202  006a 5d            	tnzw	x
3203  006b 2704          	jreq	L435
3204  006d               L635:
3205  006d 48            	sll	a
3206  006e 5a            	decw	x
3207  006f 26fc          	jrne	L635
3208  0071               L435:
3209  0071 43            	cpl	a
3210  0072 c4540d        	and	a,21517
3211  0075 c7540d        	ld	21517,a
3213  0078 201f          	jra	L7321
3214  007a               L3321:
3215                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3217  007a a008          	sub	a,#8
3218  007c 5f            	clrw	x
3219  007d 97            	ld	xl,a
3220  007e a601          	ld	a,#1
3221  0080 5d            	tnzw	x
3222  0081 2704          	jreq	L045
3223  0083               L245:
3224  0083 48            	sll	a
3225  0084 5a            	decw	x
3226  0085 26fc          	jrne	L245
3227  0087               L045:
3228  0087 43            	cpl	a
3229  0088 c4540c        	and	a,21516
3230  008b c7540c        	ld	21516,a
3231  008e 2009          	jra	L7321
3232  0090               L1321:
3233                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3235  0090 7b03          	ld	a,(OFST+2,sp)
3236  0092 43            	cpl	a
3237  0093 c45400        	and	a,21504
3238  0096 c75400        	ld	21504,a
3239  0099               L7321:
3240                     ; 686 }
3243  0099 5b03          	addw	sp,#3
3244  009b 81            	ret	
3257                     	xdef	_ADC1_ClearITPendingBit
3258                     	xdef	_ADC1_GetITStatus
3259                     	xdef	_ADC1_ClearFlag
3260                     	xdef	_ADC1_GetFlagStatus
3261                     	xdef	_ADC1_GetAWDChannelStatus
3262                     	xdef	_ADC1_GetBufferValue
3263                     	xdef	_ADC1_SetLowThreshold
3264                     	xdef	_ADC1_SetHighThreshold
3265                     	xdef	_ADC1_GetConversionValue
3266                     	xdef	_ADC1_StartConversion
3267                     	xdef	_ADC1_AWDChannelConfig
3268                     	xdef	_ADC1_ExternalTriggerConfig
3269                     	xdef	_ADC1_ConversionConfig
3270                     	xdef	_ADC1_SchmittTriggerConfig
3271                     	xdef	_ADC1_PrescalerConfig
3272                     	xdef	_ADC1_ITConfig
3273                     	xdef	_ADC1_DataBufferCmd
3274                     	xdef	_ADC1_ScanModeCmd
3275                     	xdef	_ADC1_Cmd
3276                     	xdef	_ADC1_Init
3277                     	xdef	_ADC1_DeInit
3278                     	xref	_assert_failed
3279                     .const:	section	.text
3280  0000               L542:
3281  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3282  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3283  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
3284  0036 5f616463312e  	dc.b	"_adc1.c",0
3304                     	end
