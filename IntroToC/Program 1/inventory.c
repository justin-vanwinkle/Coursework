/*  Author:         Justin VanWinkle
    Date:           2014.01.15
    Course:         COP 3223 - 003
    Title:          Program Assignment 1 - "Inventory"
    Description:    This program is purposed to analyze poling data which represents
                      the public's desire for specific genres of games.  The program
                      uses the user's input to determine the number of games, per
                      genre, that should be ordered.
    Bugs:           No known bugs */


// preprocessor directives
#include <stdio.h>


// main function
int main(){

    // declarations
    float fantasy = 0, shooting = 0, arcade = 0;

    // prompt and scan for user input
    printf("What percentage prefer fantasy games?\n");
    scanf("%f", &fantasy);

    printf("What percentage prefer shooting games?\n");
    scanf("%f", &shooting);

    printf("What percentage prefer arcade games?\n");
    scanf("%f", &arcade);

    // calculate results and print to screen
    printf("\n\nThe business should buy %.0f Fantasy Games.\n", fantasy * 500);
    printf("The business should buy %.0f Shooting Games.\n", shooting * 500);
    printf("The business should buy %.0f Arcade Games. \n\n", arcade * 500);

    // return exit status
    return 0;

}
