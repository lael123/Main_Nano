################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/risc-v/e310/stack.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/risc-v/e310/context_gcc.S \
../rt-thread/libcpu/risc-v/e310/entry_gcc.S \
../rt-thread/libcpu/risc-v/e310/interrupt_gcc.S 

OBJS += \
./rt-thread/libcpu/risc-v/e310/context_gcc.o \
./rt-thread/libcpu/risc-v/e310/entry_gcc.o \
./rt-thread/libcpu/risc-v/e310/interrupt_gcc.o \
./rt-thread/libcpu/risc-v/e310/stack.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/risc-v/e310/context_gcc.d \
./rt-thread/libcpu/risc-v/e310/entry_gcc.d \
./rt-thread/libcpu/risc-v/e310/interrupt_gcc.d 

C_DEPS += \
./rt-thread/libcpu/risc-v/e310/stack.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/risc-v/e310/%.o: ../rt-thread/libcpu/risc-v/e310/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/risc-v/e310/%.o: ../rt-thread/libcpu/risc-v/e310/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

