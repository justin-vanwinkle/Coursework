#include "Debug.h"


void debug(){
	DoubleLinkedList* list = allocDList(sizeof(char));
	char test = 'A';
	printf("TESTING APPEND ...\n\n");
	appendDList(list, &test);
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");
	test += 1;
	appendDList(list, &test);
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");
	test += 1;
	appendDList(list, &test);
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");
	test += 1;
	printf("TESTING INSERT ...\n\n");
	insertDList(list, &test);
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");
	test += 1;
	printf("TESTING INSERT AT 2 then 1 ...\n\n");
	insertDListElementAt(list, &test, 2);
	test += 1;
	insertDListElementAt(list, &test, 1);
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");

	//half list
	printf("TESTING HALF ...\n\n");
	DoubleLinkedList* half = halfList(list);
	debugDList(half);
	printf("\n");
	printDList(half);
	printf("\n");

	//reverse list
	printf("TESTING REVERSE ...\n\n");
	DoubleLinkedList* reverse = reverseDList(list);
	debugDList(reverse);
	printf("\n");
	printDList(reverse);
	printf("\n");

	//testing remove
	printf("TESTING REMOVE ...\n\n");
	while(reverse->length){
		removeDList(reverse, 0);
		debugDList(reverse);
		printf("\n");
		printDList(reverse);
		printf("\n");
	}

	printf("TESTING RANDOM ELEMENT REMOVAL ...\n\n");
	Object data = removeDList(list, 1);
	printf("REMOVED ");
	printElement(data);
	printf("\n");
	debugDList(list);
	printf("\n");
	printDList(list);
	printf("\n");

	releaseDList(reverse);
	releaseDList(half);
	releaseDList(list);
}
