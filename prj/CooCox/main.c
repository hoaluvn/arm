#include <stm32f10x.h>
#include <stm32f10x_conf.h>

#include <stm32f10x_rcc.h>
#include <stm32f10x_gpio.h>

void Delay(volatile uint32_t nCount) {
    for (; nCount != 0; nCount--);
}

int main(void) {
    /* SystemInit() startup_stm32f10x_md_vl.c */

    GPIO_InitTypeDef GPIO_InitStructure;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC , ENABLE);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

    GPIO_Init( GPIOC , &GPIO_InitStructure);

    while (1) {
        GPIOC->ODR |= GPIO_ODR_ODR13;
        Delay(0x2FFFF);

        GPIOC->ODR &= ~GPIO_ODR_ODR13;
        Delay(0xFFFFF);
    }

    return 0;
}
