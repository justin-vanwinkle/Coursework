################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/BST.c \
../src/DArray.c \
../src/DoubleLinkedList.c \
../src/Objects.c \
../src/PriorityQueue.c \
../src/Trees.c \
../src/labTester.c 

OBJS += \
./src/BST.o \
./src/DArray.o \
./src/DoubleLinkedList.o \
./src/Objects.o \
./src/PriorityQueue.o \
./src/Trees.o \
./src/labTester.o 

C_DEPS += \
./src/BST.d \
./src/DArray.d \
./src/DoubleLinkedList.d \
./src/Objects.d \
./src/PriorityQueue.d \
./src/Trees.d \
./src/labTester.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I/usr/lib/gcc/x86_64-linux-gnu/4.7.2/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


