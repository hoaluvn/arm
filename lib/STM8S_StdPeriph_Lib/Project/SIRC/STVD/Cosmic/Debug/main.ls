   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  22                     	bsct
  23  0000               _Cmd_Codes:
  24  0000 1a            	dc.b	26
  25  0001 18            	dc.b	24
  26  0002 1b            	dc.b	27
  27  0003 1c            	dc.b	28
  28  0004 04            	dc.b	4
 106                     ; 72 void main(void)
 106                     ; 73 {
 108                     .text:	section	.text,new
 109  0000               _main:
 111  0000 5203          	subw	sp,#3
 112       00000003      OFST:	set	3
 115                     ; 77 	cmd_1d = cmd_2d = 0xff;
 117  0002 a6ff          	ld	a,#255
 118  0004 6b02          	ld	(OFST-1,sp),a
 119                     ; 79 	GPIO_Config(); // Pull up using pins
 121  0006 cd0000        	call	_GPIO_Config
 123                     ; 81 	IR_Init();
 125  0009 cd0000        	call	_IR_Init
 127                     ; 82 	TIM4_Config();
 129  000c cd0000        	call	_TIM4_Config
 131                     ; 84 	enableInterrupts();
 134  000f 9a            	rim	
 136  0010               L34:
 137                     ; 88 		if(IR_Decode(&IR_FRAME) != NO) {
 139  0010 ae0004        	ldw	x,#_IR_FRAME
 140  0013 cd0000        	call	_IR_Decode
 142  0016 4d            	tnz	a
 143  0017 27f7          	jreq	L34
 144                     ; 89 			cmd = IR_FRAME.Command;
 146  0019 b604          	ld	a,_IR_FRAME
 147  001b 6b01          	ld	(OFST-2,sp),a
 148                     ; 91 				for(i=0; i< 5; i++) 
 150  001d 4f            	clr	a
 151  001e 6b03          	ld	(OFST+0,sp),a
 152  0020               L15:
 153                     ; 93 					if (cmd == Cmd_Codes[i])
 155  0020 5f            	clrw	x
 156  0021 97            	ld	xl,a
 157  0022 e600          	ld	a,(_Cmd_Codes,x)
 158  0024 1101          	cp	a,(OFST-2,sp)
 159  0026 263e          	jrne	L75
 160                     ; 95 						GPIO_WriteLow(IR_LED_PORT, IR_LED_PIN); // LED ON
 162  0028 4b20          	push	#32
 163  002a ae5005        	ldw	x,#20485
 164  002d cd0000        	call	_GPIO_WriteLow
 166  0030 84            	pop	a
 167                     ; 97 						GPIO_Write(CTRL_PORT, 0xff & ~(0x1 << i));
 169  0031 7b03          	ld	a,(OFST+0,sp)
 170  0033 5f            	clrw	x
 171  0034 97            	ld	xl,a
 172  0035 a601          	ld	a,#1
 173  0037 5d            	tnzw	x
 174  0038 2704          	jreq	L22
 175  003a               L42:
 176  003a 48            	sll	a
 177  003b 5a            	decw	x
 178  003c 26fc          	jrne	L42
 179  003e               L22:
 180  003e 43            	cpl	a
 181  003f 88            	push	a
 182  0040 ae500f        	ldw	x,#20495
 183  0043 cd0000        	call	_GPIO_Write
 185  0046 ae0258        	ldw	x,#600
 186  0049 84            	pop	a
 187                     ; 99 						Delay_ms(600);
 189  004a 89            	pushw	x
 190  004b 5f            	clrw	x
 191  004c 89            	pushw	x
 192  004d cd0000        	call	_Delay_ms
 194  0050 5b04          	addw	sp,#4
 195                     ; 100 						GPIO_Write(CTRL_PORT, 0xff);
 197  0052 4bff          	push	#255
 198  0054 ae500f        	ldw	x,#20495
 199  0057 cd0000        	call	_GPIO_Write
 201  005a 84            	pop	a
 202                     ; 102 						GPIO_WriteHigh(IR_LED_PORT, IR_LED_PIN); // LED OFF
 204  005b 4b20          	push	#32
 205  005d ae5005        	ldw	x,#20485
 206  0060 cd0000        	call	_GPIO_WriteHigh
 208  0063 84            	pop	a
 209                     ; 104 						break;
 211  0064 2008          	jra	L55
 212  0066               L75:
 213                     ; 91 				for(i=0; i< 5; i++) 
 215  0066 0c03          	inc	(OFST+0,sp)
 218  0068 7b03          	ld	a,(OFST+0,sp)
 219  006a a105          	cp	a,#5
 220  006c 25b2          	jrult	L15
 221  006e               L55:
 222                     ; 108 			cmd_2d = cmd_1d;
 224                     ; 109 			cmd_1d = cmd;
 226  006e 7b01          	ld	a,(OFST-2,sp)
 227  0070 6b02          	ld	(OFST-1,sp),a
 228  0072 209c          	jra	L34
 265                     ; 118 void Delay_ms(uint32_t delay)
 265                     ; 119 {
 266                     .text:	section	.text,new
 267  0000               _Delay_ms:
 269       00000000      OFST:	set	0
 272                     ; 120 	SysTick = delay;
 274  0000 1e05          	ldw	x,(OFST+5,sp)
 275  0002 bf02          	ldw	_SysTick+2,x
 276  0004 1e03          	ldw	x,(OFST+3,sp)
 277  0006 bf00          	ldw	_SysTick,x
 278                     ; 121 	nop();
 284  0008 ae0000        	ldw	x,#_SysTick
 285  000b               L77:
 286                     ; 124 		nop();
 291  000b 9d            	nop	
 292                     ; 122 	while(SysTick > 0)
 294  000c cd0000        	call	c_lzmp
 296  000f 26fa          	jrne	L77
 297                     ; 126 }
 300  0011 81            	ret	
 324                     ; 128 void Decrease_SysTick()
 324                     ; 129 {
 325                     .text:	section	.text,new
 326  0000               _Decrease_SysTick:
 330                     ; 130 	SysTick--;
 332  0000 ae0000        	ldw	x,#_SysTick
 333  0003 a601          	ld	a,#1
 335                     ; 131 }
 338  0005 cc0000        	jp	c_lgsbc
 366                     ; 133 void TIM4_Config()
 366                     ; 134 {
 367                     .text:	section	.text,new
 368  0000               _TIM4_Config:
 372                     ; 135   CLK_PeripheralClockConfig (CLK_PERIPHERAL_TIMER4 , ENABLE); 
 374  0000 ae0401        	ldw	x,#1025
 375  0003 cd0000        	call	_CLK_PeripheralClockConfig
 377                     ; 136   TIM4_DeInit(); 
 379  0006 cd0000        	call	_TIM4_DeInit
 381                     ; 138   TIM4_TimeBaseInit(TIM4_PRESCALER_128, 0x3D); // fMaster=8MHz, 128 and 0x3E == Interrupt 1mS 
 383  0009 ae073d        	ldw	x,#1853
 384  000c cd0000        	call	_TIM4_TimeBaseInit
 386                     ; 139   TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE); 
 388  000f ae0101        	ldw	x,#257
 389  0012 cd0000        	call	_TIM4_ITConfig
 391                     ; 140   TIM4_Cmd(ENABLE);    // Enable TIM4  
 393  0015 a601          	ld	a,#1
 395                     ; 141 }
 398  0017 cc0000        	jp	_TIM4_Cmd
 422                     ; 143 void GPIO_Config(void)
 422                     ; 144 {
 423                     .text:	section	.text,new
 424  0000               _GPIO_Config:
 428                     ; 145 	GPIO_Init(CTRL_PORT, GPIO_PIN_ALL, GPIO_MODE_OUT_PP_HIGH_SLOW);
 430  0000 4bd0          	push	#208
 431  0002 4bff          	push	#255
 432  0004 ae500f        	ldw	x,#20495
 433  0007 cd0000        	call	_GPIO_Init
 435  000a 85            	popw	x
 436                     ; 146 }
 439  000b 81            	ret	
 474                     ; 250 void assert_failed(uint8_t* file, uint32_t line)
 474                     ; 251 { 
 475                     .text:	section	.text,new
 476  0000               _assert_failed:
 480  0000               L351:
 481  0000 20fe          	jra	L351
 550                     	xdef	_main
 551                     	xdef	_Delay_ms
 552                     	xdef	_TIM4_Config
 553                     	xdef	_GPIO_Config
 554                     	switch	.ubsct
 555  0000               _SysTick:
 556  0000 00000000      	ds.b	4
 557                     	xdef	_SysTick
 558                     	xdef	_Cmd_Codes
 559  0004               _IR_FRAME:
 560  0004 0000          	ds.b	2
 561                     	xdef	_IR_FRAME
 562                     	xdef	_Decrease_SysTick
 563                     	xref	_IR_Decode
 564                     	xref	_IR_Init
 565                     	xdef	_assert_failed
 566                     	xref	_TIM4_ITConfig
 567                     	xref	_TIM4_Cmd
 568                     	xref	_TIM4_TimeBaseInit
 569                     	xref	_TIM4_DeInit
 570                     	xref	_GPIO_WriteLow
 571                     	xref	_GPIO_WriteHigh
 572                     	xref	_GPIO_Write
 573                     	xref	_GPIO_Init
 574                     	xref	_CLK_PeripheralClockConfig
 594                     	xref	c_lgsbc
 595                     	xref	c_lzmp
 596                     	end
