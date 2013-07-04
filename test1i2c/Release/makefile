################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
test1i2c.hex \

SECONDARY_LIST += \
test1i2c.lst \

SECONDARY_SIZE += \
test1i2c.siz \


# All Target
all: test1i2c.elf secondary-outputs

# Tool invocations
test1i2c.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Summon Linux GCC C Linker'
	arm-none-eabi-gcc -T"/home/m_lovqvist/arm/test1/stm32f_flash.ld" -nodefaultlibs -nostdlib -L/lib/gcc/arm-none-eabi/4.7.3 -Wl,-Map,test1i2c.map -mcpu=cortex-m3 -mthumb -o "test1i2c.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

test1i2c.hex: test1i2c.elf
	@echo 'Invoking: ARM Summon Linux GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex test1i2c.elf  "test1i2c.hex"
	@echo 'Finished building: $@'
	@echo ' '

test1i2c.lst: test1i2c.elf
	@echo 'Invoking: ARM Summon Linux GNU Create Listing'
	arm-none-eabi-objdump -h -S test1i2c.elf > "test1i2c.lst"
	@echo 'Finished building: $@'
	@echo ' '

test1i2c.siz: test1i2c.elf
	@echo 'Invoking: ARM Summon Linux GNU Print Size'
	arm-none-eabi-size  --format=berkeley test1i2c.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) test1i2c.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
