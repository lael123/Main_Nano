################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/checklist.c \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/inputbox.c \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/menubox.c \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/textbox.c \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/util.c \
../rt-thread/tools/kconfig-frontends/libs/lxdialog/yesno.c 

OBJS += \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/checklist.o \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/inputbox.o \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/menubox.o \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/textbox.o \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/util.o \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/yesno.o 

C_DEPS += \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/checklist.d \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/inputbox.d \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/menubox.d \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/textbox.d \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/util.d \
./rt-thread/tools/kconfig-frontends/libs/lxdialog/yesno.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/tools/kconfig-frontends/libs/lxdialog/%.o: ../rt-thread/tools/kconfig-frontends/libs/lxdialog/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

