################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.d 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/%.c Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32G491xx -DUSE_HAL_DRIVER -DUSE_FULL_LL_DRIVER -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Core/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/STM32G4xx_HAL_Driver/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

