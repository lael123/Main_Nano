################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/cpu.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/mem.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/cpu.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/mem.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/cpu.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/mem.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -DSOC_FAMILY_STM32 -DSOC_SERIES_STM32G0 -DUSE_HAL_DRIVER -DSTM32G030xx -I"E:\RT-ThreadStudio\workspace\Main_Nano\drivers" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\Device\ST\STM32G0xx\Include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\Include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\CMSIS\RTOS\Template" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\STM32G0xx_HAL_Driver\Inc" -I"E:\RT-ThreadStudio\workspace\Main_Nano\libraries\STM32G0xx_HAL_Driver\Inc\Legacy" -I"E:\RT-ThreadStudio\workspace\Main_Nano" -I"E:\RT-ThreadStudio\workspace\Main_Nano\applications" -I"E:\RT-ThreadStudio\workspace\Main_Nano" -I"E:\RT-ThreadStudio\workspace\Main_Nano\cubemx\Inc" -I"E:\RT-ThreadStudio\workspace\Main_Nano\cubemx" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\include" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\libcpu\arm\common" -I"E:\RT-ThreadStudio\workspace\Main_Nano\rt-thread\libcpu\arm\cortex-m0" -include"E:\RT-ThreadStudio\workspace\Main_Nano\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

