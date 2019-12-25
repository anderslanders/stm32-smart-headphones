################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/app_x-cube-ai.c \
../Src/hannWin512.c \
../Src/main.c \
../Src/network_multitest.c \
../Src/network_multitest_data.c \
../Src/stm32f7xx_hal_msp.c \
../Src/stm32f7xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32f7xx.c 

OBJS += \
./Src/app_x-cube-ai.o \
./Src/hannWin512.o \
./Src/main.o \
./Src/network_multitest.o \
./Src/network_multitest_data.o \
./Src/stm32f7xx_hal_msp.o \
./Src/stm32f7xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32f7xx.o 

C_DEPS += \
./Src/app_x-cube-ai.d \
./Src/hannWin512.d \
./Src/main.d \
./Src/network_multitest.d \
./Src/network_multitest_data.d \
./Src/stm32f7xx_hal_msp.d \
./Src/stm32f7xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/app_x-cube-ai.o: ../Src/app_x-cube-ai.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/app_x-cube-ai.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/hannWin512.o: ../Src/hannWin512.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/hannWin512.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/main.o: ../Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/network_multitest.o: ../Src/network_multitest.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/network_multitest.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/network_multitest_data.o: ../Src/network_multitest_data.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/network_multitest_data.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f7xx_hal_msp.o: ../Src/stm32f7xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f7xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/stm32f7xx_it.o: ../Src/stm32f7xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/stm32f7xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/syscalls.o: ../Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/sysmem.o: ../Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/system_stm32f7xx.o: ../Src/system_stm32f7xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F746xx -DARM_MATH_CM7 -DDEBUG '-D__FPU_PRESENT=1' -c -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/ST/AI/Inc -I../Drivers/CMSIS/DSP/Source/MatrixFunctions -I../Drivers/STM32F7xx_HAL_Driver/Inc -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Include -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/STM32746G-Discovery -I../Inc -I../Drivers/CMSIS/Include -I../Core/Inc -I../X-CUBE-AI -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/BSP/Components -I"/Users/andersliss/Google Drive/Dokument/Resurser/CubeMX/STM32CubeFunctionPack_SENSING1_V3.0.0/Middlewares/ST/STM32_AI_AudioPreprocessing_Library/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../X-CUBE-AI/App -I/Users/andersliss/Downloads/STM32Cube_FW_F7_V1.15.0/Drivers/CMSIS/DSP/Source -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Src/system_stm32f7xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

