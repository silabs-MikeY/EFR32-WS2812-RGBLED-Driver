################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.c 

OBJS += \
./gecko_sdk_4.0.0/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.o 

C_DEPS += \
./gecko_sdk_4.0.0/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.0/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.d" -MT"gecko_sdk_4.0.0/platform/Device/SiliconLabs/EFM32GG11B/Source/GCC/startup_efm32gg11b.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


