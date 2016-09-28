//File: ProcessScheduling.c

/*
 * Author1: Justin VanWinkle
 * Author2: Danilo Martinez
 * Author3: Gustavo Gonzalez
 *
 * Course: COP3502, SummerC 2014
 *
 * ProcessScheduling.c: This program uses inputs a process list from a
 * file, and passes filename to main using argv.  This main contains a
 * priority Queue with different operation modes based on the command
 * line parameters. Mode of operation is: 1) the number of instructions
 * remaining (take the maximum), 2) the amount of run time
 * (take the minimum), and 3) random. Each time an element is taken
 * from the PriorityQueue, the attributes will be modified so that its
 * priority changes (decrement instructions by 1, increment runtime by 1).
 * Once instructions reach 0 the process will have finished execution and
 * it will not be reinserted into the PriorityQueue.
 * Output of all process scheduling schemes will be provided.
 * At the end we will provide the average context switch among all
 * processes, defined as the
 * sum(required_switches * instructions) / total_instructions.
 */
#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include "PriorityQueue.h"

typedef struct _Process{
uint pid;                     //a unique id for each process
uint remainingInstructions;   //number of remaining instructions
uint runTime;                 //amount nof time which the process has run
} Process;

/**
 * Given function to print the stats of the process
 */
void processPrinter(FILE* out, Object p)
{
  if(!out){
    out = stdout;
  }
  if(!p){
    fprintf(out, "NULL");
    return;
  }

  Process* pointer = (Process*)p;
  Process proc = *pointer;
  fprintf(out, "(PID=%u, Instr = %u, RunTime = %u)", proc.pid, proc.remainingInstructions, proc.runTime);
}

void extractRunTimePriority(Object obj, Object copy)
{
  if(!copy){
    copy = malloc(sizeof(uint));
  }

  if (obj)
  {
    Process* pointer = (Process*)obj;
    memcpy(copy, &(pointer->runTime), sizeof(uint));
  }
}

void extractPendingInstPriority(Object obj, Object copy)
{
  if(!copy){
    copy = malloc(sizeof(uint));
  }

  if (obj)
  {
    Process* pointer = (Process*)obj;
    memcpy(copy, &(pointer->remainingInstructions), sizeof(uint));
  }
}

void extractRandomPriority(Object obj, Object copy)
{
  if(!copy){
    copy = malloc(sizeof(uint));
  }

  uint temp = rand() % 16;
  memcpy(copy, &temp, sizeof(uint));
}

void readInputFile(const char* fileName, PQueue* pq)
{
  char line [64];
  String ptr,next;
  FILE *file = fopen ( fileName, "r" );
  int i = 0, nLine=0, count=0;
  Process proc;

  if (file != NULL)
  {
    // First line will be number of processes
    fgets(line,sizeof(line), file);
    nLine = atoi(line);

    while(fgets(line,sizeof(line),file)!= NULL)
    {
      count++;
      ptr = line;

      next = strtok (ptr, " \n");
      if (next)
      {
        proc.pid = atoi(next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");
      if (next)
      {
        proc.remainingInstructions = atoi(next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }
      proc.runTime = 0 ;
      add(pq, &proc);
    }
    fclose(file);
  }
  else
  {
    printf("\nFile Error\n");
    exit(1);
  }
}

bool execute (Object p)
{
  if (p)
  {
    Process* pointer = (Process*)p;

    if (pointer->remainingInstructions > 0)
    {
    pointer->remainingInstructions--;
    pointer->runTime++;

    return (pointer->remainingInstructions <= 0) ?  true: false;
    }
  }
  return true;
}

/**
 * @Design approach
 * 1. Read input file to set up pQ based on mode.
 * 2. Iterate the pQ getting the element and run Execute to alter priority.
 * 3. Check if all the processes are catered to.
 * 4. Terminate with publishing the average context switch required for
 * scheduling.
 */

int main (int argc, char *argv[])
{
  int i=0, mode=0, count=0;
  Process* next = NULL;

  // Check for the proper Input
  if (argc < 3)
  {
    printf ("Invalid command line arguments\n");
    printf ("Usage : <Execuatable> <InputFilename> <Mode> <random seed>\n Modes"
            "\t 1. The number of instructions remaining, "
            "\n\t2. the amount of run time , and"
            "\n\t3. random. ");
    return 1;
  }

  // Initialize the Priority Queue
  PQueue* pq = allocPQueue(sizeof(Process), PQMODE_PQUEUE);
  setPrinterPQueue(pq, &processPrinter);
  setReleasePQueue(pq, &releasePrimitive);

  // Read mode of Scheduler. Set the priority Queue according to the Mode
  mode = atoi(argv[2]);

  switch(mode)
  {
  case 1:
    setComparatorPQueue(pq, &extractPendingInstPriority);
    break;
  case 2:
    setComparatorPQueue(pq, &extractRunTimePriority);
    break;
  case 3:
    setComparatorPQueue(pq, &extractRandomPriority);
    srand(atoi(argv[3]));
    break;
  }

  // Get the initial state of the processes in a priority Queue
  readInputFile(argv[1], pq);

  while(!isEmptyPQueue(pq))
  {
    count++;

    printPQueue(stdout, pq);
    printf("\n");

    Object obj;
    if (mode==1)
    {
    	obj = peekMax(pq);
    	removeMax(pq);
    }
    else
    {
    	obj = peekMin(pq);
    	removeMin(pq);
    }

    if (execute(obj))
    {
      processPrinter(stdout, obj);
      printf(" completed in %d context switches\n", count);
      free(obj);
    }
    else
    {
      add(pq,obj);
    }
  }

  printf("Done Scheduling process!\n");
  printf("Average Wait Time: %d context switches\n", count);
  return 0;
}

