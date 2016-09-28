
//File: BigInt.c

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

// Pre-processor directives
#include <stdlib.h>
#include <stdbool.h>
#include <limits.h>
#include "DoubleLinkedList.h"
#include "BigInt.h"


//Pre-Condition	:	smallNumber is a positive integer
//Post-Condition:	Returns a pointer to an allocated block of memory
//				:	with a node initiated with the passed value.
BigInt* allocBigInt(uint smallNumber){

	// allocate space for BigInt
	BigInt* bigInt = (BigInt*) malloc(sizeof(BigInt));
	// allocate a DoubleLinkedList
	bigInt->number = allocDList(sizeof(uint));

	uint strip = 0;

		// use strip to pull values off of smallNumber and put in the nodes of the BigInt
		while (smallNumber > 0){
			// strip lowest digit from smallNumber
			strip = smallNumber % 10;
			// remove that digit from smallNumber
			smallNumber -= strip;
			smallNumber /= 10;

			appendDList(bigInt->number, &strip);
		}
	return bigInt;
}

//Pre-Condition :	number is of type struct BigInt
//Post-Condition:	frees allocated memory of a struct BigInt
//				:	from the bottom up (ensures no loss of memory control)
void releaseBigInt(BigInt* BInt){

	// free the BigInt
	if (BInt){
		releaseDList(BInt->number);
		free(BInt);
	}
}

//Pre-Condition :	first and second are of type struct BigInt
//Post-Condition:	Adds the values of the two passed BigInts and returns
//				:	a BigInt containing the sum
BigInt* addBigInt(BigInt* first, BigInt* second){

	int digit = 0;
	int carrier = 0;

	BigInt* sum = (BigInt*) malloc(sizeof(BigInt));
	sum->number = allocDList(sizeof(uint));

	DNode* firstIterator = first->number->head;
	DNode* secondIterator = second->number->head;

	// something to add
	while(firstIterator && secondIterator){
		digit = (uint)firstIterator->data + (uint)secondIterator->data + carrier;

		// reset carrier to receive new carry value
		carrier = 0;

		// strip carrier from digit if it exists
		if (digit > 9){
			carrier = digit - digit % 10;
			digit %= 10;
		}

		// place ones digit in the next node.
		appendDList(sum->number, &digit);

		// advance iterators to next nodes
		firstIterator = firstIterator->next;
		secondIterator = secondIterator->next;

	}

	// nothing to add, just place the value (also handles carry)
	while((firstIterator || secondIterator) && (!(firstIterator && secondIterator))){

		// this path will be followed if second has fewer digits than first
		if (firstIterator){
			// Strip the data and add the carrier
			digit = carrier + firstIterator->data;
			// Append the next value
			appendDList(sum->number, &digit);
			// move to the next node
			firstIterator = firstIterator->next;
		}
		
		// this path will be followed if first has fewer digits than second
		if (secondIterator){
			digit = carrier + secondIterator->data;
			appendDList(sum->number, &digit);
			secondIterator = secondIterator->next;
		}
		// reset carrier
		carrier = 0;
	}

	return sum;
}

//Pre-Condition :	first and second are of type struct BigInt
//Post-Condition:	Multiplies the values of the two passed BigInts
//				:	and returns the product in a BigInt
BigInt* multiplyBigInt(BigInt* first, BigInt* second){

	int carrier = 0;
	int digit = 0;
	int count = 0;
	int i = 0;

	BigInt* final = (BigInt*) calloc(1, sizeof(BigInt));
	final->number = allocDList(sizeof(uint));

	BigInt* stage = (BigInt*) calloc(1, sizeof(BigInt));
	stage->number = allocDList(sizeof(uint));

	DNode* iterator1 = first->number->head;
	DNode* iterator2 = second->number->head;

	// handles operations of adding the stage to the final
	while (iterator2){
		// handles operations of multiplying two digits
		while (iterator1){
			// set the carrier
			carrier += (int)iterator1->data * (int)iterator2->data;

			// grab the ones digit from the carrier and append it to the staging BigInt
			digit = carrier % 10;
			appendDList(stage->number, &digit);

			// prep carrier for next loop
			carrier -= digit;
			carrier /= 10;

			// advance to next digit
			iterator1 = iterator1->next;
		}

		// if there is something left in the carrier, it needs to be appended
		while (carrier != 0){
			digit = carrier % 10;
			appendDList(stage->number, &digit);
			carrier -= digit;
			carrier /= 10;
		}

		// for each loop after the first, we want our stage to be shifted left once more
		// using i=1 instead of i=0 is a side effect of allocBigInt
		for(i = 1; i < count; i++){
			stage = shiftLeftBigInt(stage);
		}

		// count the number of times we've looped
		count++;

		// add the stage to our final BigInt
		final = addBigInt(final, stage);

		// clear the stage
		while (stage->number->head)
			removeDList(stage->number, 0);

		// advance the second iterator
		iterator2 = iterator2->next;

	}
	releaseBigInt(stage);

	return final;
}

//Pre-Condition :	number is of type struct BigInt
//Post-Condition:	Returns a BigInt containing the passed BigInt after being
//				:	multiplied by 10.
BigInt* shiftLeftBigInt(BigInt* number){

	// Allocate a BigInt to hold the shifted integer
	BigInt* bigLeft = (BigInt*) malloc(sizeof(BigInt));
	bigLeft->number = allocDList(sizeof(uint));

	// initialize copier pointing head of the list to be copied
	DNode* copier = number->number->head;

	// copy the list
	while (copier){
		appendDList(bigLeft->number, &copier->data);
		copier = copier->next;
	}

	// to shift the BigInt left, I'm inserting the shifting value
	Object shifter = 0;
	insertDList(bigLeft->number, &shifter);

	return bigLeft;
}

//Pre-Condition :	number is of type struct BigInt
//Post-Condition:	Returns a BigInt containing the passed BigInt after being
//				:	divided by 10.
BigInt* shiftRightBigInt(BigInt* number){
	// This function shows the unfortunate side effect of allocBigInt's
	// handling of passing 0 (or NULL).

	// Allocate a BigInt to hold the shifted integer
	BigInt* bigRight = (BigInt*) malloc(sizeof(BigInt));
	bigRight->number = allocDList(sizeof(uint));

	
	// This starts after the head to ensure we don't copy that value
	// it's the equivalent of dividing by 10.
	DNode* copier = number->number->head->next;

	// iterations to copy
	while (copier){
		appendDList(bigRight->number, &copier->data);
		copier = copier->next;
	}
	
	return bigRight;
}

//Pre-Condition :	first and second are of type struct BigInt
//Post-Condition:	Compares the passed BigInts and returns
//				:	1 if the first is greater than the second
//				:	or -1 if the second is bigger than the first.
int compareBigInt(BigInt* first, BigInt* second){

	DNode* firstIterator = first->number->tail;
	DNode* secondIterator = second->number->tail;

	// Compare the easy cases first - If a number is longer, it's bigger.
	if (first->number->length > second->number->length)
		return 1;
	if (first->number->length < second->number->length)
		return -1;

	// compare if lengths are same.
	// starting at tail, work toward head.
	// first with highest value is biggest int.
	while (firstIterator || secondIterator){
		if (firstIterator->data > secondIterator->data)
			return 1;
		if (firstIterator->data < secondIterator->data)
			return 1;

		// advance to the next lowest digit for comparison
		firstIterator = firstIterator->prev;
		secondIterator = secondIterator->prev;
	}
	return 0;
}

//Pre-Condition :	first is of type struct BigInt
//				:	digit is a non-negative integer
//Post-Condition:	Returns true if the passed BigInt is divisible
//				:	by the passed digit.  Otherwise, returns false.
bool isBigIntDividableBy(BigInt* first, uint digit){
	
	int value = 0;
	DNode* iterator = first->number->head;

	switch(digit){
			// divisible by 2 if the last digit is even
			case 2:
				if ((int)iterator->data % 2 == 0)
					return true;
				break;

			// divisible by 3 if the sum of all digits is divisible by 3
			case 3:
				while(iterator){
					value += iterator->data;
					iterator = iterator->next;
				}
				if(value % 3 == 0)
					return true;
				break;
			// divisible by 4 if last two digits are divisible by 4
			case 4:
				value = (int)iterator->data + (int)iterator->next->data * 10;
				if (value % 4 == 0)
					return true;
				break;
			// divisible by 5 if the last digit is a 0 or a 5
			case 5:
				if ((int)iterator->data == 0 || (int)iterator->data == 5)
					return true;
				break;
			// divisible by 6 if divisible by both 2 and 3
			case 6:
				if ((int)iterator->data % 2 == 0){
					while(iterator){
						value += iterator->data;
						iterator = iterator->next;
					}
					if(value % 3 == 0)
						return true;
				}
				break;
			// divisible by 8 if the last three digits are divisible by 8
			case 8:
				value = (int)iterator->data + (int)iterator->next->data * 10
					+ (int)iterator->next->next->data * 100;
				if (value % 8 == 0)
					return true;
				break;
			// divisible by 9 if the sum of the digits is divisible by 9
			case 9:
				while(iterator){
					value += iterator->data;
					iterator = iterator->next;
				}
				if (value % 9 == 0)
					return true;
				break;
	}
	return false;
}

//Pre-Condition :	number is of type struct BigInt
//Post-Condition:	converts number to a uint and returns the uint
uint toInt(BigInt* number){

	ulong value = 0;
	int multiplier = 1;

	DNode* iterator = number->number->head;

	// iterate through passed BigInt
	while(iterator){
		// grab data of current node and scale it
		value += ((int)iterator->data * multiplier);
		// prep the scaling variable for the next iteration
		multiplier *= 10;
		// move to the next node
		iterator = iterator->next;
	}

	//TODO the following could be done above if I check against 65535 and if
	//at 5 digits we were larger, or if there are more digits to be taken in.
	//in which case we would go ahead and return NULL.  This would likely be 
	//a much safer approach to prevent integer overflow.
	
	// Make sure that the int isn't bigger than a uint can handle
	if (value <= UINT_MAX)
		return (uint)value;
	else
		return NULL;
}

//Pre-Condition :	number is of type struct BigInt
//Post-Condition:	Prints to stdout, the data in the individual nodes as
//				:	an integer.
void printBigInt(BigInt* number){

	DNode* printer = number->number->tail;

	// iterate through and print the data in each node
	while(printer){
		printf("%d", *(int*)printer);
		printer = printer->prev;
	}
	printf("\n");
}
