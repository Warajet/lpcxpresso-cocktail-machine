################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../SDFileSystem_files/FATFileSystem/FATDirHandle.cpp \
../SDFileSystem_files/FATFileSystem/FATFileHandle.cpp \
../SDFileSystem_files/FATFileSystem/FATFileSystem.cpp 

OBJS += \
./SDFileSystem_files/FATFileSystem/FATDirHandle.o \
./SDFileSystem_files/FATFileSystem/FATFileHandle.o \
./SDFileSystem_files/FATFileSystem/FATFileSystem.o 

CPP_DEPS += \
./SDFileSystem_files/FATFileSystem/FATDirHandle.d \
./SDFileSystem_files/FATFileSystem/FATFileHandle.d \
./SDFileSystem_files/FATFileSystem/FATFileSystem.d 


# Each subdirectory must supply rules for building sources it contributes
SDFileSystem_files/FATFileSystem/%.o: ../SDFileSystem_files/FATFileSystem/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\vendor\NXP\cmsis\LPC1768" -I"C:\Users\MaxMac\Documents\LPCXpresso\MPI-Cocktail-Project\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


