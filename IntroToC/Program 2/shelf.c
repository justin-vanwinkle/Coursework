/*  Author:         Justin VanWinkle
    Date:           2014.01.15
    Course:         COP 3223 - 003
    Title:          Program Assignment 2 - "Shelf"
    Description:    This program is purposed to tell the end user how many
                      games they are able to display on one shelf and how
                      many games they can display with a given shelf space. */
/*  Known Bugs:
        No known bugs */


// preprocessor directives
#include <stdio.h>


// main function
int main(){

    // declarations
    int shelfLength, gameLength, numShelves, gamesToDisplay, gamesPerShelf, shelvedGames, gamesToStore;

    // prompt and scan for user input
    printf("What is the length of the shelf, in inches?\n");
    scanf("%d", &shelfLength);
    printf("What is the length of the game, in inches?\n");
    scanf("%d", &gameLength);

    // calculate and print result to screen
    printf("%d games can be displayed on 1 shelf.\n\n", gamesPerShelf = shelfLength / gameLength);

    // prompt and scan for user input
    printf("How many shelves are there?\n");
    scanf("%d", &numShelves);
    printf("How many games do you want to display?\n");
    scanf("%d", &gamesToDisplay);

    // calculations
    shelvedGames = gamesPerShelf * numShelves;
    gamesToStore = gamesToDisplay - shelvedGames;

    // print results
    printf("%d games can be displayed on %d shelves.  %d games will have to be stored in the back.\n\n\n", shelvedGames, numShelves, gamesToStore);

    return 0;
}
