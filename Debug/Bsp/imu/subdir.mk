################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Bsp/imu/MPU6050.cpp \
../Bsp/imu/i2c_dev.cpp 

OBJS += \
./Bsp/imu/MPU6050.o \
./Bsp/imu/i2c_dev.o 

CPP_DEPS += \
./Bsp/imu/MPU6050.d \
./Bsp/imu/i2c_dev.d 


# Each subdirectory must supply rules for building sources it contributes
Bsp/imu/%.o Bsp/imu/%.su Bsp/imu/%.cyclo: ../Bsp/imu/%.cpp Bsp/imu/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/imu" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/imu/filters" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/UserApp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/utils/software_i2c" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2/cpp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/fibre/cpp/include" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/communication" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/OLED" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-imu

clean-Bsp-2f-imu:
	-$(RM) ./Bsp/imu/MPU6050.cyclo ./Bsp/imu/MPU6050.d ./Bsp/imu/MPU6050.o ./Bsp/imu/MPU6050.su ./Bsp/imu/i2c_dev.cyclo ./Bsp/imu/i2c_dev.d ./Bsp/imu/i2c_dev.o ./Bsp/imu/i2c_dev.su

.PHONY: clean-Bsp-2f-imu

