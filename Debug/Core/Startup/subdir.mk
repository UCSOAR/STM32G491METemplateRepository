################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32g491metx.s 

S_DEPS += \
./Core/Startup/startup_stm32g491metx.d 

OBJS += \
./Core/Startup/startup_stm32g491metx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g -DDEBUG -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Core/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Drivers/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Libraries/embedded-template-library/include" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SysCore/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SoarDebug/Inc" -I../USB_Device/App -I../USB_Device/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem/Inc" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32g491metx.d ./Core/Startup/startup_stm32g491metx.o

.PHONY: clean-Core-2f-Startup

