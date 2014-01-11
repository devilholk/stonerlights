################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../core_cm3.c \
../main.c \
../misc.c \
../stm32f10x_adc.c \
../stm32f10x_bkp.c \
../stm32f10x_can.c \
../stm32f10x_cec.c \
../stm32f10x_crc.c \
../stm32f10x_dac.c \
../stm32f10x_dbgmcu.c \
../stm32f10x_dma.c \
../stm32f10x_exti.c \
../stm32f10x_flash.c \
../stm32f10x_fsmc.c \
../stm32f10x_gpio.c \
../stm32f10x_i2c.c \
../stm32f10x_it.c \
../stm32f10x_iwdg.c \
../stm32f10x_pwr.c \
../stm32f10x_rcc.c \
../stm32f10x_rtc.c \
../stm32f10x_sdio.c \
../stm32f10x_spi.c \
../stm32f10x_tim.c \
../stm32f10x_usart.c \
../stm32f10x_wwdg.c \
../system_stm32f10x.c 

OBJS += \
./core_cm3.o \
./main.o \
./misc.o \
./stm32f10x_adc.o \
./stm32f10x_bkp.o \
./stm32f10x_can.o \
./stm32f10x_cec.o \
./stm32f10x_crc.o \
./stm32f10x_dac.o \
./stm32f10x_dbgmcu.o \
./stm32f10x_dma.o \
./stm32f10x_exti.o \
./stm32f10x_flash.o \
./stm32f10x_fsmc.o \
./stm32f10x_gpio.o \
./stm32f10x_i2c.o \
./stm32f10x_it.o \
./stm32f10x_iwdg.o \
./stm32f10x_pwr.o \
./stm32f10x_rcc.o \
./stm32f10x_rtc.o \
./stm32f10x_sdio.o \
./stm32f10x_spi.o \
./stm32f10x_tim.o \
./stm32f10x_usart.o \
./stm32f10x_wwdg.o \
./system_stm32f10x.o 

C_DEPS += \
./core_cm3.d \
./main.d \
./misc.d \
./stm32f10x_adc.d \
./stm32f10x_bkp.d \
./stm32f10x_can.d \
./stm32f10x_cec.d \
./stm32f10x_crc.d \
./stm32f10x_dac.d \
./stm32f10x_dbgmcu.d \
./stm32f10x_dma.d \
./stm32f10x_exti.d \
./stm32f10x_flash.d \
./stm32f10x_fsmc.d \
./stm32f10x_gpio.d \
./stm32f10x_i2c.d \
./stm32f10x_it.d \
./stm32f10x_iwdg.d \
./stm32f10x_pwr.d \
./stm32f10x_rcc.d \
./stm32f10x_rtc.d \
./stm32f10x_sdio.d \
./stm32f10x_spi.d \
./stm32f10x_tim.d \
./stm32f10x_usart.d \
./stm32f10x_wwdg.d \
./system_stm32f10x.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	arm-none-eabi-gcc -std=gnu99 -DSTM32F10X_LD_VL -DUSE_STDPERIPH_DRIVER -Os -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


