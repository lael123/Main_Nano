################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/tools/kconfig-frontends/libs/parser/confdata.c \
../rt-thread/tools/kconfig-frontends/libs/parser/expr.c \
../rt-thread/tools/kconfig-frontends/libs/parser/hconf.c \
../rt-thread/tools/kconfig-frontends/libs/parser/lconf.c \
../rt-thread/tools/kconfig-frontends/libs/parser/menu.c \
../rt-thread/tools/kconfig-frontends/libs/parser/symbol.c \
../rt-thread/tools/kconfig-frontends/libs/parser/util.c \
../rt-thread/tools/kconfig-frontends/libs/parser/yconf.c 

OBJS += \
./rt-thread/tools/kconfig-frontends/libs/parser/confdata.o \
./rt-thread/tools/kconfig-frontends/libs/parser/expr.o \
./rt-thread/tools/kconfig-frontends/libs/parser/hconf.o \
./rt-thread/tools/kconfig-frontends/libs/parser/lconf.o \
./rt-thread/tools/kconfig-frontends/libs/parser/menu.o \
./rt-thread/tools/kconfig-frontends/libs/parser/symbol.o \
./rt-thread/tools/kconfig-frontends/libs/parser/util.o \
./rt-thread/tools/kconfig-frontends/libs/parser/yconf.o 

C_DEPS += \
./rt-thread/tools/kconfig-frontends/libs/parser/confdata.d \
./rt-thread/tools/kconfig-frontends/libs/parser/expr.d \
./rt-thread/tools/kconfig-frontends/libs/parser/hconf.d \
./rt-thread/tools/kconfig-frontends/libs/parser/lconf.d \
./rt-thread/tools/kconfig-frontends/libs/parser/menu.d \
./rt-thread/tools/kconfig-frontends/libs/parser/symbol.d \
./rt-thread/tools/kconfig-frontends/libs/parser/util.d \
./rt-thread/tools/kconfig-frontends/libs/parser/yconf.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/tools/kconfig-frontends/libs/parser/%.o: ../rt-thread/tools/kconfig-frontends/libs/parser/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

