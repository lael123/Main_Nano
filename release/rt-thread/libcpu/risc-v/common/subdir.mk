################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/risc-v/common/cpuport.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/risc-v/common/context_gcc.S 

OBJS += \
./rt-thread/libcpu/risc-v/common/context_gcc.o \
./rt-thread/libcpu/risc-v/common/cpuport.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/risc-v/common/context_gcc.d 

C_DEPS += \
./rt-thread/libcpu/risc-v/common/cpuport.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/risc-v/common/%.o: ../rt-thread/libcpu/risc-v/common/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/risc-v/common/%.o: ../rt-thread/libcpu/risc-v/common/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

