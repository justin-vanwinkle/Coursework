/*  Author:         Justin VanWinkle
    Date:           2014.01.31
    Course:         COP 3223 - 003
    Title:          Program Assignment 3 - "Hiring Survey"
    Description:    This program is purposed to determine if an end-user is a good fit
                        for UCF games as an employee.

    Known Bugs:   No known bugs
*/


// preprocessor directives
#include <stdio.h>

// main function
int main(){

    // declarations
    char workedGames, salesExp, likeGames;
    int monthsExp;

    // prompt and scan for input
    printf ("Have you previously worked in a game store?\n");
    scanf (" %c", &workedGames);
    printf ("Do you have any experience in sales?\n");
    scanf (" %c", &salesExp);

    // handle case that user has sales experience
    switch(salesExp){
        case 'Y':
            printf("How many months of experience do you have?\n");
            scanf("%d", &monthsExp);
            break;
    }

    // continue prompt and scan
    printf ("Do you like video games?\n");
    scanf (" %c", &likeGames);

    // evaluate input and output response
    if (workedGames == 'Y' && likeGames == 'Y')
        printf("You are a good fit for UCF Games!\n\n");

    else if (monthsExp >= 3 && likeGames == 'Y')
        printf("You are a good fit for UCF Games!\n\n");

    else
        printf("You do not seem like a good fit for UCF Games.\n\n");

    return 0;
}
