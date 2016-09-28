/*
 ============================================================================
 Name        : mysh.c
 Author      : Justin VanWinkle
 Version     : 0.0
 Description : A basic shell
 Reference Materials:
 3p man page
 http://pubs.opengroup.org/onlinepubs/9699919799/
 http://stephen-brennan.com/2015/01/16/write-a-shell-in-c/
 http://www.csl.mtu.edu/cs4411.ck/www/NOTES/process/fork/exec.html
 http://linux.die.net/man/3/execvp
 ============================================================================
 */

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<signal.h>
#include<sys/wait.h>
#include<sys/stat.h>
#include<unistd.h>
#include<stdbool.h>
#include<errno.h>
#include<limits.h>

#define BUFSIZE 64			// buffer size extension reference
#define MAX_ARGS 64			// max # args
#define SEPARATORS " \t\n"	// arg separators (space, tab, newline)
#define HISTORY [][]		// array to hold history
#define HISTORY_SIZE 10

// function declarations
// mysh functionality:
void mysh(void);
char *mysh_read_line(void);
char **mysh_split_line(char*);
int mysh_launch(char**);
int mysh_execute(char**);
int mysh_num_commands(void);
int mysh_store_history(char * line);
// commands:
int mysh_cd(char **args);
int mysh_quit(char **args);
int mysh_clear(char **args);
int mysh_pwd();
int mysh_history(char **args);
int mysh_run(char **args);
int mysh_background(char **args);
int mysh_murder(char **args);
int mysh_repeat(char **args);
int mysh_murderall(void);

//global vars
static char *g_pwd = NULL;
static char *g_history[HISTORY_SIZE][1] = {NULL};
int *g_pid;
int g_pid_array_size = 2;

/**
 * list of built in commands
 */
char *command_str[] =
{
		"cd",
		"quit",
		"clear",
		"pwd",
		"history",
		"run",
		"background",
		"murder",
		"repeat",
		"murderall"
};

/**
 * list of functions to match built in commands
 */
int (*command_func[]) (char **) =
{
		&mysh_cd,
		&mysh_quit,
		&mysh_clear,
		&mysh_pwd,
		&mysh_history,
		&mysh_run,
		&mysh_background,
		&mysh_murder,
		&mysh_repeat,
		&mysh_murderall
};

/**
 * entry point of program
 * setup and cleanup here
 */
int main(void)
{
	// load config files here

	// call main loop
	mysh();

	// perform shutdown/cleanup here

	exit(EXIT_SUCCESS);
}

/**
 * main looping function
 */
void mysh(void)
{
	char *line;
	char **args;
	char *prompt = "# ";
	int status;
	char buff[PATH_MAX + 1];

	g_pwd = malloc(sizeof(getcwd(buff, PATH_MAX)) * sizeof(char*));
	g_pwd = strcpy(g_pwd, getcwd(buff, PATH_MAX));

	g_pid = calloc(g_pid_array_size, sizeof(int));

	// loop until "quit" or EOF of redirected input
	do
	{
		fputs(prompt, stdout);			// print prompt
		line = mysh_read_line();		// get line
		mysh_store_history(line);
		args = mysh_split_line(line);	// tokenize to extract args
		status = mysh_execute(args);	// execute

		free(line);
		free(args);

	} while(status);
	return;
}

/**
 *	aux function to get input
 */
char *mysh_read_line(void)
{
	char *line = NULL;
	ssize_t bufsize = 0;	//getline allocates larger bufsize as needed
	getline(&line, &bufsize, stdin);
	return line;
}

/**
 *	aux function to tokenize input
 */
char ** mysh_split_line(char *line)
{
	int bufSize = BUFSIZE;
	int pos = 0;
	char **args = malloc(bufSize * sizeof(char*));
	char *arg;

	// if *args is null, print an error and exit
	if(!args)
	{
		fprintf(stderr, "   mysh: memory allocation error\n");
		exit(EXIT_FAILURE);
	}

	// tokenize arg from line
	arg = strtok(line, SEPARATORS);
	// put arg in args[pos] and move index
	while(arg != NULL)
	{
		args[pos] = arg;
		pos++;

		// if args fills up, realloc for more space
		if(pos >= bufSize)
		{
			bufSize += BUFSIZE;
			args = realloc(args, bufSize * sizeof(char*));
			// if *args is null, print error and exit
			if(!args)
			{
				fprintf(stderr, "   mysh: memory reallocation error\n");
				exit(EXIT_FAILURE);
			}
		}
		// null termination on each arg
		arg = strtok(NULL, SEPARATORS);
	}
	// give a null arg so we know it's the end
	args[pos] = NULL;
	return args;
}

/**
 *	aux function to launch commands
 */
int mysh_launch(char ** args)
{
	pid_t pid;
	pid_t wpid;
	int status;

	// for the current process and grab its pid
	pid = fork();

	if(pid == 0)
	{
		// execute
		if(execvp(args[0], args) == -1)
		{
			perror("   mysh: ");
			printf("\n");
		}
		exit(EXIT_FAILURE);
	}
	// forking error
	else if (pid < 0)
	{
		perror("   mysh: ");
		printf("\n");
	}
	// parent process will take this route
	else
	{
		do
		{
			wpid = waitpid(pid, &status, WUNTRACED);
		} while (!WIFEXITED(status) && !WIFSIGNALED(status));
	}

	return 1;
}

/**
 *	aux function to execute commands
 */
int mysh_execute(char **args)
{
	int i;

	// empty command
	if(args[0] == NULL)
	{
		return 1;
	}

	//check for built in command
	for(i=0; i<mysh_num_commands(); i++)
	{
		if(strcmp(args[0], command_str[i]) == 0)
		{
			return (*command_func[i])(args);
		}
	}

	// if command is not build in, call launch
	return mysh_launch(args);
}

/**
 *	aux function to determine number of commands provided by this shell
 */
int mysh_num_commands(void)
{
	return sizeof(command_str) / sizeof(char *);
}

///**
// * check if proper number of args received
// * return true if proper number
// * print error and return false if wrong number
// */
//bool mysh_num_args(int numExpected, char ** args)
//{
//	int i;
//	for(i=1; i<=numExpected; i++)
//	{
//		if(args[i] == 0)
//		{
//			if(i == numExpected + 1)
//			{
//				return true;
//			}
//			else return false;
//		}
//
//	}
//	return false;
//}

/**
 *	aux function to store history of commands
 */
int mysh_store_history(char *line)
{
	int index;
	bool b_found_empty_space = false;

	//find the first empty spot and place the new line
	for(index = 0; index < HISTORY_SIZE; index++)
	{
		if(g_history[index][0] == NULL)
		{
			g_history[index][0] = malloc(sizeof(line) * sizeof(char*));
			strcpy(g_history[index][0], line);
			b_found_empty_space = true;
			break;
		}

	}

	//TODO this could be memory intensive depending on system specs and size of history
	//if no empty spot was found, shift everything down one index and place the new line at the end
	if(!b_found_empty_space)
	{
		// shift down a value
		for(index = 0; index < HISTORY_SIZE-1; index++)
		{
			g_history[index][0] = NULL;	//clear old space
			g_history[index][0] = realloc(g_history[index][0], sizeof(g_history[index+1][0]) * sizeof(char*));	//fit new size
			strcpy(g_history[index][0], g_history[index+1][0]);	//copy line
		}
		// place new line at end
		g_history[index][0] = realloc(g_history[index][0], sizeof(line) * sizeof(char*));	//fit new size
		strcpy(g_history[index][0], line);	// copy line
	}

	return 1;
}

/**
 * 	usage: 'cd <fullPath>' - will change working directory to <fullPath>
 *	Only accepts full path names
 *
 *	TODO check for valid path
 *	TODO free old pointer
 *	TODO if no args, go to home
 */
int mysh_cd(char **args)
{
	struct stat buffer;

	// if no arg is given, go home.
	if(args[1] == 0)
	{
		g_pwd = "/home";
	}

	// check for invalid path
	//TODO this allows CD into a file
	else if(stat(args[1], &buffer) == -1)
	{
		perror("   mysh: ");
		printf("\n");
	}
	// update path
	else
	{
		g_pwd = realloc(g_pwd, (strlen(args[1]) +1) * sizeof(char*));
		strcpy(g_pwd, args[1]);
	}
	return 1;
}

/**
 * usage: 'quit'
 *	returns 0 to end mysh loop and exit
 */
int mysh_quit(char **args)
{
	return 0;
}

/**
 * usage: 'clear'
 *	// outputs ascii clear to clear screen
 */
int mysh_clear(char **args)
{
	printf("\e[1;1H\e[2J");
	return 1;
}

/**
 * usage: 'pwd'
 *	Simply outputs the string that is the pwd
 */
int mysh_pwd()
{
	printf("   %s\n", g_pwd);
	//puts(g_pwd);
	return 1;
}

/**
 * usage: 'history' - prints out last HISTORY_SIZE commands
 * usage: 'history -c' - clears all history
 * TODO store history in file instead of array
 */
int mysh_history(char **args)
{
	int i;
	char *clear = "-c";
	if(args[1])
	{
		if(args[1] && strcmp(args[1], clear) == 0)
		{
			for(i=0; i<HISTORY_SIZE; i++)
			{
				g_history[i][0] = NULL;
			}
		}

	}
	else
	{
		for(i=0; i<HISTORY_SIZE; i++)
		{
			if(g_history[i][0] == NULL)
				{
					break;
				}
			else
			{
				printf("   %d: %s", i+1, g_history[i][0]);
			}
		}
	}
	return 1;
}

/**
 *  usage: 'run <command> <params>'
 *	strips off run command and passes to launch
 *	Expects full path name
 *	does not return control until pid is killed
 */
int mysh_run(char **args)
{
	int i = 0;

	// dispose args[0] (run)
	while(args[i])
	{
		args[i] = args[i+1];
		++i;
	}

	// if calling from pwd, expect ./ and add pwd to args
//	if(strstr(args[0], "./") != NULL)
//	{
//
//	}

	// if calling from PATH, expect start without ./ or / and pass without altering

	// if calling with full pathname, expect start with / and pass current arg

	return mysh_launch(args);
}

/**
 *  usage: 'background <command> <params>'
 *	executes command and maintains control
 */
int mysh_background(char **args)
{

	int i = 0;
	pid_t pid;

	// strip background command
	while(args[i])
	{
		args[i] = args[i+1];
		++i;
	}

	// clone the current process and grab the new pid (0 for success, -1 for fault)
	pid = fork();

	// if successful fork, child will run this route
	if(pid == 0)
	{
		// execute
		if(execvp(args[0], args) == -1)
		{
			perror("   mysh: ");
			printf("\n");
		}
		exit(EXIT_FAILURE);
	}
	// if forking error, everything will run this path
	else if (pid < 0)
	{
		perror("   mysh: ");
		printf("\n");
	}

	i = 0;
	do
	{
		if(i == g_pid_array_size)
		{
			g_pid_array_size += 10;
			g_pid = realloc(g_pid, sizeof(int*) * g_pid_array_size);
			continue;
		}
		else if (g_pid[i] != 0)
		{
			++i;
			continue;
		}
		else
		{
			g_pid[i] = pid;
			break;
		}
	}while(1);

	printf("pid = %d\n", g_pid[i]);

	return 1;
}

/**
 * 	usage: 'murder <pid>'
 *
 *	able to kill any pid.  Be careful with this.
 */
int mysh_murder(char **args)
{
	// find pid and remove from array
	int i = 0;
	bool found = false;
	int param = atoi(args[1]);
	while(i < g_pid_array_size)
	{
		if(g_pid[i] == param)
		{
			g_pid[i] = 0;
			found = true;
			break;
		}
		++i;
	}

	if(!found)
	{
		printf("   mysh: pid %d doesn't exist\n", atoi(args[1]));
		return 1;
	}
	// check for valid pid
	if(kill(atoi(args[1]), 0) == 0)
	{
		// error
		if(kill(atoi(args[1]), SIGKILL) == -1)
		{
			{
				perror("   mysh: ");
				printf("\n");
			}
		}
		// success
		else
		{
			printf("   mysh: pid %d has been terminated\n", atoi(args[1]));
		}


	}
	return 1;
}

/**
 * 	usage: 'repeat <#> <command> <params>'
 *	repeats <command> with <params> for <#> number of times
 */
int mysh_repeat(char **args)
{
	int i = 0;
	int j = 0;
	pid_t pid;

	// dispose args[0] (repeat)
	i = 0;
	while(args[i])
	{
		args[i] = args[i+1];
		++i;
	}

	// get args[0] (number of times to repeat)
	j = atoi(args[0]);

	// dispose args[0] (num of repeats)
	i = 0;
	while(args[i])
	{
		args[i] = args[i+1];
		++i;
	}

	// open i instances
	while(j > 0)
	{
		--j;
		// clone the current process and grab the new pid (0 for success, -1 for fault)
			pid = fork();

			// if successful fork, child will run this route
			if(pid == 0)
			{
				// execute
				if(execvp(args[0], args) == -1)
				{
					perror("   mysh: ");
					printf("\n");
				}
				exit(EXIT_FAILURE);
			}
			// if forking error, everything will run this path
			else if (pid < 0)
			{
				perror("   mysh: ");
				printf("\n");
			}

			i = 0;
			do
			{
				if(i == g_pid_array_size)
				{
					g_pid_array_size += 10;
					g_pid = realloc(g_pid, sizeof(int*) * g_pid_array_size);
					continue;
				}
				else if (g_pid[i] != 0)
				{
					++i;
					continue;
				}
				else
				{
					g_pid[i] = pid;
					break;
				}
			}while(1);

			printf("pid = %d\n", g_pid[i]);
	}

	return 1;
}

/**
 *  usage: 'murderall'
 *	murders all processes started by this shell that are still assumed to exist
 */
int mysh_murderall(void)
{
	int i = 0;
	int count = 0;

	while(i < g_pid_array_size)
	{
		if(g_pid[i] == 0)
		{
			++i;
			continue;
		}
		// check valid pid and still exists
		if(kill(g_pid[i], 0) == 0)
			{
				// error
				if(kill(g_pid[i], SIGKILL) == -1)
				{
					{
						perror("   mysh: ");
						printf("\n");
					}
				}
				// success
				else
				{
					printf("   mysh: pid %d has been terminated\n", g_pid[i]);
				}
				g_pid[i] = 0;
			}
		++i;
		++count;
	}
	printf("   mysh: Murdered %d processes\n", count);
	return 1;
}
