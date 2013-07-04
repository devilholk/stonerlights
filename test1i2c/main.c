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
#include "I2CRoutines.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_adc.h"

volatile signed int newSeedCount = 0;

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


/** @addtogroup Optimized I2C examples
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
ErrorStatus HSEStartUpStatus;
/* Buffer of data to be received by I2C1 */
uint8_t Buffer_Rx1[255];
/* Buffer of data to be transmitted by I2C1 */
uint8_t Buffer_Tx1[255] = {0x5, 0x6,0x8,0xA};
/* Buffer of data to be received by I2C2 */
uint8_t Buffer_Rx2[255];
/* Buffer of data to be transmitted by I2C2 */
uint8_t Buffer_Tx2[255] = {0xF, 0xB, 0xC,0xD};
extern __IO uint8_t Tx_Idx1 , Rx_Idx1;
extern __IO uint8_t Tx_Idx2 , Rx_Idx2;

/* Private function prototypes -----------------------------------------------*/
void GPIO_Configuration(void);
void NVIC_Configuration(void);
/* Private functions ---------------------------------------------------------*/
void TimingDelay_Decrement(void);
static __IO uint32_t TimingDelay;
	ranctx prng;
void Delay(__IO uint32_t nTime);

void GPIO_Configuration(void)
{
	GPIO_InitTypeDef GPIO_InitStructure;

	// Configure PD0 and PD2 in output pushpull mode
	GPIO_InitStructure.GPIO_Pin = 1; //PA0
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	GPIO_InitStructure.GPIO_Pin = 1<<8; //PB8
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
        GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
        GPIO_Init(GPIOA, &GPIO_InitStructure);

	
}

//void LED_Blue_OFF() {
//	GPIOB->BSRR  = 1 << 14;
//}
//
//void LED_Blue_ON() {
//	GPIOB->BRR  = 1 << 14;
//}

void LED_White_OFF () {
	GPIOA->BSRR  = 1;
}

void LED_White_ON() {
	GPIOA->BRR  = 1;
}


void RCC_Configuration(void)
{
	/* DMA clock enable */
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);

	//I2C clock
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);


	/* Enable GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_AFIO, ENABLE);


	// GPIOA and GPIOB Periph clock enable
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_ADC1, ENABLE);

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


struct  {
	int tr;
	int tg;
	int tb;
	int mode;
	int timeout;
	int timeleft;

} ledctrl[6];



 typedef struct {
	 int col;
	 int light;
	 int time;
	 int target_time;
	 int target_col;
	 int target_light;
 } stonerled;

 int color;
 

/**
  * @brief  Main program
  * @param  None
  * @retval : None
  */
int main(void)

{

	raninit(&prng, 5);


	RCC_Configuration();
	GPIO_Configuration();
    NVIC_Configuration();
   // I2C_LowLevel_Init(I2C2);
  
    LED_White_ON();


    I2C_LowLevel_Init(I2C1);


/* Use I2C1 as Master which is communicating with I2C1 of another STM32F10x device */
int toggle=0;

int led[16*3]; //Y*12+X*3 = RGB

Buffer_Tx1[0] =0x00;// =(uint8_t*) {0x00, 0x20, 0x04};
Buffer_Tx1[1] =0x20;// =(uint8_t*) {0x00, 0x20, 0x04};
Buffer_Tx1[2] =0x10; //0x04;// =(uint8_t*) {0x00, 0x20, 0x04};
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,3,DMA, 0x70<<1);
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,3,DMA, 0x71<<1);
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,3,DMA, 0x72<<1);

Buffer_Tx1[0] =0xFE;// =(uint8_t*) {0x00, 0x20, 0x04};
Buffer_Tx1[1] =0x03;// =(uint8_t*) {0x00, 0x20, 0x04};
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,2,DMA, 0x70<<1);
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,2,DMA, 0x71<<1);
I2C_Master_BufferWrite(I2C1, Buffer_Tx1,2,DMA, 0x72<<1);


GPIOB->BRR  = 1<<8; //Reset PB8 (OE of PCA9685)

//GPIOB->BSRR  = 1<<8; //Reset PB8 (OE of PCA9685)


int c[5], d[5];

int s=0;
int sd=1;

USART_InitTypeDef USART_InitStructure;

USART_InitStructure.USART_BaudRate = 460800;//230400;
USART_InitStructure.USART_WordLength = USART_WordLength_8b;
USART_InitStructure.USART_StopBits = USART_StopBits_1;
USART_InitStructure.USART_Parity = USART_Parity_No;
USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
USART_InitStructure.USART_Mode = USART_Mode_Rx;

/* Configure USARTy */
USART_Init(USART1, &USART_InitStructure);

/* Enable USARTy */
USART_Cmd(USART1, ENABLE);

//
//while(1) {
//
//	DMA_InitTypeDef DMA_InitStructure;
//
//	/* USARTy_Tx_DMA_Channel (triggered by USARTy Tx event) Config */
//	DMA_DeInit(DMA1_Channel5);	//5 = usart1  rx
//	DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)&USART1->DR;
//	DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)Buffer_Tx1;
//	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
//	DMA_InitStructure.DMA_BufferSize = 65;
//	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
//	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
//	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
//	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
//	DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
//	DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;
//	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
//	DMA_Init(DMA1_Channel5, &DMA_InitStructure);
//
//	/* Enable USARTy DMA TX Channel */
//	DMA_Cmd(DMA1_Channel5, ENABLE);
//
//	/* Enable USARTy DMA TX request */
//	USART_DMACmd(USART1, USART_DMAReq_Rx, ENABLE);
//
//
//	while (DMA_GetFlagStatus(DMA1_FLAG_TC5)==RESET);
//
//	if (toggle^=1) {
//		LED_White_ON();
//	} else {
//		LED_White_OFF();
//	}
//
//	 I2C_Master_BufferWrite(I2C1, Buffer_Tx1,65,DMA, 0x61<<1);
////}
	int light=0;
 
 stonerled sl[5];

void random_stoner_light(stonerled *led) {
	led->col = led->target_col;
	led->light = led->target_light;
	
	if ((led->light < 128) || (led->light > (2047-128)) ) {
		//Posible quick jump if we were very dark or bright
		led->target_time=((500L*(ranval(&prng) & 0xFFFFL))>>16)+50;
	} else {
		led->target_time=((3000L*(ranval(&prng) & 0xFFFFL))>>16)+2000;
	}
	
	led->time=0;
	led->target_col=((12288L*(ranval(&prng) & 0xFFFFL))>>16);
	led->target_light=((2048L*(ranval(&prng) & 0xFFFFL))>>16);
}



 int i=0;
 for (i=0;i!=5;i++) {
	sl[i].target_col =0;
	sl[i].target_light =0;
	 random_stoner_light(&sl[i]);
 }
 

while(1)
    {


	int t;
	    
	
	for (t=0;t!=5;t++) {

		if (++sl[t].time >= sl[t].target_time) {
			random_stoner_light(&sl[t]);
		} 
		
		color = sl[t].col + (sl[t].target_col - sl[t].col) * sl[t].time / sl[t].target_time;
		light = sl[t].light + (sl[t].target_light - sl[t].light) * sl[t].time / sl[t].target_time;
		
		
		colorWheel(&color,&ledctrl[0].tr, &ledctrl[0].tg, &ledctrl[0].tb);

		light&=2047;		
		if (light>=1024) {
		    ledctrl[0].tr = (ledctrl[0].tr * (2048-light) + 4096*(light-1024) )/ 1024;
		    ledctrl[0].tg = (ledctrl[0].tg * (2048-light) + 4096*(light-1024)) / 1024;
		    ledctrl[0].tb = (ledctrl[0].tb * (2048-light) + 4096*(light-1024)) / 1024;
		} else {
		    ledctrl[0].tr = ledctrl[0].tr * light / 1024;
		    ledctrl[0].tg = ledctrl[0].tg * light / 1024;
		    ledctrl[0].tb = ledctrl[0].tb * light / 1024;
		}
	    
	    
		led[t*3]=(ledctrl[0].tr);
		led[t*3+1]=(ledctrl[0].tg);
		led[t*3+2]=(ledctrl[0].tb);
	}





		Buffer_Tx1[0]=0x06;
		int i;
		for (i=0;i!=5;i++) {
			int p = led[i*3+0];
			if (p>0xFFF) p=0xFFF;

			Buffer_Tx1[i*12+1] =0;
			Buffer_Tx1[i*12+2] =0;
			Buffer_Tx1[i*12+3] =p & 0xFF;
			Buffer_Tx1[i*12+4] =(p>>8) & 0xF;

			p = led[i*3+1];
			if (p>0xFFF) p=0xFFF;

			Buffer_Tx1[i*12+5] =0;
			Buffer_Tx1[i*12+6] =0;
			Buffer_Tx1[i*12+7] =p & 0xFF;
			Buffer_Tx1[i*12+8] =(p>>8) & 0xF;

			p = led[i*3+2];
			if (p>0xFFF) p=0xFFF;

			Buffer_Tx1[i*12+9] =0;
			Buffer_Tx1[i*12+10] =0;
			Buffer_Tx1[i*12+11] =p & 0xFF;
			Buffer_Tx1[i*12+12] =(p>>8) & 0xF;

		}

		Buffer_Tx1[5*12+1] =0;
		Buffer_Tx1[5*12+2] =0;
		Buffer_Tx1[5*12+3] =0x3;
		Buffer_Tx1[5*12+4] =0x3;








	if (toggle^=1) {
			LED_White_ON();
		} else {
			LED_White_OFF();
		}
		 //I2C_Master_BufferWrite(I2C1, Buffer_Tx1,120,Interrupt, 0x28);
		 I2C_Master_BufferWrite(I2C1, Buffer_Tx1,65,DMA, 0x70<<1);
		 I2C_Master_BufferWrite(I2C1, Buffer_Tx1,65,DMA, 0x71<<1);
		 I2C_Master_BufferWrite(I2C1, Buffer_Tx1,65,DMA, 0x72<<1);

		// Delay(200);

		 Delay(1);
		 // I2C_Master_BufferRead(I2C1,Buffer_Rx1,120,Polling, 0x28);

/*  		if (newSeedCount-- <= 0) {

			newSeedCount=(int)ranval(&prng) & 0xFF; //between 0 and 255 mS to next se$
			raninit(&prng, ADC_GetConversionValue(ADC1));
			ADC_SoftwareStartConvCmd(ADC1, ENABLE);

		}
 */
 
		
	}
   
/* Use I2C1 as Slave */
/*! When using Slave with DMA, uncomment //#define SLAVE_DMA_USE in the stm32f10x_it.c file.*/
 /*I2C_Slave_BufferReadWrite(I2C1, DMA);

 while(1); */

}






/**
  * @brief  Configures NVIC and Vector Table base location.
  * @param  None
  * @retval : None
  */
void NVIC_Configuration(void)
{

    /* 1 bit for pre-emption priority, 3 bits for subpriority */
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);

    NVIC_SetPriority(I2C1_EV_IRQn, 0x00); 
    NVIC_EnableIRQ(I2C1_EV_IRQn);

    NVIC_SetPriority(I2C1_ER_IRQn, 0x01); 
    NVIC_EnableIRQ(I2C1_ER_IRQn);
    
//
//    NVIC_SetPriority(I2C2_EV_IRQn, 0x00);
//    NVIC_EnableIRQ(I2C2_EV_IRQn);
//
//    NVIC_SetPriority(I2C2_ER_IRQn, 0x01);
//    NVIC_EnableIRQ(I2C2_ER_IRQn);
//
}

