################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/libcpu/arm/arm926/cpuport.c \
../rt-thread/libcpu/arm/arm926/mmu.c \
../rt-thread/libcpu/arm/arm926/stack.c \
../rt-thread/libcpu/arm/arm926/trap.c 

S_UPPER_SRCS += \
../rt-thread/libcpu/arm/arm926/context_gcc.S \
../rt-thread/libcpu/arm/arm926/context_iar.S \
../rt-thread/libcpu/arm/arm926/context_rvds.S \
../rt-thread/libcpu/arm/arm926/start_gcc.S \
../rt-thread/libcpu/arm/arm926/start_iar.S \
../rt-thread/libcpu/arm/arm926/start_rvds.S 

OBJS += \
./rt-thread/libcpu/arm/arm926/context_gcc.o \
./rt-thread/libcpu/arm/arm926/context_iar.o \
./rt-thread/libcpu/arm/arm926/context_rvds.o \
./rt-thread/libcpu/arm/arm926/cpuport.o \
./rt-thread/libcpu/arm/arm926/mmu.o \
./rt-thread/libcpu/arm/arm926/stack.o \
./rt-thread/libcpu/arm/arm926/start_gcc.o \
./rt-thread/libcpu/arm/arm926/start_iar.o \
./rt-thread/libcpu/arm/arm926/start_rvds.o \
./rt-thread/libcpu/arm/arm926/trap.o 

S_UPPER_DEPS += \
./rt-thread/libcpu/arm/arm926/context_gcc.d \
./rt-thread/libcpu/arm/arm926/context_iar.d \
./rt-thread/libcpu/arm/arm926/context_rvds.d \
./rt-thread/libcpu/arm/arm926/start_gcc.d \
./rt-thread/libcpu/arm/arm926/start_iar.d \
./rt-thread/libcpu/arm/arm926/start_rvds.d 

C_DEPS += \
./rt-thread/libcpu/arm/arm926/cpuport.d \
./rt-thread/libcpu/arm/arm926/mmu.d \
./rt-thread/libcpu/arm/arm926/stack.d \
./rt-thread/libcpu/arm/arm926/trap.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/libcpu/arm/arm926/%.o: ../rt-thread/libcpu/arm/arm926/%.S
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
rt-thread/libcpu/arm/arm926/%.o: ../rt-thread/libcpu/arm/arm926/%.c
	echo -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

