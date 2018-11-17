################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/board.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/exit.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/mbed_interface.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/pinmap_common.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/rtc_time.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/semihost_api.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/us_ticker_api.c \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/wait_api.c 

OBJS += \
./capi/board.o \
./capi/exit.o \
./capi/mbed_interface.o \
./capi/pinmap_common.o \
./capi/rtc_time.o \
./capi/semihost_api.o \
./capi/us_ticker_api.o \
./capi/wait_api.o 

C_DEPS += \
./capi/board.d \
./capi/exit.d \
./capi/mbed_interface.d \
./capi/pinmap_common.d \
./capi/rtc_time.d \
./capi/semihost_api.d \
./capi/us_ticker_api.d \
./capi/wait_api.d 


# Each subdirectory must supply rules for building sources it contributes
capi/board.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/board.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/exit.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/exit.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/mbed_interface.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/mbed_interface.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/pinmap_common.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/pinmap_common.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/rtc_time.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/rtc_time.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/semihost_api.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/semihost_api.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/us_ticker_api.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/us_ticker_api.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

capi/wait_api.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/capi/wait_api.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


