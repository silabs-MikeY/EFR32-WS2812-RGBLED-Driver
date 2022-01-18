################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../WS2812-Driver.c \
../app.c \
../colors.c \
../main.c 

OBJS += \
./WS2812-Driver.o \
./app.o \
./colors.o \
./main.o 

C_DEPS += \
./WS2812-Driver.d \
./app.d \
./colors.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
WS2812-Driver.o: ../WS2812-Driver.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"WS2812-Driver.d" -MT"WS2812-Driver.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app.o: ../app.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"app.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

colors.o: ../colors.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"colors.d" -MT"colors.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"main.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


