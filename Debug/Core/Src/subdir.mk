################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/app_freertos.c \
../Core/Src/main.c \
../Core/Src/stm32g4xx_hal_msp.c \
../Core/Src/stm32g4xx_hal_timebase_tim.c \
../Core/Src/stm32g4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32g4xx.c 

C_DEPS += \
./Core/Src/app_freertos.d \
./Core/Src/main.d \
./Core/Src/stm32g4xx_hal_msp.d \
./Core/Src/stm32g4xx_hal_timebase_tim.d \
./Core/Src/stm32g4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32g4xx.d 

OBJS += \
./Core/Src/app_freertos.o \
./Core/Src/main.o \
./Core/Src/stm32g4xx_hal_msp.o \
./Core/Src/stm32g4xx_hal_timebase_tim.o \
./Core/Src/stm32g4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32g4xx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32G491xx -DUSE_HAL_DRIVER -DUSE_FULL_LL_DRIVER -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Core/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/STM32G4xx_HAL_Driver/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Core/Src/main.o: ../Core/Src/main.c Core/Src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32G491xx -DUSE_HAL_DRIVER -DUSE_FULL_LL_DRIVER -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Core/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/STM32G4xx_HAL_Driver/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -O0 -g3 -Wall -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32G491xx -DUSE_HAL_DRIVER -DUSE_FULL_LL_DRIVER -O0 -g3 -Wall -ffunction-sections -fdata-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/app_freertos.d ./Core/Src/app_freertos.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/stm32g4xx_hal_msp.d ./Core/Src/stm32g4xx_hal_msp.o ./Core/Src/stm32g4xx_hal_timebase_tim.d ./Core/Src/stm32g4xx_hal_timebase_tim.o ./Core/Src/stm32g4xx_it.d ./Core/Src/stm32g4xx_it.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32g4xx.d ./Core/Src/system_stm32g4xx.o

.PHONY: clean-Core-2f-Src

