################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Bsp/utils/software_i2c/soft_i2c.c 

C_DEPS += \
./Bsp/utils/software_i2c/soft_i2c.d 

OBJS += \
./Bsp/utils/software_i2c/soft_i2c.o 


# Each subdirectory must supply rules for building sources it contributes
Bsp/utils/software_i2c/%.o Bsp/utils/software_i2c/%.su Bsp/utils/software_i2c/%.cyclo: ../Bsp/utils/software_i2c/%.c Bsp/utils/software_i2c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/UserApp" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/Bsp/utils/software_i2c" -I"C:/Users/jeffe/OneDrive/Documentos/STM32/OLED/3rdParty/u8g2/cpp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-utils-2f-software_i2c

clean-Bsp-2f-utils-2f-software_i2c:
	-$(RM) ./Bsp/utils/software_i2c/soft_i2c.cyclo ./Bsp/utils/software_i2c/soft_i2c.d ./Bsp/utils/software_i2c/soft_i2c.o ./Bsp/utils/software_i2c/soft_i2c.su

.PHONY: clean-Bsp-2f-utils-2f-software_i2c

