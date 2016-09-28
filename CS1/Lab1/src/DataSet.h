// File: DataSet.h

/*
 * Author1: Justin VanWinkle
 *
 * Course: COP3502, SummerC 2014
 *
 * DataSet.h: This file implements a math set and its operations. A math set is
 * defined as linear collection elements with no duplicates on it. This library
 * depends on the DArray.h as the internal array of the DataSet is really a
 * DArray with additional functionality to ensure that no duplicates are found
 * and the operations are possible.
 *
 */

/* BEGIN DataSet.h */

#ifndef DATASET_H_
#define DATASET_H_

//#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<math.h>
#include "DArray.h"

typedef unsigned char Byte;			//8-bits 	(0-255)
typedef unsigned short Word;		//16-bits 	(0-65534)
typedef unsigned int uint;			//16-bits 	(0-65534)
typedef unsigned int* intArray;		//16-bits	(0-65534)

struct DataSet{
	struct DArray* array;
	Byte min;
	Byte max;
};


//Pre-Conditions :	None
//Post-Conditions:	Allocates memory for a struct DataSet, creates an array to
//				 :	hold a set and initializes each space to the null character
//				 :	sets max and min value of allocated DataSet to 0 and 255,
//				 : 	respectively (these extremes ensure change upon calling
//				 :	the max and min functions)
struct DataSet* allocDataSet(){

	// declare, initialize, and allocate memory for dataSet
	struct DataSet* dataSet = (struct DataSet*)malloc(sizeof(struct DataSet));

	// declare, initialize, and allocate memory for array
	dataSet->array = allocDArray(10);

    // set min and max to extremes for accuracy's sake
    dataSet->min = 255;
    dataSet->max = 0;

	return dataSet;
}


//Pre-Conditions :	dset is of type struct DataSet
//Post-Conditions:	frees all allocated memory within the passed set
void releaseDataSet(struct DataSet* dset){
	// call releaseDArray from DArray.h to free space inside the struct DataSet
	releaseDArray(dset->array);

	// free the struct DataSet itself
	if(dset)
		free(dset);

}


//Pre-Conditions :	testSet is of the type struct DataSet.
//Post-Conditions: 	Returns true if testSet is the NULL set.
bool isNull(struct DataSet* testSet){
	// if testSet is the nullSet, return true
	if (testSet->array->length == 0)
		return true;
	// otherwise, return false
	else
		return false;
}


//Pre-Conditions :	set is of type struct DataSet
//Post-Conditions:	finds and returns maximum value of given set
void max(struct DataSet* set){
	int i = 0;

	// if the set is NOT the null set
	if(isNull(set) != true){
		// check each value in the set against the current minimum value
		for (i = 0; i < set->array->length; i++)
			// if value being checked is greater than the current maximum
			if (set->max < set->array->data[i])
				// set current maximum equal to the value being checked
				set->max = set->array->data[i];
	}
}


//Pre-Conditions :	set is of type struct DataSet
//Post-Conditions:	finds and returns minimum value of given set
void min(struct DataSet* set){
	int i = 0;

	// if the set is NOT the null set
	if(isNull(set) != true){
		// check each value in the set against the current minimum value
		for (i = 0; i < set->array->length; i++)
			// if value being checked is less than current minimum
			if (set->min > set->array->data[i])
				// set current minimum equal to value being checked
				set->min = set->array->data[i];
	}
}


//Pre-Conditions :	dataSet is of type struct DataSet
//				 :	testValue is of type unsigned char (Byte)
//Post-Conditions:	returns true if dataSet contains testValue
//				 :	returns false if dataSet does not contain testValue
bool contains(struct DataSet* dataSet, Byte testValue){
	int i = 0;

	// search for value and return true if found
	for(i = 0; i < dataSet->array->length; i++){
		if (dataSet->array->data[i] == testValue)
			return true;
	}

	// return false if value not found
	return false;
}


//Pre-Conditions :	dataSet is of type struct DataSet
//				 :	newValue is a positive integer of type unsigned char
//Post-Conditions:	calls appendDArray to append passed array with new value
//				 :	updates max and min with new max and min values
void appendDataSet(struct DataSet* dataSet, Byte newValue){
	// if the passed array doesn't contain the passed value,
	// call appendDArray to add it
	if(contains(dataSet, newValue) == false)
		appendDArray(dataSet->array, newValue);

	// call max and min functions to revise max and min
	max(dataSet);
	min(dataSet);
}


//Pre-Conditions :	setA and setB are of type struct DataSet
//Post-Conditions:	returns a set containing the union of the two passed sets
//				 :	and provides the min and max values (via appendDataSet)
struct DataSet* unionDataSet(struct DataSet* setA, struct DataSet* setB){
	int i = 0;
	struct DataSet* unionSet = allocDataSet();

	// put elements of setA in unionSet
	for(i = 0; i < setA->array->length; i++)
		appendDataSet(unionSet, setA->array->data[i]);

	// put elements of setB in unionSet if they don't exist (no duplications)
	for(i = 0; i < setB->array->length; i++)
		if(contains(unionSet, setB->array->data[i]) == false)
			appendDataSet(unionSet, setB->array->data[i]);

	return unionSet;
}


//Pre-Conditions :	setA and setB are of type struct DataSet
//Post-Conditions:	returns a set containing the intersection of the two
//				 :	passed sets and provides the min and max values
//				 :	(via appendDataSet)
struct DataSet* intersectionDataSet(struct DataSet* setA, struct DataSet* setB){
	int i = 0;
	struct DataSet* intersectionSet = allocDataSet();

	// find the elements of setA that are also in setB
	for(i = 0; i < setA->array->length; i++){
		// if setB also contains element i of setA
		if(contains(setB, setA->array->data[i]) == true){
			// append intersection with element i of setA
			appendDataSet(intersectionSet, setA->array->data[i]);
		}
	}
	return intersectionSet;
}


//Pre-Conditions :	setA and setB are of type struct DataSet
//Post-Conditions:	Returns a set that contains the elements of setA that are
//				 :	NOT in setB and provides min and max values
//				 :	(via appendDataSet)
struct DataSet* diffDataSet(struct DataSet* setA, struct DataSet* setB){
	int i = 0;
	struct DataSet* diffSet = allocDataSet();

	//search for elements in setA that aren't in setB
	for(i = 0; i < setA->array->length; i++){
		// if setB does not contain element i of setA
		if(contains(setB, setA->array->data[i]) == false)
			// place element i in diffSet (to be returned)
			appendDataSet(diffSet, setA->array->data[i]);
	}
	return diffSet;
}


//Pre-Conditions :	mainSet is of type struct DataSet
//				 :	start and end are positive integers of type int
//Post-Conditions:	returns a subset of the passed set containing only the
//				 :	values in the positions between the start and end locations
//				 :	provides max and min values (via appendDataSet)
struct DataSet* subset(struct DataSet* mainSet, int start, int end){
	int i;
	struct DataSet* newSubset = allocDataSet();

	for(i = start; i <= end; i++)
		appendDataSet(newSubset, mainSet->array->data[i]);

	return newSubset;
}


//Pre-Conditions :	A and B are both of type struct DataSet
//Post-Conditions:	Returns true if A is a subset of B
//				 :	Returns false if A is NOT a subset of B
bool isSubset(struct DataSet* A, struct DataSet* B){
	int i = 0;

	// if A is smaller than B:
	if(A->array->length < B->array->length){
	// search for each element from A in B
		for(i = 0; i < A->array->length; i++)
			if (contains(B, A->array->data[i]) == false)
				// if an element of A is not found in B, return false
				return false;
	}

	// if A is NOT smaller than B
	else
		return false;

	// if the loop completes, A is a subset of B - return true
	return true;
}


//Pre-Conditions :	dataSet of type struct DataSet
//Post-Conditions:	returns the sum of all values in the passed set
//				 :	if the passed set contains the null set, returns 0
Word SumDataSet(struct DataSet* dataSet){
	int i = 0;
	Word sum = 0;

	// return NULL if set is empty
	if (isNull(dataSet) == true)
		return 0;	// considered passing NULL, but doesn't quite make sense

	// add each value in the set to the value in sum
	else
		for(i = 0; i < dataSet->array->length; i++)
			sum += dataSet->array->data[i];

	return sum;
}


//Pre-Conditions :	dataSet of type struct DataSet
//Post-Conditions:	returns the average value of the passed set
float AverageDataSet(struct DataSet* dataSet){
	// declare and initialize sum with the sum returned from SumDataSet function
	int sum = SumDataSet(dataSet);

	// calculate and return the average value
	return ((float)sum / (dataSet->array->length));
}


//Pre-Conditions :	set is of type struct DataSet
//Post-Conditions:	Returns a struct DataSet with the squared elements
struct DataSet* square(struct DataSet* set){
	int i = 0;
	struct DataSet* squaredSet = allocDataSet();

	// square each element of the original set and append it
	// to squaredSet
	for(i = 0; i < set->array->length; i++)
		appendDataSet(squaredSet, pow(set->array->data[i], 2));
	// if code doesn't compile properly because of pow()
	// compile with the flag -lm if using gcc

	return squaredSet;
}


//Pre-Conditions :	set is of type struct DataSet
//Post-Conditions:	subtracts min value from max value of given set
//				 :	and returns the result.
Byte RangeDataSet(struct DataSet* set){
	// calculate and return the difference
	return (set->max - set->min);
}

//Pre-Conditions :	dataSet is of type struct DataSet.
//Post-Conditions:	prints the passed set of elements to stdout.
void printDataSet(struct DataSet* dataSet){
	// call printDArray to handle printing
	printDArray(dataSet->array);
}


//Pre-Conditions :	setA and setB are of type struct DataSet
//Post-Conditions:	checks if setA and setB are exactly equivalent and
//				 :	returns true if equivalent and false if not equivalent
bool equals(struct DataSet* setA, struct DataSet* setB){
	int i = 0;

	// if setA and setB have equivalent lengths
	if (setA->array->length == setB->array->length)
		// test each value of setA against setB
		for (i = 0; i < setA->array->length; i++){
			// if a value in A is not found in setB, return false
			if (contains(setB, setA->array->data[i]) == false)
				return false;
		}

	// if setA and setB have different lengths
	else
		return false;

	// if all values were found
	return true;
}


#endif
/* END DataSet.h */
