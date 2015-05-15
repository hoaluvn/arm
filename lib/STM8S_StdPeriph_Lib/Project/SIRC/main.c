/**
  ******************************************************************************
  * @file    GPIO_Toggle\main.c
  * @author  MCD Application Team
  * @version  V2.2.0
  * @date     30-September-2014
  * @brief   This file contains the main function for GPIO Toggle example.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
#include "ir_decode.h"

/**
  * @addtogroup GPIO_Toggle
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/** @defgroup MAIN_Private_Variables
  * @{
  */
IR_Frame_TypeDef IR_FRAME;
/**
  * @}
  */
uint8_t Cmd_Codes[5] = {
	0x1a,	// pin 1
	0x18, // pin 2
	0x1b, // pin 3
	0x1c, // pin 4
	0x4	  // pin 5
};

__IO uint8_t SysTick;
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

/* Private functions ---------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/
//void AWU_Config(void);
void GPIO_Config(void);
//uint32_t LSIMeasurment(void);
void TIM4_Config(void);
void Delay_ms(uint8_t);

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */
void main(void)
{
	uint8_t cmd, cmd_1d, cmd_2d;
	uint8_t i;
	
	cmd_1d = cmd_2d = 0xff;
	
	GPIO_Config(); // Pull up using pins
	//AWU_Config();  // Call before IR_Init() since it use TIM1 to measure LSI freq
	IR_Init();
	TIM4_Config();

	enableInterrupts();

	while (1)
	{
		if(IR_Decode(&IR_FRAME) != NO) {
			cmd = IR_FRAME.Command;
			//if (cmd == cmd_1d && cmd == cmd_2d) {
				for(i=0; i< 5; i++) 
				{
					if (cmd == Cmd_Codes[i])
					{
						GPIO_WriteLow(IR_LED_PORT, IR_LED_PIN); // LED ON
					
						GPIO_Write(CTRL_PORT, 0xff & ~(0x1 << i));
						//halt();
						Delay_ms(30);
						GPIO_Write(CTRL_PORT, 0xff);
					
						GPIO_WriteHigh(IR_LED_PORT, IR_LED_PIN); // LED OFF
						Delay_ms(200);
						//cmd_1d = cmd_2d = 0xff;
						break;
					}
				}
			//}
			cmd_2d = cmd_1d;
			cmd_1d = cmd;
		}
		//halt(); // program halted. wait for interrupt
	}

}

//BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin);

void Delay_ms(uint8_t delay)
{
	SysTick = delay;
	nop();
	while(SysTick != 0)
	{
		nop();
	}
}

void Decrease_SysTick()
{
	SysTick--;
}

void TIM4_Config()
{
  CLK_PeripheralClockConfig (CLK_PERIPHERAL_TIMER4 , ENABLE); 
  TIM4_DeInit(); 
  /* Time base configuration */  
  TIM4_TimeBaseInit(TIM4_PRESCALER_128, 0x3D); // fMaster=8MHz, 128 and 0x3E == Interrupt 1mS 
  TIM4_ITConfig(TIM4_IT_UPDATE, ENABLE); 
  TIM4_Cmd(ENABLE);    // Enable TIM4  
}

void GPIO_Config(void)
{
	GPIO_Init(CTRL_PORT, GPIO_PIN_ALL, GPIO_MODE_OUT_PP_HIGH_SLOW);
}


//void AWU_Config(void)
//{
  /* Initialization of AWU */
  /* LSI calibration for accurate auto wake up time base*/
//	#ifdef LSI_CALIB
//	AWU_LSICalibrationConfig(LSIMeasurment());
//	#endif
	
  /* The delay corresponds to the time we will stay in Halt mode */
//  AWU_Init(AWU_TIMEBASE_512MS);
//}

#ifdef LSI_CALIB
uint32_t LSIMeasurment(void)
{
  
  uint32_t lsi_freq_hz = 0x0;
  uint32_t fmaster = 0x0;
  uint16_t ICValue1 = 0x0;
  uint16_t ICValue2 = 0x0;

  /* Get master frequency */
  fmaster = CLK_GetClockFreq();

  /* Enable the LSI measurement: LSI clock connected to timer Input Capture 1 */
  AWU->CSR |= AWU_CSR_MSR;

#if defined (STM8S903) || defined (STM8S103) || defined (STM8S003)
  /* Measure the LSI frequency with TIMER Input Capture 1 */
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
	TIM1_ICInit(TIM1_CHANNEL_1, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV8, 0);
	
  /* Enable TIM1 */
  TIM1_Cmd(ENABLE);
  
  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue1 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);
  
  /* wait a capture on cc1 */
  while((TIM1->SR1 & TIM1_FLAG_CC1) != TIM1_FLAG_CC1);
  /* Get CCR1 value*/
  ICValue2 = TIM1_GetCapture1();
  TIM1_ClearFlag(TIM1_FLAG_CC1);
  
  /* Disable IC1 input capture */
  TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
  /* Disable timer2 */
  TIM1_Cmd(DISABLE);
  
#else  
  /* Measure the LSI frequency with TIMER Input Capture 1 */
  
  /* Capture only every 8 events!!! */
  /* Enable capture of TI1 */
  TIM3_ICInit(TIM3_CHANNEL_1, TIM3_ICPOLARITY_RISING, TIM3_ICSELECTION_DIRECTTI, TIM3_ICPSC_DIV8, 0);

  /* Enable TIM3 */
  TIM3_Cmd(ENABLE);

	/* wait a capture on cc1 */
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
	/* Get CCR1 value*/
  ICValue1 = TIM3_GetCapture1();
  TIM3_ClearFlag(TIM3_FLAG_CC1);

  /* wait a capture on cc1 */
  while ((TIM3->SR1 & TIM3_FLAG_CC1) != TIM3_FLAG_CC1);
    /* Get CCR1 value*/
  ICValue2 = TIM3_GetCapture1();
	TIM3_ClearFlag(TIM3_FLAG_CC1);

  /* Disable IC1 input capture */
  TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
  /* Disable timer3 */
  TIM3_Cmd(DISABLE);
#endif /* STM8S903 || STM8S103*/

  /* Compute LSI clock frequency */
  lsi_freq_hz = (8 * fmaster) / (ICValue2 - ICValue1);
  
  /* Disable the LSI measurement: LSI clock disconnected from timer Input Capture 1 */
  AWU->CSR &= (uint8_t)(~AWU_CSR_MSR);

 return (lsi_freq_hz);
}
#endif

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
