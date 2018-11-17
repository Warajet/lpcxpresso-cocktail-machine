################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../GUI.cpp \
../GraphicsDisplay.cpp \
../Ingredient.cpp \
../Recipe.cpp \
../SPI_TFT_ILI9341.cpp \
../SPI_TFT_ILI9341_NUCLEO.cpp \
../SPI_TFT_ILI9341_NXP.cpp \
../TextDisplay.cpp \
../dispenser.cpp \
../main.cpp 

OBJS += \
./GUI.o \
./GraphicsDisplay.o \
./Ingredient.o \
./Recipe.o \
./SPI_TFT_ILI9341.o \
./SPI_TFT_ILI9341_NUCLEO.o \
./SPI_TFT_ILI9341_NXP.o \
./TextDisplay.o \
./dispenser.o \
./main.o 

CPP_DEPS += \
./GUI.d \
./GraphicsDisplay.d \
./Ingredient.d \
./Recipe.d \
./SPI_TFT_ILI9341.d \
./SPI_TFT_ILI9341_NUCLEO.d \
./SPI_TFT_ILI9341_NXP.d \
./TextDisplay.d \
./dispenser.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -D__NEWLIB__ -DTOOLCHAIN_GCC_CR -DTARGET_LPC1768 -D__CODE_RED -DCPP_USE_HEAP -I"C:\Users\MaxMac\Documents\MCUXpressoIDE_10.2.1_795\workspace\MPI-Cocktail-Project" -I"C:\Users\MaxMac\Documents\MCUXpressoIDE_10.2.1_795\workspace\mbed\libraries\mbed\vendor\NXP\capi" -I"C:\Users\MaxMac\Documents\MCUXpressoIDE_10.2.1_795\workspace\mbed\libraries\mbed\capi" -I"C:\Users\MaxMac\Documents\MCUXpressoIDE_10.2.1_795\workspace\mbed\libraries\mbed\cpp" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-exceptions -mcpu=cortex-m3 -mthumb -D__NEWLIB__ -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


