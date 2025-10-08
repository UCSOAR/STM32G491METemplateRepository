################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../SoarOS/CubeDefines.cpp \
../SoarOS/CubeTask.cpp 

OBJS += \
./SoarOS/CubeDefines.o \
./SoarOS/CubeTask.o 

CPP_DEPS += \
./SoarOS/CubeDefines.d \
./SoarOS/CubeTask.d 


# Each subdirectory must supply rules for building sources it contributes
SoarOS/%.o SoarOS/%.su SoarOS/%.cyclo: ../SoarOS/%.cpp SoarOS/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++17 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Core/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Drivers/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Libraries/embedded-template-library/include" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SysCore/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SoarDebug/Inc" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-SoarOS

clean-SoarOS:
	-$(RM) ./SoarOS/CubeDefines.cyclo ./SoarOS/CubeDefines.d ./SoarOS/CubeDefines.o ./SoarOS/CubeDefines.su ./SoarOS/CubeTask.cyclo ./SoarOS/CubeTask.d ./SoarOS/CubeTask.o ./SoarOS/CubeTask.su

.PHONY: clean-SoarOS

