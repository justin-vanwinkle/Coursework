// File: DoubleLinkedList.h

/*
 * Author1: Justin VanWinkle
 * Author2: Daniel Martinez
 *
 * Course: COP3502, SummerC 2014
 *
 * DoubleLinkedList.h: This file is designed to support operations
 * as they pertain to doubly linked lists.
 *
 */

/* BEGIN DoubleLinkedList.h */

#ifndef DoubleLinkedList_H_
#define DoubleLinkedList_H_

typedef unsigned int uint;
typedef unsigned long ulong;
typedef void* Object;

typedef struct DNode{
	Object data;
	struct DNode* prev;
	struct DNode* next;
}DNode;

typedef struct DoubleLinkedList{
	DNode* head;
	DNode* tail;
	uint length;
	uint elementSize;	// passed from main
}DoubleLinkedList;

// Function Prototypes
DoubleLinkedList* allocDList(uint elementSize);
void releaseDList(DoubleLinkedList* list);
void releaseAllDNodes(DNode* node);
void releaseSingleDNode(DNode* node);
void releaseData(Object data);
void insertDListElementAt(DoubleLinkedList* list, Object newElement, uint position);
void appendDList(DoubleLinkedList* list, Object newElement);
void insertDList(DoubleLinkedList* list, Object newElement);
DoubleLinkedList* reverseDList(DoubleLinkedList* list);
DoubleLinkedList* halfList(DoubleLinkedList* list);
Object removeDList(DoubleLinkedList* list, uint position);
void printDList(DoubleLinkedList* list);
void debugDList(DoubleLinkedList* list);

#endif
/* END DoubleLinkedList.h */
