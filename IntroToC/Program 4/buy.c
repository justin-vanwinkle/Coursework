/*  Author:         Justin VanWinkle
    Date:           2014.02.03
    Course:         COP 3223 - 003
    Title:          Program Assignment 4 - "Purchase Simulator"
    Description:    This program is purposed to output the total cost of a purchase based on a user's choice.
    Known Bugs:     No Known Bugs */


// preprocessor directives
#include <stdio.h>


// main function
int main(){

    // declarations
    float costNew = 50 , costUsed = 10, totalCost;
    int numNew, numUsed, userChoice = 0, sumNew = 0, sumUsed = 0;

    // greeting
    printf("Welcome to UCF Games!\n");

    // loop until user chooses to quit
    while (userChoice != 3) {

        // present user with options
        printf("What would you like to do? \n\t1. Buy New Games. \n\t2. Buy Used Games. \n\t3. Quit \n");
        scanf("%d", &userChoice);

        // user choice = new games
        if (userChoice == 1) {
            printf("How many new games would you like to buy?\n");
            scanf("%d", &numNew);
            sumNew += numNew;
        }

        // user choice = used games
        else if (userChoice == 2) {
            printf("How many used games would you like to buy?\n");
            scanf("%d", &numUsed);
            sumUsed += numUsed;
        }

        // user choice = quit
        else if (userChoice == 3) {
            totalCost = costNew * sumNew + costUsed * sumUsed;
            printf("\nYour total cost is $%.2f.\n\n", totalCost);
        }

        // handle invalid user choice
        else {
            printf("Sorry, %d is not a valid choice.\n\n", userChoice);
        }
    }

    return 0;
}
