/**
  ******************************************************************************
  * @file    InfraRed/IR_Decoding_PWMI/inc/ir_decode.h
  * @author  MCD Application Team
  * @version V2.0.0
  * @date    25-January-2012
  * @brief   This file contains all the functions prototypes for the IR Decode 
  *          firmware library.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * FOR MORE INFORMATION PLEASE READ CAREFULLY THE LICENSE AGREEMENT FILE
  * LOCATED IN THE ROOT DIRECTORY OF THIS FIRMWARE PACKAGE.
  *
  * <h2><center>&copy; COPYRIGHT 2012 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __IR_DECODE_H
#define __IR_DECODE_H

#ifdef __cplusplus
 extern "C" {
#endif

//#if !defined (IR_RC5_PROTOCOL) && !defined (IR_SIRC_PROTOCOL)
//#define IR_RC5_PROTOCOL
//#define IR_SIRC_PROTOCOL
//#endif 
   
/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
//#include "stm32100e_eval_lcd.h"
//#include <stdio.h>

#if defined IR_RC5_PROTOCOL
  #include "rc5_decode.h"
#elif defined  IR_SIRC_PROTOCOL
  #include "sirc_decode.h"
#endif
   
/** @addtogroup STM32F10x_Infrared_Decoders
  * @{
  */

/** @addtogroup IR_Decoding_PWMI
  * @{
  */

/** @addtogroup IR_DECODE
  * @{
  */

/** @defgroup IR_DECODE_Exported_Types
  * @{
  */

/** @defgroup IR_DECODE_Exported_Constants
  * @{
  */
   
#define IR_TIM                 TIM1                     /*!< Timer used for IR decoding */
//#define TIM_PRESCALER          TIM1_PRESCALER_1                       /* !< TIM prescaler */
#define TIM_PRESCALER          3                       /* !< TIM prescaler */
//#define IR_TIM_CLK             RCC_APB1Periph_TIM3      /*!< Clock of the used timer */
//#define IR_TIM_IRQn            TIM1_IRQn             /*!< IR TIM IRQ */
#define IR_TIM_Channel         TIM1_CHANNEL_1            /*!< IR TIM Channel */

#define IR_GPIO_PORT           GPIOC                    /*!< Port which IR output is connected */
//#define IR_GPIO_PORT_CLK       RCC_APB2Periph_GPIOA     /*!< IR pin GPIO Clock Port */
#define IR_GPIO_PIN            GPIO_PIN_6               /*!< Pin which IR is connected */
#define IR_GPIO_PORT_IRQ			 ITC_IRQ_PORTC

#define IR_LED_PORT						 GPIOB
#define IR_LED_PIN						 GPIO_PIN_5
//#define IR_LED_PORT_CLK				 RCC_APB2Periph_GPIOC
#define CTRL_PORT							 GPIOD

/**
  * @{
  */
/**
  * @}
  */

/** @defgroup IR_DECODE_Exported_Functions
  * @{
  */
void IR_DeInit(void);
void IR_Init(void);
StatusYesOrNo IR_Decode(IR_Frame_TypeDef *ir_frame);
void IR_ResetPacket(void);
void IR_DataSampling(uint32_t lowPulseLength, uint32_t wholePulseLength);
//void Stop_Commands(void);
void Decrease_SysTick(void);


#ifdef __cplusplus
}
#endif

#endif /* __IR_DECODE_H */
/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */
/******************* (C) COPYRIGHT 2012 STMicroelectronics *****END OF FILE****/
