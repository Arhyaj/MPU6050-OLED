################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../3rdParty/u8g2/cpp/stdlib_noniso.c 

CPP_SRCS += \
../3rdParty/u8g2/cpp/Print.cpp \
../3rdParty/u8g2/cpp/U8x8lib.cpp \
../3rdParty/u8g2/cpp/WString.cpp 

C_DEPS += \
./3rdParty/u8g2/cpp/stdlib_noniso.d 

OBJS += \
./3rdParty/u8g2/cpp/Print.o \
./3rdParty/u8g2/cpp/U8x8lib.o \
./3rdParty/u8g2/cpp/WString.o \
./3rdParty/u8g2/cpp/stdlib_noniso.o 

CPP_DEPS += \
./3rdParty/u8g2/cpp/Print.d \
./3rdParty/u8g2/cpp/U8x8lib.d \
./3rdParty/u8g2/cpp/WString.d 


# Each subdirectory must supply rules for building sources it contributes
3rdParty/u8g2/cpp/%.o 3rdParty/u8g2/cpp/%.su 3rdParty/u8g2/cpp/%.cyclo: ../3rdParty/u8g2/cpp/%.cpp 3rdParty/u8g2/cpp/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/imu" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/imu/filters" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/UserApp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/utils/software_i2c" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2/cpp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/fibre/cpp/include" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/communication" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/OLED" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
3rdParty/u8g2/cpp/%.o 3rdParty/u8g2/cpp/%.su 3rdParty/u8g2/cpp/%.cyclo: ../3rdParty/u8g2/cpp/%.c 3rdParty/u8g2/cpp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/UserApp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/utils/software_i2c" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2/cpp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-3rdParty-2f-u8g2-2f-cpp

clean-3rdParty-2f-u8g2-2f-cpp:
	-$(RM) ./3rdParty/u8g2/cpp/Print.cyclo ./3rdParty/u8g2/cpp/Print.d ./3rdParty/u8g2/cpp/Print.o ./3rdParty/u8g2/cpp/Print.su ./3rdParty/u8g2/cpp/U8x8lib.cyclo ./3rdParty/u8g2/cpp/U8x8lib.d ./3rdParty/u8g2/cpp/U8x8lib.o ./3rdParty/u8g2/cpp/U8x8lib.su ./3rdParty/u8g2/cpp/WString.cyclo ./3rdParty/u8g2/cpp/WString.d ./3rdParty/u8g2/cpp/WString.o ./3rdParty/u8g2/cpp/WString.su ./3rdParty/u8g2/cpp/stdlib_noniso.cyclo ./3rdParty/u8g2/cpp/stdlib_noniso.d ./3rdParty/u8g2/cpp/stdlib_noniso.o ./3rdParty/u8g2/cpp/stdlib_noniso.su

.PHONY: clean-3rdParty-2f-u8g2-2f-cpp

