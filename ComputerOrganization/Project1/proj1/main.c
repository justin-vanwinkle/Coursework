/*
 ============================================================================
 Name        : project1.c
 Author      :
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define ID_LENGTH 6

int main(void) {

    int i = 0;
	int S = 0;
	int S_cpy = 0;
	int *id = (int *) malloc(sizeof(int) * ID_LENGTH);


	printf("Enter your 6 digit PID for A, B, C, D, E, and F respectively:\n");

    for(i = 0; i < ID_LENGTH; ++i)
    {
        scanf("%d", &id[i]);
    }

    // copy out the values to preserve originals
    int A = id[0];
    int B = id[1];
    int C = id[2];
    int D = id[3];
    int E = id[4];
    int F = id[5];
    int W = 0;
    int X = 0;
    int Y = 0;
    int Z = 0;

    // A*B
    for(i = 0; i < B; ++i)
    {
        W += A;
    }

    // 18*C
    for(i = 0; i < 18; ++i)
    {
        X += C;
    }

    // 9*D
    for(i = 0; i < 9; ++i)
    {
        Y += D;
    }

    // E*F
    for(i = 0; i < F; ++i)
    {
        Z += E;
    }

    S = W + X - Y - Z;

    printf("S_ten = %d\n", S);

    printf("S_two = ");

    S_cpy = S;

    char buffer [30];
    itoa(S_cpy,buffer,2);
    printf("%s", buffer);

    printf("\n\n");

    // div by 2
    S_cpy = S;
    while(!(S_cpy < 2))
    {
        S_cpy -= 2;
    }
    if(S_cpy)
        printf("Remainder of division by 2 is %d\n", S_cpy);
    else
        printf("S is divisible by 2!\n");

    //div by 3
    S_cpy = S;
    while(!(S_cpy < 3))
    {
        S_cpy -= 3;
    }
    if(S_cpy)
        printf("Remainder of division by 3 is %d\n", S_cpy);
    else
        printf("S is divisible by 3!\n");

     //div by 5
    S_cpy = S;
    while(!(S_cpy < 5))
    {
        S_cpy -= 5;
    }
    if(S_cpy)
        printf("Remainder of division by 5 is %d\n", S_cpy);
    else
        printf("S is divisible by 5!\n");

    //div by 7
    S_cpy = S;
    while(!(S_cpy < 7))
    {
        S_cpy -= 7;
    }
    if(S_cpy)
        printf("Remainder of division by 7 is %d\n", S_cpy);
    else
        printf("S is divisible by 7!\n");

	return 0;
}
