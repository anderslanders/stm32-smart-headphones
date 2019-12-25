################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o: ../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o: ../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

