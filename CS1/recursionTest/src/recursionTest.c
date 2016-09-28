/*
 ============================================================================
 Name        : recursionTest.c
 Author      : Justin VanWinkle
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int test(void);

int treeCheck = 0;

int main(void)
{

	test();

	return EXIT_SUCCESS;
}


int test(void)
{

	if (treeCheck < 10)
	{
	printf("treeCheck = [%d]\n", treeCheck);
	treeCheck++;
	test();
	}
	else
	{
	treeCheck = 0;
	printf("treeCheck = [%d]\n", treeCheck);
	}
}
