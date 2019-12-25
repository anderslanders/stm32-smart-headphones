################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.c \
../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.c \
../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.c \
../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.c \
../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.c 

OBJS += \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.o \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.o \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.o \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.o \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.o 

C_DEPS += \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.d \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.d \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.d \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.d \
./Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.o: ../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/common_tables.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.o: ../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/dct.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.o: ../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/feature_extraction.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.o: ../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/mel_filterbank.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.o: ../Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Src/window.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

