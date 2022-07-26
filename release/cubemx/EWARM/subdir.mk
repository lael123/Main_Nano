################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../cubemx/EWARM/startup_stm32g030xx.s 

OBJS += \
./cubemx/EWARM/startup_stm32g030xx.o 

S_DEPS += \
./cubemx/EWARM/startup_stm32g030xx.d 


# Each subdirectory must supply rules for building sources it contributes
cubemx/EWARM/%.o: ../cubemx/EWARM/%.s
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

