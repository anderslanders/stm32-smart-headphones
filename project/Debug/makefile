################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Drivers/CMSIS/DSP/Source/TransformFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/SupportFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/StatisticsFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/MatrixFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/FilteringFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/FastMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/ComplexMathFunctions/subdir.mk
-include Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
-include Drivers/CMSIS/DSP/Source/BasicMathFunctions/subdir.mk
-include Drivers/BSP/STM32746G-Discovery/subdir.mk
-include Drivers/BSP/Components/wm8994/subdir.mk
-include Drivers/BSP/Components/ts3510/subdir.mk
-include Drivers/BSP/Components/stmpe811/subdir.mk
-include Drivers/BSP/Components/st7789h2/subdir.mk
-include Drivers/BSP/Components/st7735/subdir.mk
-include Drivers/BSP/Components/s5k5cag/subdir.mk
-include Drivers/BSP/Components/ov9655/subdir.mk
-include Drivers/BSP/Components/otm8009a/subdir.mk
-include Drivers/BSP/Components/mfxstm32l152/subdir.mk
-include Drivers/BSP/Components/ft6x06/subdir.mk
-include Drivers/BSP/Components/ft5336/subdir.mk
-include Drivers/BSP/Components/exc7200/subdir.mk
-include Drivers/BSP/Components/adv7533/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
headphone_3_single\ 2.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
headphone_3_single\ 2.list \


# All Target
all: headphone_3_single\ 2.elf secondary-outputs

# Tool invocations
headphone_3_single\ 2.elf: $(OBJS) $(USER_OBJS) /Users/andersliss/STM32CubeIDE/workspace_1.0.2/headphone_3_single\ 2/STM32F746NGHX_FLASH.ld
	arm-none-eabi-gcc -o "headphone_3_single 2.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"/Users/andersliss/STM32CubeIDE/workspace_1.0.2/headphone_3_single 2/STM32F746NGHX_FLASH.ld" --specs=nosys.specs -Wl,-Map="headphone_3_single 2.map" -Wl,--gc-sections -static -L../Middlewares/ST/AI/Lib --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

headphone_3_single\ 2.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "headphone_3_single 2.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
