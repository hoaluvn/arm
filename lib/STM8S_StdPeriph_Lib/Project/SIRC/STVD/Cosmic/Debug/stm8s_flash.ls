   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  83                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  83                     ; 88 {
  85                     .text:	section	.text,new
  86  0000               _FLASH_Unlock:
  88  0000 88            	push	a
  89       00000000      OFST:	set	0
  92                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  94  0001 a1fd          	cp	a,#253
  95  0003 2712          	jreq	L21
  96  0005 a1f7          	cp	a,#247
  97  0007 270e          	jreq	L21
  98  0009 ae005a        	ldw	x,#90
  99  000c 89            	pushw	x
 100  000d 5f            	clrw	x
 101  000e 89            	pushw	x
 102  000f ae0010        	ldw	x,#L73
 103  0012 cd0000        	call	_assert_failed
 105  0015 5b04          	addw	sp,#4
 106  0017               L21:
 107                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 109  0017 7b01          	ld	a,(OFST+1,sp)
 110  0019 a1fd          	cp	a,#253
 111  001b 260a          	jrne	L14
 112                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 114  001d 35565062      	mov	20578,#86
 115                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 117  0021 35ae5062      	mov	20578,#174
 119  0025 2008          	jra	L34
 120  0027               L14:
 121                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 123  0027 35ae5064      	mov	20580,#174
 124                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 126  002b 35565064      	mov	20580,#86
 127  002f               L34:
 128                     ; 104 }
 131  002f 84            	pop	a
 132  0030 81            	ret	
 168                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 168                     ; 113 {
 169                     .text:	section	.text,new
 170  0000               _FLASH_Lock:
 172  0000 88            	push	a
 173       00000000      OFST:	set	0
 176                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 178  0001 a1fd          	cp	a,#253
 179  0003 2712          	jreq	L42
 180  0005 a1f7          	cp	a,#247
 181  0007 270e          	jreq	L42
 182  0009 ae0073        	ldw	x,#115
 183  000c 89            	pushw	x
 184  000d 5f            	clrw	x
 185  000e 89            	pushw	x
 186  000f ae0010        	ldw	x,#L73
 187  0012 cd0000        	call	_assert_failed
 189  0015 5b04          	addw	sp,#4
 190  0017               L42:
 191                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0017 c6505f        	ld	a,20575
 194  001a 1401          	and	a,(OFST+1,sp)
 195  001c c7505f        	ld	20575,a
 196                     ; 119 }
 199  001f 84            	pop	a
 200  0020 81            	ret	
 223                     ; 126 void FLASH_DeInit(void)
 223                     ; 127 {
 224                     .text:	section	.text,new
 225  0000               _FLASH_DeInit:
 229                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  0000 725f505a      	clr	20570
 232                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0004 725f505b      	clr	20571
 235                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0008 35ff505c      	mov	20572,#255
 238                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  000c 7217505f      	bres	20575,#3
 241                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  0010 7213505f      	bres	20575,#1
 244                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0014 c6505f        	ld	a,20575
 247                     ; 134 }
 250  0017 81            	ret	
 306                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 143 {
 307                     .text:	section	.text,new
 308  0000               _FLASH_ITConfig:
 310  0000 88            	push	a
 311       00000000      OFST:	set	0
 314                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0001 4d            	tnz	a
 317  0002 2711          	jreq	L04
 318  0004 4a            	dec	a
 319  0005 270e          	jreq	L04
 320  0007 ae0091        	ldw	x,#145
 321  000a 89            	pushw	x
 322  000b 5f            	clrw	x
 323  000c 89            	pushw	x
 324  000d ae0010        	ldw	x,#L73
 325  0010 cd0000        	call	_assert_failed
 327  0013 5b04          	addw	sp,#4
 328  0015               L04:
 329                     ; 147   if(NewState != DISABLE)
 331  0015 7b01          	ld	a,(OFST+1,sp)
 332  0017 2706          	jreq	L121
 333                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 335  0019 7212505a      	bset	20570,#1
 337  001d 2004          	jra	L321
 338  001f               L121:
 339                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 341  001f 7213505a      	bres	20570,#1
 342  0023               L321:
 343                     ; 155 }
 346  0023 84            	pop	a
 347  0024 81            	ret	
 382                     .const:	section	.text
 383  0000               L45:
 384  0000 00008000      	dc.l	32768
 385  0004               L65:
 386  0004 0000a000      	dc.l	40960
 387  0008               L06:
 388  0008 00004000      	dc.l	16384
 389  000c               L26:
 390  000c 00004280      	dc.l	17024
 391                     ; 164 void FLASH_EraseByte(uint32_t Address)
 391                     ; 165 {
 392                     .text:	section	.text,new
 393  0000               _FLASH_EraseByte:
 395       00000000      OFST:	set	0
 398                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 400  0000 96            	ldw	x,sp
 401  0001 1c0003        	addw	x,#OFST+3
 402  0004 cd0000        	call	c_ltor
 404  0007 ae0000        	ldw	x,#L45
 405  000a cd0000        	call	c_lcmp
 407  000d 250f          	jrult	L25
 408  000f 96            	ldw	x,sp
 409  0010 1c0003        	addw	x,#OFST+3
 410  0013 cd0000        	call	c_ltor
 412  0016 ae0004        	ldw	x,#L65
 413  0019 cd0000        	call	c_lcmp
 415  001c 252c          	jrult	L46
 416  001e               L25:
 417  001e 96            	ldw	x,sp
 418  001f 1c0003        	addw	x,#OFST+3
 419  0022 cd0000        	call	c_ltor
 421  0025 ae0008        	ldw	x,#L06
 422  0028 cd0000        	call	c_lcmp
 424  002b 250f          	jrult	L64
 425  002d 96            	ldw	x,sp
 426  002e 1c0003        	addw	x,#OFST+3
 427  0031 cd0000        	call	c_ltor
 429  0034 ae000c        	ldw	x,#L26
 430  0037 cd0000        	call	c_lcmp
 432  003a 250e          	jrult	L46
 433  003c               L64:
 434  003c ae00a7        	ldw	x,#167
 435  003f 89            	pushw	x
 436  0040 5f            	clrw	x
 437  0041 89            	pushw	x
 438  0042 ae0010        	ldw	x,#L73
 439  0045 cd0000        	call	_assert_failed
 441  0048 5b04          	addw	sp,#4
 442  004a               L46:
 443                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 445  004a 1e05          	ldw	x,(OFST+5,sp)
 446  004c 7f            	clr	(x)
 447                     ; 171 }
 450  004d 81            	ret	
 494                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 494                     ; 182 {
 495                     .text:	section	.text,new
 496  0000               _FLASH_ProgramByte:
 498       00000000      OFST:	set	0
 501                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 503  0000 96            	ldw	x,sp
 504  0001 1c0003        	addw	x,#OFST+3
 505  0004 cd0000        	call	c_ltor
 507  0007 ae0000        	ldw	x,#L45
 508  000a cd0000        	call	c_lcmp
 510  000d 250f          	jrult	L67
 511  000f 96            	ldw	x,sp
 512  0010 1c0003        	addw	x,#OFST+3
 513  0013 cd0000        	call	c_ltor
 515  0016 ae0004        	ldw	x,#L65
 516  0019 cd0000        	call	c_lcmp
 518  001c 252c          	jrult	L001
 519  001e               L67:
 520  001e 96            	ldw	x,sp
 521  001f 1c0003        	addw	x,#OFST+3
 522  0022 cd0000        	call	c_ltor
 524  0025 ae0008        	ldw	x,#L06
 525  0028 cd0000        	call	c_lcmp
 527  002b 250f          	jrult	L27
 528  002d 96            	ldw	x,sp
 529  002e 1c0003        	addw	x,#OFST+3
 530  0031 cd0000        	call	c_ltor
 532  0034 ae000c        	ldw	x,#L26
 533  0037 cd0000        	call	c_lcmp
 535  003a 250e          	jrult	L001
 536  003c               L27:
 537  003c ae00b8        	ldw	x,#184
 538  003f 89            	pushw	x
 539  0040 5f            	clrw	x
 540  0041 89            	pushw	x
 541  0042 ae0010        	ldw	x,#L73
 542  0045 cd0000        	call	_assert_failed
 544  0048 5b04          	addw	sp,#4
 545  004a               L001:
 546                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 548  004a 1e05          	ldw	x,(OFST+5,sp)
 549  004c 7b07          	ld	a,(OFST+7,sp)
 550  004e f7            	ld	(x),a
 551                     ; 186 }
 554  004f 81            	ret	
 589                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 589                     ; 196 {
 590                     .text:	section	.text,new
 591  0000               _FLASH_ReadByte:
 593       00000000      OFST:	set	0
 596                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 598  0000 96            	ldw	x,sp
 599  0001 1c0003        	addw	x,#OFST+3
 600  0004 cd0000        	call	c_ltor
 602  0007 ae0000        	ldw	x,#L45
 603  000a cd0000        	call	c_lcmp
 605  000d 250f          	jrult	L211
 606  000f 96            	ldw	x,sp
 607  0010 1c0003        	addw	x,#OFST+3
 608  0013 cd0000        	call	c_ltor
 610  0016 ae0004        	ldw	x,#L65
 611  0019 cd0000        	call	c_lcmp
 613  001c 252c          	jrult	L411
 614  001e               L211:
 615  001e 96            	ldw	x,sp
 616  001f 1c0003        	addw	x,#OFST+3
 617  0022 cd0000        	call	c_ltor
 619  0025 ae0008        	ldw	x,#L06
 620  0028 cd0000        	call	c_lcmp
 622  002b 250f          	jrult	L601
 623  002d 96            	ldw	x,sp
 624  002e 1c0003        	addw	x,#OFST+3
 625  0031 cd0000        	call	c_ltor
 627  0034 ae000c        	ldw	x,#L26
 628  0037 cd0000        	call	c_lcmp
 630  003a 250e          	jrult	L411
 631  003c               L601:
 632  003c ae00c6        	ldw	x,#198
 633  003f 89            	pushw	x
 634  0040 5f            	clrw	x
 635  0041 89            	pushw	x
 636  0042 ae0010        	ldw	x,#L73
 637  0045 cd0000        	call	_assert_failed
 639  0048 5b04          	addw	sp,#4
 640  004a               L411:
 641                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 643  004a 1e05          	ldw	x,(OFST+5,sp)
 644  004c f6            	ld	a,(x)
 647  004d 81            	ret	
 691                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 691                     ; 213 {
 692                     .text:	section	.text,new
 693  0000               _FLASH_ProgramWord:
 695       00000000      OFST:	set	0
 698                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 700  0000 96            	ldw	x,sp
 701  0001 1c0003        	addw	x,#OFST+3
 702  0004 cd0000        	call	c_ltor
 704  0007 ae0000        	ldw	x,#L45
 705  000a cd0000        	call	c_lcmp
 707  000d 250f          	jrult	L621
 708  000f 96            	ldw	x,sp
 709  0010 1c0003        	addw	x,#OFST+3
 710  0013 cd0000        	call	c_ltor
 712  0016 ae0004        	ldw	x,#L65
 713  0019 cd0000        	call	c_lcmp
 715  001c 252c          	jrult	L031
 716  001e               L621:
 717  001e 96            	ldw	x,sp
 718  001f 1c0003        	addw	x,#OFST+3
 719  0022 cd0000        	call	c_ltor
 721  0025 ae0008        	ldw	x,#L06
 722  0028 cd0000        	call	c_lcmp
 724  002b 250f          	jrult	L221
 725  002d 96            	ldw	x,sp
 726  002e 1c0003        	addw	x,#OFST+3
 727  0031 cd0000        	call	c_ltor
 729  0034 ae000c        	ldw	x,#L26
 730  0037 cd0000        	call	c_lcmp
 732  003a 250e          	jrult	L031
 733  003c               L221:
 734  003c ae00d7        	ldw	x,#215
 735  003f 89            	pushw	x
 736  0040 5f            	clrw	x
 737  0041 89            	pushw	x
 738  0042 ae0010        	ldw	x,#L73
 739  0045 cd0000        	call	_assert_failed
 741  0048 5b04          	addw	sp,#4
 742  004a               L031:
 743                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 745  004a 721c505b      	bset	20571,#6
 746                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 748  004e 721d505c      	bres	20572,#6
 749                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 751  0052 1e05          	ldw	x,(OFST+5,sp)
 752  0054 7b07          	ld	a,(OFST+7,sp)
 753  0056 f7            	ld	(x),a
 754                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 756  0057 7b08          	ld	a,(OFST+8,sp)
 757  0059 e701          	ld	(1,x),a
 758                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 760  005b 7b09          	ld	a,(OFST+9,sp)
 761  005d e702          	ld	(2,x),a
 762                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 764  005f 7b0a          	ld	a,(OFST+10,sp)
 765  0061 e703          	ld	(3,x),a
 766                     ; 229 }
 769  0063 81            	ret	
 815                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 815                     ; 238 {
 816                     .text:	section	.text,new
 817  0000               _FLASH_ProgramOptionByte:
 819  0000 89            	pushw	x
 820       00000000      OFST:	set	0
 823                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 825  0001 a34800        	cpw	x,#18432
 826  0004 2505          	jrult	L631
 827  0006 a34880        	cpw	x,#18560
 828  0009 250e          	jrult	L041
 829  000b               L631:
 830  000b ae00f0        	ldw	x,#240
 831  000e 89            	pushw	x
 832  000f 5f            	clrw	x
 833  0010 89            	pushw	x
 834  0011 ae0010        	ldw	x,#L73
 835  0014 cd0000        	call	_assert_failed
 837  0017 5b04          	addw	sp,#4
 838  0019               L041:
 839                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 841  0019 721e505b      	bset	20571,#7
 842                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 844  001d 721f505c      	bres	20572,#7
 845                     ; 247   if(Address == 0x4800)
 847  0021 1e01          	ldw	x,(OFST+1,sp)
 848  0023 a34800        	cpw	x,#18432
 849  0026 2605          	jrne	L742
 850                     ; 250     *((NEAR uint8_t*)Address) = Data;
 852  0028 7b05          	ld	a,(OFST+5,sp)
 853  002a f7            	ld	(x),a
 855  002b 2006          	jra	L152
 856  002d               L742:
 857                     ; 255     *((NEAR uint8_t*)Address) = Data;
 859  002d 7b05          	ld	a,(OFST+5,sp)
 860  002f f7            	ld	(x),a
 861                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 863  0030 43            	cpl	a
 864  0031 e701          	ld	(1,x),a
 865  0033               L152:
 866                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 868  0033 a6fd          	ld	a,#253
 869  0035 cd0000        	call	_FLASH_WaitForLastOperation
 871                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 873  0038 721f505b      	bres	20571,#7
 874                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 876                     ; 263 }
 879  003c 85            	popw	x
 880  003d 721e505c      	bset	20572,#7
 881  0041 81            	ret	
 918                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 918                     ; 271 {
 919                     .text:	section	.text,new
 920  0000               _FLASH_EraseOptionByte:
 922  0000 89            	pushw	x
 923       00000000      OFST:	set	0
 926                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 928  0001 a34800        	cpw	x,#18432
 929  0004 2505          	jrult	L051
 930  0006 a34880        	cpw	x,#18560
 931  0009 250e          	jrult	L251
 932  000b               L051:
 933  000b ae0111        	ldw	x,#273
 934  000e 89            	pushw	x
 935  000f 5f            	clrw	x
 936  0010 89            	pushw	x
 937  0011 ae0010        	ldw	x,#L73
 938  0014 cd0000        	call	_assert_failed
 940  0017 5b04          	addw	sp,#4
 941  0019               L251:
 942                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 944  0019 721e505b      	bset	20571,#7
 945                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 947  001d 721f505c      	bres	20572,#7
 948                     ; 280   if(Address == 0x4800)
 950  0021 1e01          	ldw	x,(OFST+1,sp)
 951  0023 a34800        	cpw	x,#18432
 952  0026 2603          	jrne	L172
 953                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 955  0028 7f            	clr	(x)
 957  0029 2005          	jra	L372
 958  002b               L172:
 959                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 961  002b 7f            	clr	(x)
 962                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 964  002c a6ff          	ld	a,#255
 965  002e e701          	ld	(1,x),a
 966  0030               L372:
 967                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 969  0030 a6fd          	ld	a,#253
 970  0032 cd0000        	call	_FLASH_WaitForLastOperation
 972                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 974  0035 721f505b      	bres	20571,#7
 975                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 977                     ; 296 }
 980  0039 85            	popw	x
 981  003a 721e505c      	bset	20572,#7
 982  003e 81            	ret	
1046                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1046                     ; 304 {
1047                     .text:	section	.text,new
1048  0000               _FLASH_ReadOptionByte:
1050  0000 89            	pushw	x
1051  0001 5204          	subw	sp,#4
1052       00000004      OFST:	set	4
1055                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1057                     ; 306   uint16_t res_value = 0;
1059                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1061  0003 a34800        	cpw	x,#18432
1062  0006 2505          	jrult	L261
1063  0008 a34880        	cpw	x,#18560
1064  000b 250e          	jrult	L461
1065  000d               L261:
1066  000d ae0135        	ldw	x,#309
1067  0010 89            	pushw	x
1068  0011 5f            	clrw	x
1069  0012 89            	pushw	x
1070  0013 ae0010        	ldw	x,#L73
1071  0016 cd0000        	call	_assert_failed
1073  0019 5b04          	addw	sp,#4
1074  001b               L461:
1075                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1077  001b 1e05          	ldw	x,(OFST+1,sp)
1078  001d f6            	ld	a,(x)
1079  001e 6b02          	ld	(OFST-2,sp),a
1080                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1082  0020 e601          	ld	a,(1,x)
1083  0022 6b01          	ld	(OFST-3,sp),a
1084                     ; 315   if(Address == 0x4800)	 
1086  0024 a34800        	cpw	x,#18432
1087  0027 2606          	jrne	L723
1088                     ; 317     res_value =	 value_optbyte;
1090  0029 7b02          	ld	a,(OFST-2,sp)
1091  002b 5f            	clrw	x
1092  002c 97            	ld	xl,a
1094  002d 201c          	jra	L133
1095  002f               L723:
1096                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1098  002f 43            	cpl	a
1099  0030 1102          	cp	a,(OFST-2,sp)
1100  0032 2614          	jrne	L333
1101                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1103  0034 7b02          	ld	a,(OFST-2,sp)
1104  0036 97            	ld	xl,a
1105  0037 4f            	clr	a
1106  0038 02            	rlwa	x,a
1107  0039 1f03          	ldw	(OFST-1,sp),x
1108                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1110  003b 5f            	clrw	x
1111  003c 7b01          	ld	a,(OFST-3,sp)
1112  003e 97            	ld	xl,a
1113  003f 01            	rrwa	x,a
1114  0040 1a04          	or	a,(OFST+0,sp)
1115  0042 01            	rrwa	x,a
1116  0043 1a03          	or	a,(OFST-1,sp)
1117  0045 01            	rrwa	x,a
1119  0046 2003          	jra	L133
1120  0048               L333:
1121                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1123  0048 ae5555        	ldw	x,#21845
1124  004b               L133:
1125                     ; 331   return(res_value);
1129  004b 5b06          	addw	sp,#6
1130  004d 81            	ret	
1205                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1205                     ; 341 {
1206                     .text:	section	.text,new
1207  0000               _FLASH_SetLowPowerMode:
1209  0000 88            	push	a
1210       00000000      OFST:	set	0
1213                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1215  0001 a104          	cp	a,#4
1216  0003 2719          	jreq	L671
1217  0005 a108          	cp	a,#8
1218  0007 2715          	jreq	L671
1219  0009 4d            	tnz	a
1220  000a 2712          	jreq	L671
1221  000c a10c          	cp	a,#12
1222  000e 270e          	jreq	L671
1223  0010 ae0157        	ldw	x,#343
1224  0013 89            	pushw	x
1225  0014 5f            	clrw	x
1226  0015 89            	pushw	x
1227  0016 ae0010        	ldw	x,#L73
1228  0019 cd0000        	call	_assert_failed
1230  001c 5b04          	addw	sp,#4
1231  001e               L671:
1232                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1234  001e c6505a        	ld	a,20570
1235  0021 a4f3          	and	a,#243
1236  0023 c7505a        	ld	20570,a
1237                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1239  0026 c6505a        	ld	a,20570
1240  0029 1a01          	or	a,(OFST+1,sp)
1241  002b c7505a        	ld	20570,a
1242                     ; 350 }
1245  002e 84            	pop	a
1246  002f 81            	ret	
1305                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1305                     ; 359 {
1306                     .text:	section	.text,new
1307  0000               _FLASH_SetProgrammingTime:
1309  0000 88            	push	a
1310       00000000      OFST:	set	0
1313                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1315  0001 4d            	tnz	a
1316  0002 2711          	jreq	L012
1317  0004 4a            	dec	a
1318  0005 270e          	jreq	L012
1319  0007 ae0169        	ldw	x,#361
1320  000a 89            	pushw	x
1321  000b 5f            	clrw	x
1322  000c 89            	pushw	x
1323  000d ae0010        	ldw	x,#L73
1324  0010 cd0000        	call	_assert_failed
1326  0013 5b04          	addw	sp,#4
1327  0015               L012:
1328                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1330  0015 7211505a      	bres	20570,#0
1331                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1333  0019 c6505a        	ld	a,20570
1334  001c 1a01          	or	a,(OFST+1,sp)
1335  001e c7505a        	ld	20570,a
1336                     ; 365 }
1339  0021 84            	pop	a
1340  0022 81            	ret	
1365                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1365                     ; 373 {
1366                     .text:	section	.text,new
1367  0000               _FLASH_GetLowPowerMode:
1371                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1373  0000 c6505a        	ld	a,20570
1374  0003 a40c          	and	a,#12
1377  0005 81            	ret	
1402                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1402                     ; 383 {
1403                     .text:	section	.text,new
1404  0000               _FLASH_GetProgrammingTime:
1408                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1410  0000 c6505a        	ld	a,20570
1411  0003 a401          	and	a,#1
1414  0005 81            	ret	
1448                     ; 392 uint32_t FLASH_GetBootSize(void)
1448                     ; 393 {
1449                     .text:	section	.text,new
1450  0000               _FLASH_GetBootSize:
1452  0000 5204          	subw	sp,#4
1453       00000004      OFST:	set	4
1456                     ; 394   uint32_t temp = 0;
1458                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1460  0002 c6505d        	ld	a,20573
1461  0005 5f            	clrw	x
1462  0006 97            	ld	xl,a
1463  0007 90ae0200      	ldw	y,#512
1464  000b cd0000        	call	c_umul
1466  000e 96            	ldw	x,sp
1467  000f 5c            	incw	x
1468  0010 cd0000        	call	c_rtol
1470                     ; 400   if(FLASH->FPR == 0xFF)
1472  0013 c6505d        	ld	a,20573
1473  0016 4c            	inc	a
1474  0017 260d          	jrne	L554
1475                     ; 402     temp += 512;
1477  0019 ae0200        	ldw	x,#512
1478  001c bf02          	ldw	c_lreg+2,x
1479  001e 5f            	clrw	x
1480  001f bf00          	ldw	c_lreg,x
1481  0021 96            	ldw	x,sp
1482  0022 5c            	incw	x
1483  0023 cd0000        	call	c_lgadd
1485  0026               L554:
1486                     ; 406   return(temp);
1488  0026 96            	ldw	x,sp
1489  0027 5c            	incw	x
1490  0028 cd0000        	call	c_ltor
1494  002b 5b04          	addw	sp,#4
1495  002d 81            	ret	
1598                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1598                     ; 418 {
1599                     .text:	section	.text,new
1600  0000               _FLASH_GetFlagStatus:
1602  0000 88            	push	a
1603  0001 88            	push	a
1604       00000001      OFST:	set	1
1607                     ; 419   FlagStatus status = RESET;
1609                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1611  0002 a108          	cp	a,#8
1612  0004 2719          	jreq	L032
1613  0006 a104          	cp	a,#4
1614  0008 2715          	jreq	L032
1615  000a a102          	cp	a,#2
1616  000c 2711          	jreq	L032
1617  000e 4a            	dec	a
1618  000f 270e          	jreq	L032
1619  0011 ae01a5        	ldw	x,#421
1620  0014 89            	pushw	x
1621  0015 5f            	clrw	x
1622  0016 89            	pushw	x
1623  0017 ae0010        	ldw	x,#L73
1624  001a cd0000        	call	_assert_failed
1626  001d 5b04          	addw	sp,#4
1627  001f               L032:
1628                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1630  001f c6505f        	ld	a,20575
1631  0022 1502          	bcp	a,(OFST+1,sp)
1632  0024 2704          	jreq	L525
1633                     ; 426     status = SET; /* FLASH_FLAG is set */
1635  0026 a601          	ld	a,#1
1637  0028 2001          	jra	L725
1638  002a               L525:
1639                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1641  002a 4f            	clr	a
1642  002b               L725:
1643                     ; 434   return status;
1647  002b 85            	popw	x
1648  002c 81            	ret	
1733                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1733                     ; 550 {
1734                     .text:	section	.text,new
1735  0000               _FLASH_WaitForLastOperation:
1737  0000 5203          	subw	sp,#3
1738       00000003      OFST:	set	3
1741                     ; 551   uint8_t flagstatus = 0x00;
1743  0002 0f03          	clr	(OFST+0,sp)
1744                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1746  0004 aeffff        	ldw	x,#65535
1748  0007 2008          	jra	L575
1749  0009               L175:
1750                     ; 578     flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
1752  0009 c6505f        	ld	a,20575
1753  000c a405          	and	a,#5
1754  000e 6b03          	ld	(OFST+0,sp),a
1755                     ; 579     timeout--;
1757  0010 5a            	decw	x
1758  0011               L575:
1759  0011 1f01          	ldw	(OFST-2,sp),x
1760                     ; 576   while((flagstatus == 0x00) && (timeout != 0x00))
1762  0013 7b03          	ld	a,(OFST+0,sp)
1763  0015 2604          	jrne	L106
1765  0017 1e01          	ldw	x,(OFST-2,sp)
1766  0019 26ee          	jrne	L175
1767  001b               L106:
1768                     ; 583   if(timeout == 0x00 )
1770  001b 1e01          	ldw	x,(OFST-2,sp)
1771  001d 2602          	jrne	L306
1772                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1774  001f a602          	ld	a,#2
1775  0021               L306:
1776                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1780  0021 5b03          	addw	sp,#3
1781  0023 81            	ret	
1845                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1845                     ; 599 {
1846                     .text:	section	.text,new
1847  0000               _FLASH_EraseBlock:
1849  0000 89            	pushw	x
1850  0001 5206          	subw	sp,#6
1851       00000006      OFST:	set	6
1854                     ; 600   uint32_t startaddress = 0;
1856                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1858  0003 7b0b          	ld	a,(OFST+5,sp)
1859  0005 a1fd          	cp	a,#253
1860  0007 270b          	jreq	L442
1861  0009 a1f7          	cp	a,#247
1862  000b 2707          	jreq	L442
1863  000d ae0262        	ldw	x,#610
1864  0010 ad50          	call	LC001
1865  0012 7b0b          	ld	a,(OFST+5,sp)
1866  0014               L442:
1867                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1869  0014 a1fd          	cp	a,#253
1870  0016 2611          	jrne	L736
1871                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1873  0018 1e07          	ldw	x,(OFST+1,sp)
1874  001a a30080        	cpw	x,#128
1875  001d 2505          	jrult	L252
1876  001f ae0265        	ldw	x,#613
1877  0022 ad3e          	call	LC001
1878  0024               L252:
1879                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1881  0024 ae8000        	ldw	x,#32768
1883  0027 200f          	jra	L146
1884  0029               L736:
1885                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1887  0029 1e07          	ldw	x,(OFST+1,sp)
1888  002b a3000a        	cpw	x,#10
1889  002e 2505          	jrult	L062
1890  0030 ae026a        	ldw	x,#618
1891  0033 ad2d          	call	LC001
1892  0035               L062:
1893                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1895  0035 ae4000        	ldw	x,#16384
1896  0038               L146:
1897  0038 1f05          	ldw	(OFST-1,sp),x
1898  003a 5f            	clrw	x
1899  003b 1f03          	ldw	(OFST-3,sp),x
1900                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1902  003d a640          	ld	a,#64
1903  003f 1e07          	ldw	x,(OFST+1,sp)
1904  0041 cd0000        	call	c_cmulx
1906  0044 96            	ldw	x,sp
1907  0045 1c0003        	addw	x,#OFST-3
1908  0048 cd0000        	call	c_ladd
1910  004b be02          	ldw	x,c_lreg+2
1911  004d 1f01          	ldw	(OFST-5,sp),x
1912                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1914  004f 721a505b      	bset	20571,#5
1915                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1917                     ; 636     *pwFlash = (uint32_t)0;
1919  0053 4f            	clr	a
1920  0054 721b505c      	bres	20572,#5
1921  0058 e703          	ld	(3,x),a
1922  005a e702          	ld	(2,x),a
1923  005c e701          	ld	(1,x),a
1924  005e f7            	ld	(x),a
1925                     ; 644 }
1928  005f 5b08          	addw	sp,#8
1929  0061 81            	ret	
1930  0062               LC001:
1931  0062 89            	pushw	x
1932  0063 5f            	clrw	x
1933  0064 89            	pushw	x
1934  0065 ae0010        	ldw	x,#L73
1935  0068 cd0000        	call	_assert_failed
1937  006b 5b04          	addw	sp,#4
1938  006d 81            	ret	
2043                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2043                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2043                     ; 657 {
2044                     .text:	section	.text,new
2045  0000               _FLASH_ProgramBlock:
2047  0000 89            	pushw	x
2048  0001 5206          	subw	sp,#6
2049       00000006      OFST:	set	6
2052                     ; 658   uint16_t Count = 0;
2054                     ; 659   uint32_t startaddress = 0;
2056                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2058  0003 7b0b          	ld	a,(OFST+5,sp)
2059  0005 a1fd          	cp	a,#253
2060  0007 2709          	jreq	L272
2061  0009 a1f7          	cp	a,#247
2062  000b 2705          	jreq	L272
2063  000d ae0296        	ldw	x,#662
2064  0010 ad76          	call	LC002
2065  0012               L272:
2066                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2068  0012 7b0c          	ld	a,(OFST+6,sp)
2069  0014 2709          	jreq	L203
2070  0016 a110          	cp	a,#16
2071  0018 2705          	jreq	L203
2072  001a ae0297        	ldw	x,#663
2073  001d ad69          	call	LC002
2074  001f               L203:
2075                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2077  001f 7b0b          	ld	a,(OFST+5,sp)
2078  0021 a1fd          	cp	a,#253
2079  0023 2611          	jrne	L517
2080                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2082  0025 1e07          	ldw	x,(OFST+1,sp)
2083  0027 a30080        	cpw	x,#128
2084  002a 2505          	jrult	L013
2085  002c ae029a        	ldw	x,#666
2086  002f ad57          	call	LC002
2087  0031               L013:
2088                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2090  0031 ae8000        	ldw	x,#32768
2092  0034 200f          	jra	L717
2093  0036               L517:
2094                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2096  0036 1e07          	ldw	x,(OFST+1,sp)
2097  0038 a3000a        	cpw	x,#10
2098  003b 2505          	jrult	L613
2099  003d ae029f        	ldw	x,#671
2100  0040 ad46          	call	LC002
2101  0042               L613:
2102                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2104  0042 ae4000        	ldw	x,#16384
2105  0045               L717:
2106  0045 1f03          	ldw	(OFST-3,sp),x
2107  0047 5f            	clrw	x
2108  0048 1f01          	ldw	(OFST-5,sp),x
2109                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2111  004a a640          	ld	a,#64
2112  004c 1e07          	ldw	x,(OFST+1,sp)
2113  004e cd0000        	call	c_cmulx
2115  0051 96            	ldw	x,sp
2116  0052 5c            	incw	x
2117  0053 cd0000        	call	c_lgadd
2119                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2121  0056 7b0c          	ld	a,(OFST+6,sp)
2122  0058 260a          	jrne	L127
2123                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2125  005a 7210505b      	bset	20571,#0
2126                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2128  005e 7211505c      	bres	20572,#0
2130  0062 2008          	jra	L327
2131  0064               L127:
2132                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2134  0064 7218505b      	bset	20571,#4
2135                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2137  0068 7219505c      	bres	20572,#4
2138  006c               L327:
2139                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2141  006c 5f            	clrw	x
2142  006d 1f05          	ldw	(OFST-1,sp),x
2143  006f               L527:
2144                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2146  006f 1e0d          	ldw	x,(OFST+7,sp)
2147  0071 72fb05        	addw	x,(OFST-1,sp)
2148  0074 f6            	ld	a,(x)
2149  0075 1e03          	ldw	x,(OFST-3,sp)
2150  0077 72fb05        	addw	x,(OFST-1,sp)
2151  007a f7            	ld	(x),a
2152                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2154  007b 1e05          	ldw	x,(OFST-1,sp)
2155  007d 5c            	incw	x
2156  007e 1f05          	ldw	(OFST-1,sp),x
2159  0080 a30040        	cpw	x,#64
2160  0083 25ea          	jrult	L527
2161                     ; 697 }
2164  0085 5b08          	addw	sp,#8
2165  0087 81            	ret	
2166  0088               LC002:
2167  0088 89            	pushw	x
2168  0089 5f            	clrw	x
2169  008a 89            	pushw	x
2170  008b ae0010        	ldw	x,#L73
2171  008e cd0000        	call	_assert_failed
2173  0091 5b04          	addw	sp,#4
2174  0093 81            	ret	
2187                     	xdef	_FLASH_WaitForLastOperation
2188                     	xdef	_FLASH_ProgramBlock
2189                     	xdef	_FLASH_EraseBlock
2190                     	xdef	_FLASH_GetFlagStatus
2191                     	xdef	_FLASH_GetBootSize
2192                     	xdef	_FLASH_GetProgrammingTime
2193                     	xdef	_FLASH_GetLowPowerMode
2194                     	xdef	_FLASH_SetProgrammingTime
2195                     	xdef	_FLASH_SetLowPowerMode
2196                     	xdef	_FLASH_EraseOptionByte
2197                     	xdef	_FLASH_ProgramOptionByte
2198                     	xdef	_FLASH_ReadOptionByte
2199                     	xdef	_FLASH_ProgramWord
2200                     	xdef	_FLASH_ReadByte
2201                     	xdef	_FLASH_ProgramByte
2202                     	xdef	_FLASH_EraseByte
2203                     	xdef	_FLASH_ITConfig
2204                     	xdef	_FLASH_DeInit
2205                     	xdef	_FLASH_Lock
2206                     	xdef	_FLASH_Unlock
2207                     	xref	_assert_failed
2208                     	switch	.const
2209  0010               L73:
2210  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2211  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2212  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2213  0046 5f666c617368  	dc.b	"_flash.c",0
2214                     	xref.b	c_lreg
2215                     	xref.b	c_x
2216                     	xref.b	c_y
2236                     	xref	c_ladd
2237                     	xref	c_cmulx
2238                     	xref	c_lgadd
2239                     	xref	c_rtol
2240                     	xref	c_umul
2241                     	xref	c_lcmp
2242                     	xref	c_ltor
2243                     	end
