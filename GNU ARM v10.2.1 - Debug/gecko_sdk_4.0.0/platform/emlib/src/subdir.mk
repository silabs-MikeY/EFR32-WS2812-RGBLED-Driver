################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_assert.c \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c \
C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_ldma.c \
C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_letimer.c \
C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c \
C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_usart.c 

OBJS += \
./gecko_sdk_4.0.0/platform/emlib/src/em_assert.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_core.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_emu.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_ldma.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_letimer.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_system.o \
./gecko_sdk_4.0.0/platform/emlib/src/em_usart.o 

C_DEPS += \
./gecko_sdk_4.0.0/platform/emlib/src/em_assert.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_core.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_emu.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_ldma.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_letimer.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_system.d \
./gecko_sdk_4.0.0/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.0.0/platform/emlib/src/em_assert.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_assert.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_assert.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_assert.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_cmu.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_cmu.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_cmu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_core.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_core.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_core.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_emu.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_emu.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_emu.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_gpio.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_gpio.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_gpio.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_ldma.o: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_ldma.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_ldma.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_ldma.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_letimer.o: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_letimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_letimer.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_letimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_system.o: C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_system.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_system.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.0.0/platform/emlib/src/em_usart.o: C:/SiliconLabs/SimplicityStudio/v5/developer/sdks/gecko_sdk_suite/v3.2/platform/emlib/src/em_usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204A"' '-DSL_BOARD_REV="B07"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\config" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART\autogen" -I"C:\Users\MIYABLON\SimplicityStudio\v5_workspace\Neopixel-UART" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Include" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/host/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/MIYABLON/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.0.0/platform/emlib/src/em_usart.d" -MT"gecko_sdk_4.0.0/platform/emlib/src/em_usart.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


