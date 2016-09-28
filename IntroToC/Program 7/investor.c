/*
 ============================================================================
 Name        : investor.c
 Author      : Justin VanWinkle
 Date	     : 04/01/2014
 Course		 : COP 3223 - 003
 Title		 : Program Assignment 7 - "Investing in UCF Games"
 Description :
 Bugs		 : No known bugs
 Notes		 : Money is taken from row i, column j, where i=j - this
 	 	 	 :	 represents total investment.
 	 	 	 : Money is added to the receiver's column[j] on the sender's
 	 	 	 :	row[i]
 	 	 	 : The column (i) of the investment array holds the current
 	 	 	 :	amount available for investor i.
 	 	 	 : It would be more beneficial if the function calls didn't
 	 	 	 :	exist since they are only called in one location - this was
 	 	 	 :  done purely for the sake of learning how to pass 2-D arrays
			 :	by reference.
 ============================================================================
 */

// preprocessor directives
#include <stdio.h>
#include <string.h>

// function prototypes
int menu(void);
void invest(char investor[10][11], int investment[10][10], int numInvestors, int * transFlag);
void view(char investor[10][11], int investment[10][10], int numInvestors, int transFlag);
void finalOut(char investor[10][11], int investment[10][10], int numInvestors, int transFlag);
//void invest(char ** investor, int ** investment, int numInvestors, int * transFlag);
//void view(char ** investor, int ** investment, int numInvestors, int transFlag);
//void finalOut(char ** investor, int ** investment, int numInvestors, int transFlag);



int main(){

	// declarations
	FILE *ifp;
	int choice, numInvestors, transFlag = 0, i, j;
	int investment[10][10];
	char investor[10][11];

	// initialize file pointer
	ifp = fopen("/home/justin/Dropbox/JUSTIN/development/Intro to C HW/src/input.txt", "r");	//debian

	// get number of investors
	fscanf(ifp, "%d", &numInvestors);

	// get investor names, store, and print to screen
	printf("Here are your investors:\n");
	for(i=0; i<numInvestors; i++){
		fscanf(ifp, "%s", investor[i]);
		printf("%s\n", investor[i]);
	}

	// get investment profiles and store
	for(i=0; i<numInvestors; i++)
		for(j=0; j<numInvestors; j++)
			fscanf(ifp, "%d ", &investment[i][j]);


	// infinitely loop until user quits
	while (1){

		choice = menu();	// call menu function and initialize choice

		// user chooses to invest
		if(choice == 1)
			invest(investor, investment, numInvestors, &transFlag);		// call invest function

		// user chooses to view
		else if(choice == 2)
			view(investor, investment, numInvestors, transFlag);		// call view function

		// user chooses to quit
		else if(choice == 3){
			finalOut(investor, investment, numInvestors, transFlag);	// call finalOut function

			// close and exit
			fclose(ifp);
			return 0;
		}
	}
}


// 	Pre-conditions: 	None
// 	Post-conditions: 	Prints out a menu for the user's choices and
//						 prompts the user to select a choice. This is
//						 repeated until a valid choice is entered.
//						 This value is then returned.
int menu(void){

	// local variables
	int input, valid = 0;


	// loop until valid menu choice received
	while(valid == 0){

		// menu options
		puts("\nSelect one of the following:");
		puts("1. Invest money with someone.");
		puts("2. See Transactions between investors");
		puts("3. Quit");

		// receive user input
		scanf("%d", &input);

		// check for valid input
		if(input >= 1 && input <= 3)
			valid = 1;
		else
			puts("Sorry that was not a valid input.");
	}

		return input;
}


//	Pre-condition	: 	investor is a 2-D array of characters that represents investor names
//				   	:	investment is a 2-D array of integers representing an investment portfolio
//				   	:	numInvestors >= 0
//	Post-condition	:	If a transaction has been made, returns 1 to show that a transaction has been made
//					:	Otherwise, continues back to main function
void invest(char investor[10][11], int investment[10][10], int numInvestors, int * transFlag){
//void invest(char ** investor, int ** investment, int numInvestors, int * transFlag){
	char sender[11], receiver[11];
	int amount,sum, i, j;

	// ask questions, store answers
	puts("Who is sending the money?");
	scanf ("%s", sender);
	puts("Who is receiving the money?");
	scanf ("%s", receiver);
	puts("Amount of money being transferred?");
	scanf("%d", &amount);

	// find sender's row in investor array and subtract amount
	for(i=0; i<numInvestors; i++){
		if(strcmp(sender, investor[i]) == 0){

			sum = 0;  // for accuracy

			// sum investor's money (tracked by column)
			for(j=0; j<numInvestors; j++)
				sum += investment[j][i];

			// investor has enough money, complete transaction
			if(amount <= sum){
				investment[i][i] -= amount;		// subtract investment from investor's row and column (i=j)

				// find receiver's row in investor's column of and add amount
				for(j=0; j<numInvestors; j++){
					if(strcmp(receiver, investor[j]) == 0){
						investment[i][j] += amount;		// add investment to receiver's column / sender's row
						*transFlag = 1;		// show that a transaction has been made
					}
				}
			}

			// investor doesn't have enough money, no transaction made
			else
				printf("Sorry this transaction cannot be performed. %s does not have enough money.\n", investor[i]);
		}
	}

	return;
}


//	Pre-condition	: 	investor is a 2-D array of characters that represents investor names
//				   	:	investment is a 2-D array of integers representing an investment portfolio
//				   	:	numInvestors >= 0
//	Post-condition	:	None
void view(char investor[10][11], int investment[10][10], int numInvestors, int transFlag){
//void view(char ** investor, int ** investment, int numInvestors){
	int i, j;

	// if transaction history exists
	if (transFlag == 1){
		// loop through investment array and print investment history
		for(i=0; i<numInvestors; i++)
			for(j=0; j<numInvestors; j++)
				if(i != j && investment[i][j] != 0)
					printf("%s made a $%d investment with %s\n", investor[i], investment[i][j], investor[j]);
	}

	// if transaction history does not exist
	else{
		puts("There have not been any transactions thus far.");
	}

	return;
}

//	Pre-condition	: 	investor is a 2-D array of characters that represents investor names
//				   	:	investment is a 2-D array of integers representing an investment portfolio
//				   	:	numInvestors >= 0
//	Post-condition	:	None
void finalOut(char investor[10][11], int investment[10][10], int numInvestors, int transFlag){
	int i, j;
	// case: transactions have been made before quitting
	if(transFlag == 1){


		// find highest investment amount
		j = 0;	// base case

		for(i=0; i<numInvestors; i++){

			// total output is tracked by row i, column j, where i=j
			if(investment[i][i] < investment[j][j])
				j = i;
		}

		// print highest investor
		printf("%s made the most investment!\n", investor[j]);
	}

	// case: no transactions made before quitting
	else
		printf("No investments have been made.\n");

	return;
}
