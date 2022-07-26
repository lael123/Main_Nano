################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
ASM_SRCS += \
../rt-thread/libcpu/arm/cortex-r4/context_ccs.asm \
../rt-thread/libcpu/arm/cortex-r4/start_ccs.asm \
../rt-thread/libcpu/arm/cortex-r4/vector_ccs.asm 

C_SRCS += \
../rt-thread/libcpu/arm/cortex-r4/cpu.c \
../rt-thread/libcpu/arm/cortex-r4/interrupt.c \
../rt-thread/libcpu/arm/cortex-r4/stack.c \
../rt-thread/libcpu/arm/cortex-r4/trap.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/arm/cortex-r4/context_gcc.S \
../rt-thread/libcpu/arm/cortex-r4/start_gcc.S \
../rt-thread/libcpu/arm/cortex-r4/vector_gcc.S 

OBJS += \
./rt-thread/libcpu/arm/cortex-r4/context_ccs.o \
./rt-thread/libcpu/arm/cortex-r4/context_gcc.o \
./rt-thread/libcpu/arm/cortex-r4/cpu.o \
./rt-thread/libcpu/arm/cortex-r4/interrupt.o \
./rt-thread/libcpu/arm/cortex-r4/stack.o \
./rt-thread/libcpu/arm/cortex-r4/start_ccs.o \
./rt-thread/libcpu/arm/cortex-r4/start_gcc.o \
./rt-thread/libcpu/arm/cortex-r4/trap.o \
./rt-thread/libcpu/arm/cortex-r4/vector_ccs.o \
./rt-thread/libcpu/arm/cortex-r4/vector_gcc.o 

ASM_DEPS += \
./rt-thread/libcpu/arm/cortex-r4/context_ccs.d \
./rt-thread/libcpu/arm/cortex-r4/start_ccs.d \
./rt-thread/libcpu/arm/cortex-r4/vector_ccs.d 

S_UPPER_DEPS += \
./rt-thread/libcpu/arm/cortex-r4/context_gcc.d \
./rt-thread/libcpu/arm/cortex-r4/start_gcc.d \
./rt-thread/libcpu/arm/cortex-r4/vector_gcc.d 

C_DEPS += \
./rt-thread/libcpu/arm/cortex-r4/cpu.d \
./rt-thread/libcpu/arm/cortex-r4/interrupt.d \
./rt-thread/libcpu/arm/cortex-r4/stack.d \
./rt-thread/libcpu/arm/cortex-r4/trap.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/arm/cortex-r4/%.o: ../rt-thread/libcpu/arm/cortex-r4/%.asm
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/arm/cortex-r4/%.o: ../rt-thread/libcpu/arm/cortex-r4/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/arm/cortex-r4/%.o: ../rt-thread/libcpu/arm/cortex-r4/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

