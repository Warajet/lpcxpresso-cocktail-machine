################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusIn.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusInOut.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusOut.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/CAN.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Ethernet.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileBase.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileLike.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FilePath.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileSystemLike.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FunctionPointer.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/I2C.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/I2CSlave.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/InterruptIn.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/LocalFileSystem.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/SPI.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/SPISlave.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Serial.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Stream.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Ticker.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Timeout.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Timer.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/TimerEvent.cpp \
C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/stdio.cpp 

OBJS += \
./mbed/BusIn.o \
./mbed/BusInOut.o \
./mbed/BusOut.o \
./mbed/CAN.o \
./mbed/Ethernet.o \
./mbed/FileBase.o \
./mbed/FileLike.o \
./mbed/FilePath.o \
./mbed/FileSystemLike.o \
./mbed/FunctionPointer.o \
./mbed/I2C.o \
./mbed/I2CSlave.o \
./mbed/InterruptIn.o \
./mbed/LocalFileSystem.o \
./mbed/SPI.o \
./mbed/SPISlave.o \
./mbed/Serial.o \
./mbed/Stream.o \
./mbed/Ticker.o \
./mbed/Timeout.o \
./mbed/Timer.o \
./mbed/TimerEvent.o \
./mbed/stdio.o 

CPP_DEPS += \
./mbed/BusIn.d \
./mbed/BusInOut.d \
./mbed/BusOut.d \
./mbed/CAN.d \
./mbed/Ethernet.d \
./mbed/FileBase.d \
./mbed/FileLike.d \
./mbed/FilePath.d \
./mbed/FileSystemLike.d \
./mbed/FunctionPointer.d \
./mbed/I2C.d \
./mbed/I2CSlave.d \
./mbed/InterruptIn.d \
./mbed/LocalFileSystem.d \
./mbed/SPI.d \
./mbed/SPISlave.d \
./mbed/Serial.d \
./mbed/Stream.d \
./mbed/Ticker.d \
./mbed/Timeout.d \
./mbed/Timer.d \
./mbed/TimerEvent.d \
./mbed/stdio.d 


# Each subdirectory must supply rules for building sources it contributes
mbed/BusIn.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusIn.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/BusInOut.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusInOut.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/BusOut.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/BusOut.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/CAN.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/CAN.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Ethernet.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Ethernet.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/FileBase.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileBase.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/FileLike.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileLike.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/FilePath.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FilePath.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/FileSystemLike.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FileSystemLike.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/FunctionPointer.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/FunctionPointer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/I2C.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/I2C.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/I2CSlave.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/I2CSlave.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/InterruptIn.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/InterruptIn.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/LocalFileSystem.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/LocalFileSystem.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/SPI.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/SPI.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/SPISlave.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/SPISlave.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Serial.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Serial.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Stream.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Stream.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Ticker.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Ticker.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Timeout.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Timeout.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/Timer.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/Timer.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/TimerEvent.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/TimerEvent.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

mbed/stdio.o: C:/Users/MaxMac/Documents/LPCXpresso/MPI-Cocktail-Project/mbed/libraries/mbed/cpp/stdio.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


