//File: DoubleLinkedList.c

/*
 * Author1: Justin VanWinkle
 * Author2: Daniel Martinez
 *
 * Course: COP3502, SummerC 2014
 *
 * DoubleLinkedList.c: This file is designed to support operations
 * as they pertain to doubly linked lists.
 *
 */

#include <stdlib.h>
#include <stdbool.h>
#include "DoubleLinkedList.h"


//Pre-Conditions :	elementSize is of type uint (unsigned int).
//Post-Conditions:	Allocates space for a struct DoubleLinkedList, and
//				 :	sets length to 0 and elementSize to the passed value.
//				 :	Returns a pointer to the new struct DoubleLinkedList.
DoubleLinkedList* allocDList(uint elementSize){
	// allocate memory for list
	DoubleLinkedList* doubleLinkedList = (DoubleLinkedList*)calloc(1, sizeof(DoubleLinkedList));
	// initialize length and elementSize
	doubleLinkedList->length = 0;
	// elementSize is to be passed from main.c
	doubleLinkedList->elementSize = elementSize;

	return doubleLinkedList;
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//Post-Conditions:	frees space allocated for DNodes in the passed list
//				 :	then frees space allocated for the passed list.
void releaseDList(DoubleLinkedList* list){
	if (list){
		releaseAllDNodes(list->head);
		free(list);
	}
}

//Pre-Conditions :	node is of type DNode
//Post-Conditions:	frees space allocated for all DNodes after the passed node
void releaseAllDNodes(DNode* node){

	// Using Recursion
	if(node){
//		releaseData(&node->data);
		if(node->next){
			releaseAllDNodes(node->next);
		}
	}
	free(node);
}
//Pre-Conditions :	node is of type DNode
//Post-Conditions:	frees space allocated for a single DNode
void releaseSingleDNode(DNode* node){
	if(node){
//		releaseData(&node->data);
		free(node);
	}
}

//Pre-Conditions :	data is of type Object
//Post-Conditions:	frees space allocated for an Object
//KNOWN BUG		 :	this function is known to throw an error for
//				 :	doubly freeing memory, so it has been unfortunately excluded
void releaseData(Object data){
	if(data){
		free(data);
	}
}

//Pre-Conditions :	list is of type struct DoubleLinkedList
//				 :	newElement is of type Object (void*)
//				 :	position is a non-negative integer.
//Post-Conditions:	Inserts the passed value (newElement) at the
//				 :	passed position (position) of the passed list.
//				 :	Following elements are shifted one position toward the end.
void insertDListElementAt(DoubleLinkedList* list, Object newElement, uint position){

	int i = 0;

	if (position == 0 && list->length == 0){
		appendDList(list, newElement);
	}

	else if(position == 0){

		// allocate, initialize, and point
		DNode* newNode = (DNode*)malloc(sizeof(DNode));
		newNode->data = malloc(sizeof(list->elementSize));

		// set pointers of nodes being pushed
		list->head->prev = newNode;
		newNode->next = list->head;
		list->head = newNode;
//		newNode->data = (Object)newElement;
		memcpy(&newNode->data, newElement, sizeof(list->elementSize));
	}

	else{
		// start the iterator at the head
		DNode* iterator = list->head;

		// if it needs to go on the tail (This prevents pointer issues)
		if (position >= list->length)
			appendDList(list, newElement);

		else{
			// iterate to the position
			for (i = 0; i < position - 1; i++){
				iterator = iterator->next;
			}

			// allocate space and copy data in
			DNode* newNode = (DNode*)malloc(sizeof(DNode));
			newNode->data = malloc(list->elementSize);
//			newNode->data = newElement;
			memcpy(&newNode->data, newElement, sizeof(list->elementSize));

			// set pointers
			newNode->next = iterator->next;
			newNode->prev = iterator;
			iterator->next->prev = newNode;
			iterator->next = newNode;
		}
	}

	list->length++;
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//				 :	newElement is of type Object (void*).
//Post-Conditions:	Appends the passed element to
//				 :	the end of the passed list.
void appendDList(DoubleLinkedList* list, Object newElement){
	//TODO this code could be cleaned and combined for clarity as time permits

	// If list is empty, our newNode will be head and tail of our list
	if (list->length == 0){
		list->head = (DNode*)calloc(1, sizeof(DNode));

		// insert data
		list->head->data = calloc(1, list->elementSize);
		memcpy(&list->head->data, newElement, sizeof(list->elementSize));

		// set  tail pointer
		list->tail = list->head;
	}

	// If the list has at least one element:
	else {
		DNode* iterator = list->head;
		while(iterator->next){
			iterator = iterator->next;
		}

		// initialize data
		iterator->next = (DNode*)malloc(sizeof(DNode));
		iterator->next->data = malloc(list->elementSize);
		memcpy(&iterator->next->data, newElement, sizeof(list->elementSize));

		// move tail ptr
		list->tail = iterator->next;
		list->tail->prev = iterator;
	}

	++list->length;
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//				 :	newElement is of type Object (void*).
//Post-Conditions:	Inserts the passed element as the new head
//				 :	of the passed list.  All following elements
//				 :	are pushed one position toward the end.
void insertDList(DoubleLinkedList* list, Object newElement){
	// Don't rewrite the wheel - just place it at the head
	insertDListElementAt(list, newElement, 0);
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//Post-Conditions:	Returns a list that is the reverse of
//				 :	the passed list.
DoubleLinkedList* reverseDList(DoubleLinkedList* list){

		// allocate a new list
		DoubleLinkedList* reverseList = allocDList(list->elementSize);

		// append each element of list (from tail to head) to reverseList
		DNode* iterator = list->tail;
		while (iterator){
			appendDList(reverseList, iterator);
			iterator = iterator->prev;
		}
		return reverseList;

}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//Post-Conditions: 	Returns a list that contains only the values
//				 :	after the mid-point of the passed list.
DoubleLinkedList* halfList(DoubleLinkedList* list){

	// sentinel
	bool notMiddle = true;

	// list to hold half list
	DoubleLinkedList* half = allocDList(list->elementSize);

	// create pointers that will iterate forward and backward
	DNode* forward = list->head;
	DNode* reverse = list->tail;


	while(notMiddle){

		// are we at the middle yet?
		if (forward == reverse || forward->next == reverse)
			notMiddle = false;

		// as long as we don't reach the case that forward == middle, we want to append
		if(!(forward == reverse)){
		insertDList(half, &reverse->data);

		// advance pointers
		forward = forward->next;
		reverse = reverse->prev;
		}
	}

	return half;
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//				 :	position is a non-negative integer.
//Post-Conditions:	Removes node of passed list and returns
//				 :	a pointer to the value in the removed node.
Object removeDList(DoubleLinkedList* list, uint position){

//	// prevent crashing with an empty list
//	if(list->length == 0){
//		return NULL;
//	}

	int i = 0;
	Object value = NULL;

	// initialize iterator as head (0th position)
	DNode* iterator = list->head;

	// move iterator to desired node
	for (i = 0; i < position; i++){
		iterator = iterator->next;
	}

	value = iterator->data;

	// case: position falls somewhere in the middle of the list
	if(position != 0 && iterator != list->tail){
		// set surrounding pointers to skip the removed node
		iterator->next->prev = iterator->prev;
		iterator->prev->next = iterator->next;
		list->length = list->length - 1;
		releaseSingleDNode(iterator);
	}

	// case: position is at head
	else if(position == 0){
		list->head = list->head->next;
		releaseSingleDNode(iterator);
		list->length = list->length - 1;
	}

	// case: position is at tail and there is more than one node
	else if(iterator == list->tail){
		list->tail = iterator->prev;
		list->length = list->length - 1;
		releaseSingleDNode(iterator);
	}

	return value;
}

//Pre-Conditions :	list is of type struct DoubleLinkedList.
//Post-Conditions:	Prints the data in each node of of the passed
//				 :	list to stdout.
void printDList(DoubleLinkedList* list){

	DNode* iterator = list->head;

	// iterate to each node and print the data
	while(iterator){
		printf("%c", (int*)iterator->data);
		iterator = iterator->next;
	}
}

// DISREGARD FOR GRADING PURPOSES
// This is a function that was included by the Professor for debugging.
void debugDList(DoubleLinkedList* list){
    DNode* iter = list->head;
    while(iter){
        printf("%p\t", iter);
        iter = iter->next;
    }
    printf("\n");
    iter = list->tail;
    while(iter){
        printf("%p\t", iter);
        iter = iter->prev;
    }
    printf("\n\n");
}
