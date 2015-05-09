   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.10.2 - 02 Nov 2011
   3                     ; Generator (Limited) V4.3.7 - 29 Nov 2011
   4                     ; Optimizer V4.3.6 - 29 Nov 2011
  71                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  71                     ; 54 {
  73                     .text:	section	.text,new
  74  0000               _WWDG_Init:
  76  0000 89            	pushw	x
  77       00000000      OFST:	set	0
  80                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  82  0001 9f            	ld	a,xl
  83  0002 a180          	cp	a,#128
  84  0004 250e          	jrult	L01
  85  0006 ae0038        	ldw	x,#56
  86  0009 89            	pushw	x
  87  000a 5f            	clrw	x
  88  000b 89            	pushw	x
  89  000c ae0000        	ldw	x,#L33
  90  000f cd0000        	call	_assert_failed
  92  0012 5b04          	addw	sp,#4
  93  0014               L01:
  94                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  96  0014 357f50d2      	mov	20690,#127
  97                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  99  0018 7b01          	ld	a,(OFST+1,sp)
 100  001a aac0          	or	a,#192
 101  001c c750d1        	ld	20689,a
 102                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 104  001f 7b02          	ld	a,(OFST+2,sp)
 105  0021 a47f          	and	a,#127
 106  0023 aa40          	or	a,#64
 107  0025 c750d2        	ld	20690,a
 108                     ; 61 }
 111  0028 85            	popw	x
 112  0029 81            	ret	
 147                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 147                     ; 70 {
 148                     .text:	section	.text,new
 149  0000               _WWDG_SetCounter:
 151  0000 88            	push	a
 152       00000000      OFST:	set	0
 155                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 157  0001 a180          	cp	a,#128
 158  0003 250e          	jrult	L02
 159  0005 ae0048        	ldw	x,#72
 160  0008 89            	pushw	x
 161  0009 5f            	clrw	x
 162  000a 89            	pushw	x
 163  000b ae0000        	ldw	x,#L33
 164  000e cd0000        	call	_assert_failed
 166  0011 5b04          	addw	sp,#4
 167  0013               L02:
 168                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 170  0013 7b01          	ld	a,(OFST+1,sp)
 171  0015 a47f          	and	a,#127
 172  0017 c750d1        	ld	20689,a
 173                     ; 77 }
 176  001a 84            	pop	a
 177  001b 81            	ret	
 200                     ; 86 uint8_t WWDG_GetCounter(void)
 200                     ; 87 {
 201                     .text:	section	.text,new
 202  0000               _WWDG_GetCounter:
 206                     ; 88   return(WWDG->CR);
 208  0000 c650d1        	ld	a,20689
 211  0003 81            	ret	
 234                     ; 96 void WWDG_SWReset(void)
 234                     ; 97 {
 235                     .text:	section	.text,new
 236  0000               _WWDG_SWReset:
 240                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 242  0000 358050d1      	mov	20689,#128
 243                     ; 99 }
 246  0004 81            	ret	
 282                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 282                     ; 109 {
 283                     .text:	section	.text,new
 284  0000               _WWDG_SetWindowValue:
 286  0000 88            	push	a
 287       00000000      OFST:	set	0
 290                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 292  0001 a180          	cp	a,#128
 293  0003 250e          	jrult	L43
 294  0005 ae006f        	ldw	x,#111
 295  0008 89            	pushw	x
 296  0009 5f            	clrw	x
 297  000a 89            	pushw	x
 298  000b ae0000        	ldw	x,#L33
 299  000e cd0000        	call	_assert_failed
 301  0011 5b04          	addw	sp,#4
 302  0013               L43:
 303                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 305  0013 7b01          	ld	a,(OFST+1,sp)
 306  0015 a47f          	and	a,#127
 307  0017 aa40          	or	a,#64
 308  0019 c750d2        	ld	20690,a
 309                     ; 114 }
 312  001c 84            	pop	a
 313  001d 81            	ret	
 326                     	xdef	_WWDG_SetWindowValue
 327                     	xdef	_WWDG_SWReset
 328                     	xdef	_WWDG_GetCounter
 329                     	xdef	_WWDG_SetCounter
 330                     	xdef	_WWDG_Init
 331                     	xref	_assert_failed
 332                     .const:	section	.text
 333  0000               L33:
 334  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 335  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 336  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 337  0036 5f777764672e  	dc.b	"_wwdg.c",0
 357                     	end
