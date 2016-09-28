// File: BigInt.h

/*
 * Author1: Justin VanWinkle
 * Author2: Daniel Martinez
 *
 * Course: COP3502, SummerC 2014
 *
 * BigInt.h: This file is designed to support operations
 * as they pertain to integers that are larger than can be
 * handled by predefined data types in the C language.
 *
 */

/* BEGIN BigInt.h */

#ifndef BigInt_H_
#define BigInt_H_

#include <stdbool.h>
#include "DoubleLinkedList.h"

typedef struct BigInt{
	DoubleLinkedList* number;
}BigInt;

// Function Prototypes
BigInt* allocBigInt(uint smallNumber);
void releaseBigInt(BigInt* number);
BigInt* addBigInt(BigInt* first, BigInt* second);
BigInt* multiplyBigInt(BigInt* first, BigInt* second);
BigInt* shiftLeftBigInt(BigInt* number);
BigInt* shiftRightBigInt(BigInt* number);
int compareBigInt(BigInt* first, BigInt* second);
bool isBigIntDividableBy(BigInt* first, uint digit);
uint toInt(BigInt* number);
void printBigInt(BigInt* number);

#endif

/* END BigInt.h */
