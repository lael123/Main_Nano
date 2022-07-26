################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/risc-v/rv32m1/interrupt.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/risc-v/rv32m1/interrupt_gcc.S 

OBJS += \
./rt-thread/libcpu/risc-v/rv32m1/interrupt.o \
./rt-thread/libcpu/risc-v/rv32m1/interrupt_gcc.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/risc-v/rv32m1/interrupt_gcc.d 

C_DEPS += \
./rt-thread/libcpu/risc-v/rv32m1/interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/risc-v/rv32m1/%.o: ../rt-thread/libcpu/risc-v/rv32m1/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/risc-v/rv32m1/%.o: ../rt-thread/libcpu/risc-v/rv32m1/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

