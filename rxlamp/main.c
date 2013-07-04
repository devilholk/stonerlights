/**
  ******************************************************************************
  * @file OptimizedI2Cexamples/src/main.c
  * @author  MCD Application Team
  * @version  V4.0.0
  * @date     06/18/2010
  * @brief  Main program body
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2010 STMicroelectronics</center></h2>
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_adc.h"
#include "stm32f10x_usart.h"

#define true -1;
#define false 0;

typedef struct {
	int start;
	int goal;
	int time;
	int total;
} ramp;

volatile int newSeedCount = 0;

typedef uint32_t  u4;
typedef struct ranctx { u4 a; u4 b; u4 c; u4 d; } ranctx;

#define rot(x,k) (((x)<<(k))|((x)>>(32-(k))))
u4 ranval( ranctx *x ) {
    u4 e = x->a - rot(x->b, 27);
    x->a = x->b ^ rot(x->c, 17);
    x->b = x->c + x->d;
    x->c = x->d + e;
    x->d = e + x->a;
    return x->d;
}

void raninit( ranctx *x, u4 seed ) {
    u4 i;
    x->a = 0xf1ea5eed, x->b = x->c = x->d = seed;
    for (i=0; i<20; ++i) {
        (void)ranval(x);
    }
}

volatile char resetdma;

ranctx prng;
int test=0;
int pre=0;
volatile int comtimeout=0;


void GPIO_Configuration(void);
void NVIC_Configuration(void);

static __IO uint32_t TimingDelay;
void Delay(__IO uint32_t nTime);

void GPIO_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1 | GPIO_Pin_2 ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 ;
	GPIO_Init(GPIOB, &GPIO_InitStructure);


	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 ;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &GPIO_InitStructure);


	TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
	TIM_OCInitTypeDef TIM_OCInitStructure;


	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3 | RCC_APB1Periph_TIM2, ENABLE);

	TIM_TimeBaseStructure.TIM_Period = 4096;
	TIM_TimeBaseStructure.TIM_Prescaler = 0;
	TIM_TimeBaseStructure.TIM_ClockDivision = 0;
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
	TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);

	TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);


	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
	TIM_OCInitStructure.TIM_Pulse = 0;
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;

	TIM_OC2Init(TIM2, &TIM_OCInitStructure);
	TIM_OC3Init(TIM2, &TIM_OCInitStructure);
	TIM_OC3Init(TIM3, &TIM_OCInitStructure);


	/* TIM3 enable counter */
	TIM_Cmd(TIM3, ENABLE);
	TIM_Cmd(TIM2, ENABLE);

}


void RCC_Configuration(void)
{


	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	/* DMA clock enable */
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);

	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_AFIO, ENABLE);

	// GPIOA and GPIOB Periph clock enable
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB, ENABLE);

	SysTick_Config(SystemCoreClock / 1000);

}


void Delay(__IO uint32_t nTime)
{
	TimingDelay = nTime;

	while(TimingDelay != 0);
}

/**
 * @brief  Decrements the TimingDelay variable.
 * @param  None
 * @retval None
 */
void TimingDelay_Decrement(void)
{

	if (comtimeout == 1) {
		resetdma = false;
	}

	if (comtimeout>0) {
		comtimeout--;
	} else {

		test++;
		colorWheel(&test, &TIM3->CCR3, &TIM2->CCR3, &TIM2->CCR2);
	}


	if (TimingDelay != 0x00)
	{
		TimingDelay--;
	}
}


inline void colorWheel(int *cycle, int *R, int *G, int *B) {
	*cycle = *cycle < 0 ? (12287 + *cycle) % 12288 : *cycle % 12288;
	int frac = *cycle % 4096;
	switch ((*cycle >> 12) & 0b11) {
	case 3:
	case 0: //R-G
		*R = 4095 - frac;
		*G = frac;
		*B = 0;
		return;
	case 1: //G-B
		*R = 0;
		*G = 4095 - frac;
		*B = frac;
		return;
	case 2: //B-R
		*R = frac;
		*G = 0;
		*B = 4095 - frac;
		return;
	}
}



/**
  * @brief  Main program
  * @param  None
  * @retval : None
  */


int randiff (int spread) {
	return (((spread*(int)(ranval(&prng) & 0xFFFF))>>16) -(spread>>1));
}

int ranrange(int min, int max) {
	return ((((max-min)*(int)(ranval(&prng) & 0xFFFF))>>16) +min);
}




int main(void) {

	RCC_Configuration();
	GPIO_Configuration();
    NVIC_Configuration();


    USART_InitTypeDef USART_InitStructure;

    USART_InitStructure.USART_BaudRate = 115200;//230400;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx;

    /* Configure USARTy */
    USART_Init(USART1, &USART_InitStructure);

    /* Enable USARTy */
    USART_Cmd(USART1, ENABLE);

    char LEDBuffer[6];
    resetdma = true;
    while(1) {

    	DMA_InitTypeDef DMA_InitStructure;

    	/* USARTy_Tx_DMA_Channel (triggered by USARTy Tx event) Config */
    	DMA_DeInit(DMA1_Channel5);	//5 = usart1  rx
    	DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)&USART1->DR;
    	DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)LEDBuffer;
    	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
    	DMA_InitStructure.DMA_BufferSize = 7;
    	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
    	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
    	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
    	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
    	DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
    	DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;
    	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
    	DMA_Init(DMA1_Channel5, &DMA_InitStructure);

    	/* Enable USARTy DMA TX Channel */
    	DMA_Cmd(DMA1_Channel5, ENABLE);

    	/* Enable USARTy DMA TX request */
    	USART_DMACmd(USART1, USART_DMAReq_Rx, ENABLE);

    	while (DMA_GetFlagStatus(DMA1_FLAG_TC5)==RESET && resetdma );

    	resetdma = true;

    	if (LEDBuffer[0] == 0x2) {
    		//Lilla glaslampan har id 0x1  3, 2, 1
    		//Gurgaslingan har id 0x2      2, 3, 1  (int)Ledbuffer[0]
    		TIM3->CCR2 = *(uint16_t*)&LEDBuffer[1];  //(LEDBuffer[0]<<8 | LEDBuffer[1])&0xFFF;
    		TIM3->CCR3 = *(uint16_t*)&LEDBuffer[3];  //(LEDBuffer[0]<<8 | LEDBuffer[1])&0xFFF;
			TIM3->CCR1 = *(uint16_t*)&LEDBuffer[5];  //(LEDBuffer[0]<<8 | LEDBuffer[1])&0xFFF;
			comtimeout=1000;
    	}


    	//TIM3->CCR2 = (LEDBuffer[2]<<8 | LEDBuffer[3])&0xFFF;
    	//TIM3->CCR1 = (LEDBuffer[4]<<8 | LEDBuffer[5])&0xFFF;

//char *bytes = (char *) ints;
    //short *bytes = (short *) bytes[3];
    }


}



/**
  * @brief  Configures NVIC and Vector Table base location.
  * @param  None
  * @retval : None
  */
void NVIC_Configuration(void)
{

    /* 1 bit for pre-emption priority, 3 bits for subpriority */

    
//
//    NVIC_SetPriority(I2C2_EV_IRQn, 0x00);
//    NVIC_EnableIRQ(I2C2_EV_IRQn);
//
//    NVIC_SetPriority(I2C2_ER_IRQn, 0x01);
//    NVIC_EnableIRQ(I2C2_ER_IRQn);
//
}

#ifdef  USE_FULL_ASSERT


/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
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


/******************* (C) COPYRIGHT 2010 STMicroelectronics *****END OF FILE****/
