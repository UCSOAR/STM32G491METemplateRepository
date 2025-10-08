################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../USB_Device/App/usb_device.c \
../USB_Device/App/usbd_desc.c \
../USB_Device/App/usbd_storage_if.c 

C_DEPS += \
./USB_Device/App/usb_device.d \
./USB_Device/App/usbd_desc.d \
./USB_Device/App/usbd_storage_if.d 

OBJS += \
./USB_Device/App/usb_device.o \
./USB_Device/App/usbd_desc.o \
./USB_Device/App/usbd_storage_if.o 


# Each subdirectory must supply rules for building sources it contributes
USB_Device/App/%.o USB_Device/App/%.su USB_Device/App/%.cyclo: ../USB_Device/App/%.c USB_Device/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32G491xx -DUSE_FULL_LL_DRIVER -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Core/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Drivers/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/SoarOS/Libraries/embedded-template-library/include" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SysCore/Inc" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/SoarDebug/Inc" -I../USB_Device/App -I../USB_Device/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem" -I"C:/cygwin64/home/spiro/SOAR/STM32G491METemplateRepository/Components/FileSystem/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-USB_Device-2f-App

clean-USB_Device-2f-App:
	-$(RM) ./USB_Device/App/usb_device.cyclo ./USB_Device/App/usb_device.d ./USB_Device/App/usb_device.o ./USB_Device/App/usb_device.su ./USB_Device/App/usbd_desc.cyclo ./USB_Device/App/usbd_desc.d ./USB_Device/App/usbd_desc.o ./USB_Device/App/usbd_desc.su ./USB_Device/App/usbd_storage_if.cyclo ./USB_Device/App/usbd_storage_if.d ./USB_Device/App/usbd_storage_if.o ./USB_Device/App/usbd_storage_if.su

.PHONY: clean-USB_Device-2f-App

