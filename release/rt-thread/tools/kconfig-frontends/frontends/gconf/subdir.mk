################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/tools/kconfig-frontends/frontends/gconf/gconf.c 

OBJS += \
./rt-thread/tools/kconfig-frontends/frontends/gconf/gconf.o 

C_DEPS += \
./rt-thread/tools/kconfig-frontends/frontends/gconf/gconf.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/tools/kconfig-frontends/frontends/gconf/%.o: ../rt-thread/tools/kconfig-frontends/frontends/gconf/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

