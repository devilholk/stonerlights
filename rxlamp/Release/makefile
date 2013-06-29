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
rxlamp.hex \

SECONDARY_LIST += \
rxlamp.lst \

SECONDARY_SIZE += \
rxlamp.siz \


# All Target
all: rxlamp.elf secondary-outputs

# Tool invocations
rxlamp.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Summon Linux GCC C Linker'
	arm-none-eabi-gcc -T"/home/m_lovqvist/arm/test1/stm32f_flash.ld" -nodefaultlibs -nostdlib -Wl,-Map,rxlamp.map -mcpu=cortex-m3 -mthumb -o "rxlamp.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

rxlamp.hex: rxlamp.elf
	@echo 'Invoking: ARM Summon Linux GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex rxlamp.elf  "rxlamp.hex"
	@echo 'Finished building: $@'
	@echo ' '

rxlamp.lst: rxlamp.elf
	@echo 'Invoking: ARM Summon Linux GNU Create Listing'
	arm-none-eabi-objdump -h -S rxlamp.elf > "rxlamp.lst"
	@echo 'Finished building: $@'
	@echo ' '

rxlamp.siz: rxlamp.elf
	@echo 'Invoking: ARM Summon Linux GNU Print Size'
	arm-none-eabi-size  --format=berkeley rxlamp.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(ASM_DEPS)$(SECONDARY_FLASH)$(EXECUTABLES)$(SECONDARY_LIST)$(S_UPPER_DEPS) rxlamp.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
