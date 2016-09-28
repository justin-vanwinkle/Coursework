/*  Author:         Justin VanWinkle
    Date:           2014.02.12
    Course:         COP 3223 - 003
    Title:          Program Assignment 5 - "Golf Game Scorer"
    Description:    This program is purposed to analyze the data from a golf game and return the
                        score of each player as well as the winner of the game.
    Known Bugs:     Does not take in to account the case that two players tie */


// preprocessor directives
#include <stdio.h>

#define HOLES 18

// main function
int main(){

    // declarations
    FILE *ifp;
    int numPlayers, coursePar = 0 , holePar, holeScore, lowScore, winner;
    int score[4];
    int i, j;

    // initialize file pointer
    ifp = fopen("input.txt", "r");

    // read file header
    fscanf(ifp, "%d", &numPlayers);

    // calculate course par
    for (i = 0; i < HOLES; i++){
        fscanf(ifp, "%d", &holePar);
        coursePar += holePar;
    }

    // calculate, store, and print player scores
    for (i = 0; i < numPlayers; i++) {

        // prevent garbage values
        score[i] = 0;

        for (j = 0; j < HOLES; j++) {
        fscanf(ifp, "%d", &holeScore);
        score[i] += holeScore;
        }

        printf("Player %d scored %d.\n", (i + 1), (score[i] - coursePar));
    }

    // search for and output the winner
    for (i = 0; i < numPlayers; i++){

        if (i == 0){
            lowScore = score[i];
            winner = i + 1;
        }

        else if (score[i] < lowScore){
            lowScore = score[i];
            winner = i + 1;
        }
    }

    printf("\nPlayer %d is the winner!", winner);

    // clean up
    fclose(ifp);

    return 0;
}
