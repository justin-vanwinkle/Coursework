/*
 ============================================================================
 Name        : tracker.c
 Author      : Justin VanWinkle
 Date	     : 02/25/2014
 Course		 : COP 3223 - 003
 Title		 : Program Assignment 6 - "Inventory Tracker"
 Description : This program is designed to track the inventory of a video game store.
 Bugs		 : No known bugs
 GRADER		 : The input specification does not specify a filename for the input file that will be used.
 	 	 	 	 I have used std in, so the grader can just pipe the input file when loading my program.
 	 	 	 	 If you do not pipe the input file, you will have to input the initial values by hand before
                    you are presented with a menu.
 ============================================================================
 */

#include <stdio.h>

int main() {

	int inventory[5];
	int menuOpt, genreOpt, amount;
	int quit = 0;
	int i;

	// scan for initial inventory
	for (i=0; i<5; i++)
		scanf ("%d", &inventory[i]);

	printf("\nWelcome to the UCF Games Inventory Tracker!\n");

	// run until quit
	while (quit == 0){

		// menu options
		printf("What would you like to do?\n");

		printf("\t1. Increase Inventory \n"
				"\t2. Decrease Inventory \n"
				"\t3. View Inventory \n"
				"\t4. Quit \n");

		scanf("%d", &menuOpt);

		// handle menu choice
		switch (menuOpt) {

			// case: increase inventory
			case 1:
				printf("\nWhich inventory would you like to increase?\n");
				scanf("%d", &genreOpt);
				printf("\nHow much stock would you like to add?\n");
				scanf("%d", &amount);
				inventory[genreOpt-1] += amount;
				printf("\n");	// formatting
				break;

			// case: decrease inventory
			case 2:
				printf("\nWhich inventory would you like to decrease?\n");
				scanf("%d", &genreOpt);
                printf("\nHow much stock would you like to remove?\n");
                scanf("%d", &amount);
                printf("\n"); 	// formatting

				// ensure sufficient stock
				if (inventory[genreOpt-1] < amount)
					printf("Sorry, you do not have that much stock.\n\n");

                // if sufficient stock, then perform arithmetic
				else
					inventory[genreOpt-1] -= amount;

				// low-stock check
				for (i=0; i<5; i++)
					if (inventory[i] < 100)
						printf("You should purchase more games for genre %d.\n\n", i+1);
				break;

			// case: view inventory
			case 3:
				printf("\nGenre\tStock\n");
				// loop through array and print
				for (i=0; i<5; i++)
					printf("%d\t%d\n", i+1, inventory[i]);
				printf("\n");	// formatting
				break;

			// case: quit
			case 4:
				quit = 1;
				break;

			// handle invalid case
			default:
				printf("\nSorry, that was not a valid input.\n\n");
		}
	}
	return 0;
}
