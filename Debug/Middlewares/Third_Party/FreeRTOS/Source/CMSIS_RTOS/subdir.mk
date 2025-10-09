################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c 

C_DEPS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.d 

OBJS += \
./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.o Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.su Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.cyclo: ../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/%.c Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Core/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Drivers/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Libraries/embedded-template-library/include" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SysCore/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SoarDebug/Inc" -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/FATFS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS

clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS:
	-$(RM) ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.cyclo ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.d ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.o ./Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-FreeRTOS-2f-Source-2f-CMSIS_RTOS

