################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../rt-thread/libcpu/risc-v/bumblebee/interrupt_gcc.S 

OBJS += \
./rt-thread/libcpu/risc-v/bumblebee/interrupt_gcc.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/risc-v/bumblebee/interrupt_gcc.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/risc-v/bumblebee/%.o: ../rt-thread/libcpu/risc-v/bumblebee/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

