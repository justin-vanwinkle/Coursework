/*
 ============================================================================
 Name        : personnel.c
 Author      : Justin VanWinkle
 Date	     : 04/11/2014
 Course		 : COP 3223 - 003
 Title		 : Program Assignment 8 - "Personnel System"
 Description : This program tracks employees, hours, pay, and calculates
 	 	 	 : 	the payroll for UCF Games.
 Bugs		 : No known bugs
 ============================================================================
 */


#include <stdio.h>

#define EMPLOYEES 10

void newhire(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES] , int * num);
void updatehours(int employee_hours[EMPLOYEES]);
void print(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES] , int num);
void payroll(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES] , int num);
int menu();

int main() {
    float employee_pay[EMPLOYEES];
    int employee_hours[EMPLOYEES];
    int num = 0, selection = 0, i, j;

    for(i=0; i<EMPLOYEES; i++) {
        employee_pay[i] = 0;
        employee_hours[i] = 0;
    }

    printf("Welcome to the UCF Games Personnel Records.\n");

    while (selection != 5) {
        selection = menu();

        if (selection == 1)
            newhire(employee_pay, employee_hours, &num);
        else if (selection == 2)
            updatehours(employee_hours);
        else if (selection == 3)
            print(employee_pay, employee_hours, num);
        else if (selection == 4)
            payroll(employee_pay, employee_hours, num);
        else if (selection == 5)
            printf("Thank you for using our system!\n");
        else
            printf("Sorry that was not a valid selection.\n");
    }

    return 0;
}


/*Pre-Conditions:  none
 *Post-Conditions: this function will print the menu, scan in the user's selection, and return that selection
 */
int menu() {

	// local var declaration
	int choice;

	// present menu options
	puts("What would you like to do?");
	puts("\t1 - Hire a new employee");
	puts("\t2 - Update an employee's hours");
	puts("\t3 - Print personnel information");
	puts("\t4 - Calculate payroll");
	puts("\t5 - Quit");

	// stdin for user input
	scanf("%d", &choice);

	// formatting: new line
	puts("");

	// return the value in choice to the calling function
	return choice;
}

/*Pre-Conditions:  This function takes in the employee pay array, which tracks the pay rate for each employee, indexed by employee number.
 *                 This function takes in the employee hours array, which tracks the hours per week for each employee, indexed by employee number.
 *                 This functions takes a pointer to num, which tracks the current number of employees
 *Post-Conditions: This function adds a new employee to the personnel system.  *num is the current employee number in a 0-based numbering system.
 *                 This function asks the user for the number of hours and pay rate for the new employee and records them in the arrays.
 *                 The number of current employees should be incremented before the function concludes.
 */
void newhire(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES] , int * num) {

	// print employee ID
	printf("This will be employee #%d.\n", *num+1);

	// request and scan employee hours
	puts("How many hours per week will this employee work?");
	scanf("%d", &employee_hours[*num]);

	// request and scan employee pay rate
	puts("What is this employee's hourly pay?");
	scanf("%f", &employee_pay[*num]);

	// formatting: new line
	puts("");

	// increment num to show current number of employees
		*num = *num + 1;

	return;
}

/*Pre-Conditions:  This function takes in the employee hours array, which tracks the hours per week for each employee, indexed by employee number.
 *Post-Conditions: This function asks the user which employee to modify.  This value is assumed to be valid.
 *                 The function them asks for the new number of hours and updates the hour array accordingly.
 */
void updatehours(int employee_hours[EMPLOYEES]) {

	// local var declaration
	int emp_id;

	// ask which employee to operate on and scan value
	puts("Which employee do you want to update?");
	scanf("%d", &emp_id);

	// ask for updated hours and scan value
	printf("How many hours will employee #%d work?\n", emp_id);
	scanf("%d", &employee_hours[emp_id-1]);

	// formatting: new line
	puts("");

	return;
}

/*Pre-Conditions:  This function takes in the employee pay array, which tracks the pay rate for each employee, indexed by employee number.
 *                 This function takes in the employee hours array, which tracks the hours per week for each employee, indexed by employee number.
 *                 This functions takes an integer num, which tracks the current number of employees
 *Post-Conditions: This function prints the employee information for each employee as specified in the program document.
 */
void print(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES], int num) {

	// local var declaration
	int i;

	// print header
	puts("Number \t Hours \t Pay Rate");

	// loop through each employee and print info
	for(i=0; i<num; i++)
		printf("#%d \t %d \t %.2f\n", i+1, employee_hours[i], employee_pay[i]);

	// formatting: new line
	puts("");

	return;
}

/*Pre-Conditions:  This function takes in the employee pay array, which tracks the pay rate for each employee, indexed by employee number.
 *                 This function takes in the employee hours array, which tracks the hours per week for each employee, indexed by employee number.
 *                 This functions takes an integer num, which tracks the current number of employees
 *Post-Conditions: This function calculates and prints the employee pay for the week for each employee as specified in the program document.
 */
void payroll(float employee_pay[EMPLOYEES], int employee_hours[EMPLOYEES], int num) {

	// local var declaration
	int i;
	float week_pay;

	// loop through, calculate, and print each individual on payroll
	for(i=0; i<num; i++){

		// calculate weekly pay here for readability
		week_pay = employee_pay[i] * employee_hours[i];

		// print payroll
		printf("Employee #%d will make $%.2f this week.\n", i+1, week_pay);
	}

	// formatting: new line
	puts("");

	return;
}
