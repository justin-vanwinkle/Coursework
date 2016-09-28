################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/BigInt.c \
../src/Debug.c \
../src/DoubleLinkedList.c \
../src/main.c 

OBJS += \
./src/BigInt.o \
./src/Debug.o \
./src/DoubleLinkedList.o \
./src/main.o 

C_DEPS += \
./src/BigInt.d \
./src/Debug.d \
./src/DoubleLinkedList.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


