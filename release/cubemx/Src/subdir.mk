################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cubemx/Src/main.c \
../cubemx/Src/stm32g0xx_hal_msp.c 

OBJS += \
./cubemx/Src/main.o \
./cubemx/Src/stm32g0xx_hal_msp.o 

C_DEPS += \
./cubemx/Src/main.d \
./cubemx/Src/stm32g0xx_hal_msp.d 


# Each subdirectory must supply rules for building sources it contributes
cubemx/Src/%.o: ../cubemx/Src/%.c
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DSOC_FAMILY_STM32 -DSOC_SERIES_STM32G0 -DUSE_HAL_DRIVER -DSTM32G030xx -I"E:\RT-ThreadStudio\workspace\Main_Nano\drivers" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\Device\ST\STM32G0xx\Include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\Include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\RTOS\Template" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\STM32G0xx_HAL_Driver\Inc" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\STM32G0xx_HAL_Driver\Inc\Legacy" -I"E:\RT-ThreadStudio\workspace\Main_Nano" -I"E:\RT-ThreadStudio\workspace\Main_Nano\applications" -I"E:\RT-ThreadStudio\workspace\Main_Nano" -I"E:\RT-ThreadStudio\workspace\Main_Nano\cubemx\Inc" -I"E:\RT-ThreadStudio\workspace\Main_Nano\cubemx" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\libcpu\arm\common" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\libcpu\arm\cortex-m0" -include"E:\RT-ThreadStudio\workspace\Main_Nano\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

