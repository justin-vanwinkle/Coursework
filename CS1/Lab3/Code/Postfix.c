//File: Postfix.c

/*
 * Author1: Justin VanWinkle
 * Author2: Danilo Martinez
 * Author3: Gustavo Gonzalez
 *
 * Course: COP3502, SummerC 2014
 *
 * ProcessScheduling.c: This program uses command line input received via argv
 * to evaluate a postfix expression.  Once evaluated, the evaluated value is output.
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdbool.h>
#include <ctype.h>
#include "DArray.h"

int pop(ArrayList* stack, int position);
int operation(int val1, int val2, char operator);

int main(int argc, char* argv[])
{
	ArrayList* stack = allocDArray(argc-1, sizeof(int));
	int mainIndex = 1;
	int temp = 0;
	char operator = 0;




	while(mainIndex < argc-1)
	{

		while (true)
		{
			// build stack (not worth writing a push function)
			if(isdigit(*argv[mainIndex]))
			{
				stack->data[stack->length] = atoi(argv[mainIndex]);
				stack->length++;
				mainIndex++;
			}

			// get operator
			else
			{
				memcpy(&operator, argv[mainIndex], sizeof(char));
				mainIndex++;
				break;
			}
		}


		// perform operation
		while (stack->length > 1)
		{
			temp = pop(stack, stack->length - 1);
			stack->data[stack->length - 1] = operation(stack->data[stack->length - 1], temp, operator);

		}
	}

	// pop the final value and free the allocated stack
	temp = pop(stack, stack->length - 1);
	free(stack);

	printf("\tThe Evaluation of postfix expression is: [%d]\n\n", temp);

	return 0;
}

/**
 * Utitilty function for popping the top of the stack
 */
int pop(ArrayList* stack, int position)
{
	int popper = 0;

	popper = stack->data[position];

	free(stack->data[position] = NULL);
	stack->length--;

	return popper;
}

/**
 * Utitilty function for performing computation
 */
int operation(int val1, int val2, char operator)
{
	switch(operator)
				{
					case '+':
						val1 += val2;
						break;
					case '-':
						val1 -= val2;
						break;
					case '*':
						val1 *= val2;
						break;
					case '/':
						val1 /= val2;
						break;
					case '%':
						val1 %= val2;
						break;
					case '^':
						val1 = pow (val2, val1);
						break;
				}

	return val1;
}
