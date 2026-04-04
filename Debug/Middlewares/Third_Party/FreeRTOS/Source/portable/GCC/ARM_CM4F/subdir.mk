################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.d 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.o: ../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/%.c Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	arm-none-eabi-gcc -DSTM32G491xx -DUSE_HAL_DRIVER -DUSE_FULL_LL_DRIVER -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Core/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/STM32G4xx_HAL_Driver/Inc" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Drivers/CMSIS/Device/ST/STM32G4xx/Include" -I"/home/JADMC/SOAR/new_workspace/LRB_Template_NewProject/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.d ./Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.o

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM4F

