/*
 * main.c
 *
 *  Created on: Jun 17, 2014
 *      Author: lugoh008
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>
#include <limits.h>

#include "DoubleLinkedList.h"
#include "BigInt.h"
#include "Debug.h"

typedef BigInt* BInt;

void printElement(Object data){
	printf("%c", (char)data);
}

int main(int argc, char** argv){
	printf("Start\n\n\n");							//mine

	//Alloc two BigInts to test operation

	BInt first = allocBigInt(5);
	BInt second = allocBigInt(4);

/*	PASS Debug
	debug();
*/

/* 	PASS Addition

	//add Test
	BInt addition = addBigInt(first, second);
	printBigInt(first);
	printBigInt(second);
	printBigInt(addition);
	assert(toInt(addition) ==  9);
	releaseBigInt(addition);
*/

/*	PASS Overflow

	//causing overflow
	//1) -1 would become the largest int because the int is unsigned
	unsigned int maxInt = -1;
	unsigned long maxLong = -1;
	//2) add 1 to such value to get 0 in a uint but correct value with BigInt (the same goes for long)
	unsigned int intOverflow = maxInt + 1;
	unsigned int longOverflow = maxLong + 1;
	BInt intLimit = allocBigInt(maxInt);

	BInt longLimit = allocBigInt(maxLong);
	BInt one = allocBigInt(1);
	BInt intAddOverflowTest = addBigInt(intLimit, one);
	BInt longAddOverflowTest = addBigInt(longLimit, one);

	printf("\nInt vs BigInt:\n");
	printf("%d\t", intOverflow);
	printBigInt(intAddOverflowTest);
	printf("\nLong vs BigInt:\n");
	printf("%ld\t", longOverflow);
	printBigInt(longAddOverflowTest);
//	write asserts for intAddOverflowTest and longAddOverflowTest

	releaseBigInt(intLimit);
	releaseBigInt(longLimit);
	releaseBigInt(one);
	releaseBigInt(intAddOverflowTest);
	releaseBigInt(longAddOverflowTest);
*/

/*	PASS Shifting
	//shift left and right
	//normal test
	uint testNum = 20;
	uint targetLeft = 200;
	uint targetRight = 2;

	BInt bigTest = allocBigInt(20);
	BInt bigLeft = shiftLeftBigInt(bigTest);
	BInt bigRight = shiftRightBigInt(bigTest);

	printBigInt(bigTest);
	printBigInt(bigLeft);
	printBigInt(bigRight);

	assert(toInt(bigLeft) == targetLeft);
	assert(toInt(bigRight) == targetRight);

	releaseBigInt(bigTest);
	releaseBigInt(bigLeft);
	releaseBigInt(bigRight);
*/

/*	FAIL Multiply
	// I have an idea, but I'm not 100% certain of what is causing the fault here
	// I broke it this morning when I changed the allocBigInt function to no longer
	// handle allocating with 0 or NULL passed in.

	//multiply
	BInt mulTest = multiplyBigInt(first, second);
	assert(toInt(mulTest) == 20);

	//causing overflow
	BInt four = allocBigInt(4);
	uint previousInt = 20;
	unsigned long previousLong = 20;
	while(previousInt < (previousInt * 4)){
		BInt temp = multiplyBigInt(mulTest, four);
		releaseBigInt(mulTest);
		mulTest = temp;
		previousInt *= 4;
	}

	printBigInt(mulTest);

	BInt mulTestLong = multiplyBigInt(first, second);
	while(previousLong < (previousLong * 4)){
		BInt temp = multiplyBigInt(mulTestLong, four);
		releaseBigInt(mulTestLong);
		mulTestLong = temp;
		previousLong *= 4;
	}

	//overflow generated
	previousInt *= 4;
	previousLong *= 4;

	BInt temp = multiplyBigInt(mulTest, four);
	releaseBigInt(mulTest);
	mulTest = temp;
	temp = multiplyBigInt(mulTestLong, four);
	releaseBigInt(mulTestLong);
	mulTestLong = temp;

	printf("Int vs BigInt:\n");
	printf("%d\t", previousInt);
	printBigInt(mulTest);
	printf("Long vs BigInt:\n");
	printf("%ld\t", previousLong);
	printBigInt(mulTestLong);

	releaseBigInt(mulTest);
	releaseBigInt(mulTestLong);
*/

/* 	PASS Divisibility
	//dividable tests
	BInt test = allocBigInt(240);
	assert(isBigIntDividableBy(test, 2));
	assert(isBigIntDividableBy(test, 3));
	assert(isBigIntDividableBy(test, 5));
	assert(isBigIntDividableBy(test, 6));
	assert(isBigIntDividableBy(test, 8));
	assert(!isBigIntDividableBy(test, 9));
	releaseBigInt(test);
*/

	releaseBigInt(first);
	releaseBigInt(second);

	printf("\n\n\nEND!\n");
	return 0;
}
