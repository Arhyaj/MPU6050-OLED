################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Bsp/imu/filters/biquad_filter.c \
../Bsp/imu/filters/filter_math.c 

C_DEPS += \
./Bsp/imu/filters/biquad_filter.d \
./Bsp/imu/filters/filter_math.d 

OBJS += \
./Bsp/imu/filters/biquad_filter.o \
./Bsp/imu/filters/filter_math.o 


# Each subdirectory must supply rules for building sources it contributes
Bsp/imu/filters/%.o Bsp/imu/filters/%.su Bsp/imu/filters/%.cyclo: ../Bsp/imu/filters/%.c Bsp/imu/filters/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/UserApp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/utils/software_i2c" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2/cpp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-imu-2f-filters

clean-Bsp-2f-imu-2f-filters:
	-$(RM) ./Bsp/imu/filters/biquad_filter.cyclo ./Bsp/imu/filters/biquad_filter.d ./Bsp/imu/filters/biquad_filter.o ./Bsp/imu/filters/biquad_filter.su ./Bsp/imu/filters/filter_math.cyclo ./Bsp/imu/filters/filter_math.d ./Bsp/imu/filters/filter_math.o ./Bsp/imu/filters/filter_math.su

.PHONY: clean-Bsp-2f-imu-2f-filters

