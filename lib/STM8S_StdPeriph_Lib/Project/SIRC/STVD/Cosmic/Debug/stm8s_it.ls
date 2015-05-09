   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  51                     ; 50 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  51                     ; 51 {
  52                     .text:	section	.text,new
  53  0000               f_NonHandledInterrupt:
  57                     ; 55 }
  60  0000 80            	iret	
  82                     ; 63 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  82                     ; 64 {
  83                     .text:	section	.text,new
  84  0000               f_TRAP_IRQHandler:
  88                     ; 68 }
  91  0000 80            	iret	
 113                     ; 74 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 113                     ; 75 {
 114                     .text:	section	.text,new
 115  0000               f_TLI_IRQHandler:
 119                     ; 79 }
 122  0000 80            	iret	
 144                     ; 86 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 144                     ; 87 {
 145                     .text:	section	.text,new
 146  0000               f_AWU_IRQHandler:
 150                     ; 93 }
 153  0000 80            	iret	
 175                     ; 100 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 175                     ; 101 {
 176                     .text:	section	.text,new
 177  0000               f_CLK_IRQHandler:
 181                     ; 105 }
 184  0000 80            	iret	
 207                     ; 112 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 207                     ; 113 {
 208                     .text:	section	.text,new
 209  0000               f_EXTI_PORTA_IRQHandler:
 213                     ; 117 }
 216  0000 80            	iret	
 239                     ; 124 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 239                     ; 125 {
 240                     .text:	section	.text,new
 241  0000               f_EXTI_PORTB_IRQHandler:
 245                     ; 129 }
 248  0000 80            	iret	
 271                     ; 136 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 271                     ; 137 {
 272                     .text:	section	.text,new
 273  0000               f_EXTI_PORTC_IRQHandler:
 277                     ; 141 }
 280  0000 80            	iret	
 303                     ; 148 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 303                     ; 149 {
 304                     .text:	section	.text,new
 305  0000               f_EXTI_PORTD_IRQHandler:
 309                     ; 153 }
 312  0000 80            	iret	
 335                     ; 160 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 335                     ; 161 {
 336                     .text:	section	.text,new
 337  0000               f_EXTI_PORTE_IRQHandler:
 341                     ; 165 }
 344  0000 80            	iret	
 366                     ; 211 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 366                     ; 212 {
 367                     .text:	section	.text,new
 368  0000               f_SPI_IRQHandler:
 372                     ; 216 }
 375  0000 80            	iret	
 401                     ; 223 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 401                     ; 224 {
 402                     .text:	section	.text,new
 403  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 405  0000 8a            	push	cc
 406  0001 84            	pop	a
 407  0002 a4bf          	and	a,#191
 408  0004 88            	push	a
 409  0005 86            	pop	cc
 410  0006 3b0002        	push	c_x+2
 411  0009 be00          	ldw	x,c_x
 412  000b 89            	pushw	x
 413  000c 3b0002        	push	c_y+2
 414  000f be00          	ldw	x,c_y
 415  0011 89            	pushw	x
 418                     ; 228 	if ((TIM1_GetFlagStatus(TIM1_FLAG_UPDATE) != RESET))
 420  0012 ae0001        	ldw	x,#1
 421  0015 cd0000        	call	_TIM1_GetFlagStatus
 423  0018 4d            	tnz	a
 424  0019 2709          	jreq	L151
 425                     ; 231     TIM1_ClearFlag(TIM1_FLAG_UPDATE);
 427  001b ae0001        	ldw	x,#1
 428  001e cd0000        	call	_TIM1_ClearFlag
 430                     ; 235     IR_ResetPacket();
 432  0021 cd0000        	call	_IR_ResetPacket
 434  0024               L151:
 435                     ; 237 }
 438  0024 85            	popw	x
 439  0025 bf00          	ldw	c_y,x
 440  0027 320002        	pop	c_y+2
 441  002a 85            	popw	x
 442  002b bf00          	ldw	c_x,x
 443  002d 320002        	pop	c_x+2
 444  0030 80            	iret	
 446                     	switch	.ubsct
 447  0000               L551_ICValue2:
 448  0000 00000000      	ds.b	4
 449  0004               L351_ICValue1:
 450  0004 00000000      	ds.b	4
 497                     ; 244 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 497                     ; 245 {
 498                     .text:	section	.text,new
 499  0000               f_TIM1_CAP_COM_IRQHandler:
 501  0000 8a            	push	cc
 502  0001 84            	pop	a
 503  0002 a4bf          	and	a,#191
 504  0004 88            	push	a
 505  0005 86            	pop	cc
 506  0006 3b0002        	push	c_x+2
 507  0009 be00          	ldw	x,c_x
 508  000b 89            	pushw	x
 509  000c 3b0002        	push	c_y+2
 510  000f be00          	ldw	x,c_y
 511  0011 89            	pushw	x
 512  0012 be02          	ldw	x,c_lreg+2
 513  0014 89            	pushw	x
 514  0015 be00          	ldw	x,c_lreg
 515  0017 89            	pushw	x
 518                     ; 265   if((TIM1_GetFlagStatus(TIM1_FLAG_CC1) != RESET))
 520  0018 ae0002        	ldw	x,#2
 521  001b cd0000        	call	_TIM1_GetFlagStatus
 523  001e 4d            	tnz	a
 524  001f 2725          	jreq	L102
 525                     ; 268     TIM1_ClearFlag(TIM1_FLAG_CC1);
 527  0021 ae0002        	ldw	x,#2
 528  0024 cd0000        	call	_TIM1_ClearFlag
 530                     ; 270     ICValue2 = TIM1_GetCapture1();
 532  0027 cd0000        	call	_TIM1_GetCapture1
 534  002a cd0000        	call	c_uitolx
 536  002d ae0000        	ldw	x,#L551_ICValue2
 537  0030 cd0000        	call	c_rtol
 539                     ; 271     IR_DataSampling(ICValue1, ICValue2); 
 541  0033 be02          	ldw	x,L551_ICValue2+2
 542  0035 89            	pushw	x
 543  0036 be00          	ldw	x,L551_ICValue2
 544  0038 89            	pushw	x
 545  0039 be06          	ldw	x,L351_ICValue1+2
 546  003b 89            	pushw	x
 547  003c be04          	ldw	x,L351_ICValue1
 548  003e 89            	pushw	x
 549  003f cd0000        	call	_IR_DataSampling
 551  0042 5b08          	addw	sp,#8
 553  0044 201b          	jra	L302
 554  0046               L102:
 555                     ; 273   else  if((TIM1_GetFlagStatus(TIM1_FLAG_CC2) != RESET))
 557  0046 ae0004        	ldw	x,#4
 558  0049 cd0000        	call	_TIM1_GetFlagStatus
 560  004c 4d            	tnz	a
 561  004d 2712          	jreq	L302
 562                     ; 276     TIM1_ClearFlag(TIM1_FLAG_CC2);
 564  004f ae0004        	ldw	x,#4
 565  0052 cd0000        	call	_TIM1_ClearFlag
 567                     ; 278     ICValue1 = TIM1_GetCapture2();
 569  0055 cd0000        	call	_TIM1_GetCapture2
 571  0058 cd0000        	call	c_uitolx
 573  005b ae0004        	ldw	x,#L351_ICValue1
 574  005e cd0000        	call	c_rtol
 576  0061               L302:
 577                     ; 280 }
 580  0061 85            	popw	x
 581  0062 bf00          	ldw	c_lreg,x
 582  0064 85            	popw	x
 583  0065 bf02          	ldw	c_lreg+2,x
 584  0067 85            	popw	x
 585  0068 bf00          	ldw	c_y,x
 586  006a 320002        	pop	c_y+2
 587  006d 85            	popw	x
 588  006e bf00          	ldw	c_x,x
 589  0070 320002        	pop	c_x+2
 590  0073 80            	iret	
 613                     ; 312  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 613                     ; 313 {
 614                     .text:	section	.text,new
 615  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 619                     ; 317 }
 622  0000 80            	iret	
 645                     ; 324  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 645                     ; 325 {
 646                     .text:	section	.text,new
 647  0000               f_TIM2_CAP_COM_IRQHandler:
 651                     ; 329 }
 654  0000 80            	iret	
 677                     ; 366  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 677                     ; 367 {
 678                     .text:	section	.text,new
 679  0000               f_UART1_TX_IRQHandler:
 683                     ; 371 }
 686  0000 80            	iret	
 709                     ; 378  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 709                     ; 379 {
 710                     .text:	section	.text,new
 711  0000               f_UART1_RX_IRQHandler:
 715                     ; 383 }
 718  0000 80            	iret	
 740                     ; 391 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 740                     ; 392 {
 741                     .text:	section	.text,new
 742  0000               f_I2C_IRQHandler:
 746                     ; 396 }
 749  0000 80            	iret	
 771                     ; 471  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 771                     ; 472 {
 772                     .text:	section	.text,new
 773  0000               f_ADC1_IRQHandler:
 777                     ; 477     return;
 780  0000 80            	iret	
 805                     ; 500  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 805                     ; 501 {
 806                     .text:	section	.text,new
 807  0000               f_TIM4_UPD_OVF_IRQHandler:
 809  0000 8a            	push	cc
 810  0001 84            	pop	a
 811  0002 a4bf          	and	a,#191
 812  0004 88            	push	a
 813  0005 86            	pop	cc
 814  0006 3b0002        	push	c_x+2
 815  0009 be00          	ldw	x,c_x
 816  000b 89            	pushw	x
 817  000c 3b0002        	push	c_y+2
 818  000f be00          	ldw	x,c_y
 819  0011 89            	pushw	x
 822                     ; 505 	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
 824  0012 a601          	ld	a,#1
 825  0014 cd0000        	call	_TIM4_ClearFlag
 827                     ; 506 	Decrease_SysTick();
 829  0017 cd0000        	call	_Decrease_SysTick
 831                     ; 508 }
 834  001a 85            	popw	x
 835  001b bf00          	ldw	c_y,x
 836  001d 320002        	pop	c_y+2
 837  0020 85            	popw	x
 838  0021 bf00          	ldw	c_x,x
 839  0023 320002        	pop	c_x+2
 840  0026 80            	iret	
 863                     ; 516 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 863                     ; 517 {
 864                     .text:	section	.text,new
 865  0000               f_EEPROM_EEC_IRQHandler:
 869                     ; 521 }
 872  0000 80            	iret	
 884                     	xref	_Decrease_SysTick
 885                     	xref	_IR_DataSampling
 886                     	xref	_IR_ResetPacket
 887                     	xdef	f_EEPROM_EEC_IRQHandler
 888                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 889                     	xdef	f_ADC1_IRQHandler
 890                     	xdef	f_I2C_IRQHandler
 891                     	xdef	f_UART1_RX_IRQHandler
 892                     	xdef	f_UART1_TX_IRQHandler
 893                     	xdef	f_TIM2_CAP_COM_IRQHandler
 894                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 895                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 896                     	xdef	f_TIM1_CAP_COM_IRQHandler
 897                     	xdef	f_SPI_IRQHandler
 898                     	xdef	f_EXTI_PORTE_IRQHandler
 899                     	xdef	f_EXTI_PORTD_IRQHandler
 900                     	xdef	f_EXTI_PORTC_IRQHandler
 901                     	xdef	f_EXTI_PORTB_IRQHandler
 902                     	xdef	f_EXTI_PORTA_IRQHandler
 903                     	xdef	f_CLK_IRQHandler
 904                     	xdef	f_AWU_IRQHandler
 905                     	xdef	f_TLI_IRQHandler
 906                     	xdef	f_TRAP_IRQHandler
 907                     	xdef	f_NonHandledInterrupt
 908                     	xref	_TIM4_ClearFlag
 909                     	xref	_TIM1_ClearFlag
 910                     	xref	_TIM1_GetFlagStatus
 911                     	xref	_TIM1_GetCapture2
 912                     	xref	_TIM1_GetCapture1
 913                     	xref.b	c_lreg
 914                     	xref.b	c_x
 915                     	xref.b	c_y
 934                     	xref	c_rtol
 935                     	xref	c_uitolx
 936                     	end
