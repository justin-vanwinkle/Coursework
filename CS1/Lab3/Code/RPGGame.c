//File: RPGGame.c

/*
 * Author1: Justin VanWinkle
 * Author2: Danilo Martinez
 * Author3: Gustavo Gonzalez
 *
 * Course: COP3502, SummerC 2014
 *
 * RPGGame.c: This program uses Queues to input #fighters, #healers,
 * #enemies and their stats inside a file using argv to pass the
 * filename to main. The battles are handled on a turn basis. The party
 * member (ally) that attacks first depends on how fast the character
 * (member) is. Using Queues, we will simulate a battle between fighters,
 * healers, and enemies.
 */

/**
 * Running Instructions
 *
 * Usage : <Execuatable> <InputFilename> <random seed>
 *
 * ./game.x input.data 200
 * ./game.x input.data 100
 *
 * format of the InputFile
 * <id><type><speed><hp><strength><accuracy>
 *
 * Example:
 *
 * 250 F 4 200 70 60
 * 180 H 5 110 20 70
 * 200 F 7 105 50 95
 * 10 E 3 1000 80 40
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>
#include "PriorityQueue.h"
#include <stdlib.h>

typedef enum SpriteType{
FIGHTER,
HEALER,
ENEMY
} SType;

typedef struct _GameSprite{
SType type;
uint id;              //a unique id to identify the character (normally this could be a string holding the name)
PQueue* actions;      //store Boolean (false = do nothing, true = attack)
uint speed;           //speed is a value between [0, 10] …
                      //10 - speed is number of false before a true
uint hp;              //life points of the character (between 50 and 200 for allies, 1000 for
                      //the enemy)
uint strength;        //for healer is how much hp it can restore to target
                      //for fighters and enemy is how much hp to take from target
uint accuracy;        //how probable is to hit the target between (0, 100)
                      //bosses should have high attack but lower accuracy than fighters
                      //healers normally will have high accuracy in healing
} GameSprite;

/**
 * This is the API which runs when a successful action has been encountered.
 * This takes the random opposite side player and according to the type,
 * increases or decreases the hp.
 *
 * This is the API where the statistics life(hp) changes for the players.
 */
bool actionProcess(GameSprite* gs, ArrayList* players, ArrayList* enemies);

/**
 * This is the API which resets the action queues to the initial state which is
 * according to the field speed.
 *
 * 10 - speed is the number of false before the true in the queue of bools.
 */
void resetActionQueue(GameSprite* gs);

/**
 * This API is used to verify if the battle is to be continued or terminated.
 * The collective life points (hp) of any of the side when becomes 0,
 * it is considered to have lost.
 */
int checkOutcome(ArrayList* allies, ArrayList* enemies);

/**
 * This API constructs the 3 Arrays which will be used to drive the programs from the configuration file
 * There are 3 main arrays that are populated here.
 * 1. allies: All the fighters and healers are a part of allies.
 *            This array contains all the GameSprite instances for these types of objects
 *
 * 2. enemies: All the enemy are included in this array
 *
 * 3. gsArray: This Array contains a pointer to all the GaimeSprite character involved in the battle.
 *             The are the pointing to the same location as there positions in allies or enemies array
 *
 */
void runBattle(const char* fileName, ArrayList* gsArray, ArrayList* allies,
                  ArrayList* enemies )
{
  char line [128];
  String ptr,next;
  FILE *file = fopen ( fileName, "r" );
  GameSprite gs;

  if (file != NULL)
  {
    while(fgets(line,sizeof line,file)!= NULL)
    {
      ptr = line;

      next = strtok (ptr, " \n");    //id
      if (next)
      {
        gs.id = atoi (next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");    //Type
      if (next)
      {
        switch(next[0])
        {
          case 'E' :
            gs.type = ENEMY;
            break;
          case 'F' :
            gs.type = FIGHTER;
            break;
          case 'H' :
            gs.type = HEALER;
            break;
          default: printf("\nError Invalid Character Type[%c]\n", next[0]); exit(1);
        }
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");    //Speed
      if (next)
      {
        gs.speed = atoi (next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");    //hp
      if (next)
      {
        gs.hp = atoi (next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");    //Strength
      if (next)
      {
        gs.strength = atoi (next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      next = strtok (NULL, " \n");    //Accuracy
      if (next)
      {
        gs.accuracy = atoi (next);
      }
      else
      {
        printf("\nError\n");
        exit(1);
      }

      // Initialize the actionQueues
      gs.actions = allocPQueue(sizeof(bool), PQMODE_QUEUE);
      setPrinterPQueue(gs.actions, &printBool);
      setReleasePQueue(gs.actions, &releasePrimitive);
      resetActionQueue(&gs);

      // Populate the enemy, allies and playersList
      switch (gs.type)
      {
        case ENEMY:
          appendDArray(enemies,(Object) &gs);
          appendDArray(gsArray, &(enemies->data[enemies->length-1]));
          break;
        case FIGHTER:
          appendDArray(allies,(Object) &gs);
          appendDArray(gsArray, &(allies->data[allies->length-1]));
          break;
        case HEALER:
          appendDArray(allies,(Object) &gs);
          appendDArray(gsArray, &(allies->data[allies->length-1]));
          break;
      }
    }
    fclose(file);
  }
  else
  {
    printf("\nFile Error\n");
    exit(1);
  }
}

/**
 * Utility function to print the GameSprite structure
 */
void printGS(FILE* out, Object p){
  if(!out){
    out = stdout;
  }
  if(!p){
    fprintf(out, "NULL");
    return;
  }
  GameSprite* e = (GameSprite*) p;
  fprintf(out, "%u ", e->id);
  fprintf(out, "%d ", e->type);
  fprintf(out, "%u ", e->speed);
  fprintf(out, "%u ", e->hp);
  fprintf(out, "%u ", e->strength);
  fprintf(out, "%u ", e->accuracy);
  printPQueue(out, e->actions);
}

//release functions for GameSprite
void releaseGS(Object obj){
  if (obj)
  {
    GameSprite* e = (GameSprite*) obj;
    if (e->actions)
      releasePQueue(e->actions);

    free(obj);
  }
}

/**
 * Utitilty function for printing the gsArray
 */
void printGSPtrs(FILE* out, Object p){
  if(!out){
    out = stdout;
  }
  if(!p){
    fprintf(out, "NULL");
    return;
  }

  GameSprite** ptr = (GameSprite**) p;
  GameSprite* e =  ptr[0];
  fprintf(out, "%u-> ", e->id);
  fprintf(out, "%u ", e->hp);
}

/**
 * @Design
 * 1. Parse the configuration file and construct the 3 arrays.
 * 2. Iterate the gsArray which contains all the players, and search for actions queue.
 * 3. if the front of queue is true, perform the action.; reset the action queue
 * 4. Check for termination of battle.
 *
 * Note here we use the random seed received from the command line argument
 */
int main(int argc, char *argv[])
{
  int i = 0;
  static int counter = 0;

  // Check for the proper Input
  if (argc < 3)
  {
    printf ("Invalid command line arguments\n");
    printf ("Usage : <Execuatable> <InputFilename> <random seed>\n");
    return 1;
  }

  srand(atoi(argv[2]));

  ArrayList* gsArray = allocDArray(10, sizeof(Object));
  ArrayList* allies = allocDArray(8, sizeof(GameSprite));
  ArrayList* enemies = allocDArray(2, sizeof(GameSprite));

  setPrinterDArray(allies, &printGS);
  setReleaseDArray(allies, &releaseGS);

  setPrinterDArray(enemies, &printGS);
  setReleaseDArray(enemies, &releaseGS);

  setPrinterDArray(gsArray, &printGSPtrs);

  // Read the Input Files
  runBattle(argv[1], gsArray, allies, enemies);

  GameSprite* gsObj = NULL;

  while ( ! checkOutcome (allies, enemies) )
  {
    // Run an while loop on the gsArray and check for any true action
    for (i=0; i<gsArray->length; i++)
    {
      gsObj = *((GameSprite**) gsArray->data[i]);
      Bool x = (Bool) front (gsObj->actions);
      dequeue(gsObj->actions);
      if (*x)
      {
        if (actionProcess(gsObj, allies, enemies))
        {
        	counter++;
        	if (!checkOutcome(allies, enemies))
        	        break;
        }
      }
      enqueue(gsObj->actions, (Object) x);
    }
  }
  printf("\nBattle won in %d turns!\n",counter);

  // Release the resources
//  releaseDArray(gsArray);
//  releaseDArray(allies);
//  releaseDArray(enemies);
  return 0;
}

bool actionProcess(GameSprite* gs, ArrayList* players, ArrayList* enemies)
{
  resetActionQueue(gs);
  int pos = 0;
  GameSprite* temp = NULL;
  if (gs->type == ENEMY || gs->type == HEALER)
  {
	pos = rand() % players->length;
    temp = players->data[pos];
    (gs->type == ENEMY) ? printf("%u attacks %u, [strength:%u]\n", gs->id, temp->id,gs->strength) :
        printf("%u heals %u, [strength:%u]\n", gs->id, temp->id,gs->strength);
  }
  else if (gs->type == FIGHTER)
  {
	pos = rand() % enemies->length;
    temp = enemies->data[pos];
    printf("%u attacks %u, [strength:%u]\n", gs->id, temp->id,gs->strength);
  }

  if(rand() % 100 < gs->accuracy)
  {
    switch(gs->type)
    {
    case ENEMY:
      temp->hp = temp->hp - gs->strength;
      if ((int) temp->hp < 0)
        temp->hp = 0;
      break;
    case FIGHTER:
      temp->hp = temp->hp - gs->strength;
      if ((int)temp->hp < 0)
        temp->hp = 0;
      break;
    case HEALER:
      temp->hp = temp->hp + gs->strength;
      break;
    }
    printf ("Hit! %d has %d hp and %d has %d hp\n", gs->id, gs->hp, temp->id, temp->hp);
    return true;
  }
  printf ("Miss! %d has %d hp and %d has %d hp\n", gs->id, gs->hp, temp->id, temp->hp);
  return false;
}

void resetActionQueue(GameSprite* gs)
{
  int i = 0;
  for (i=0; i<10-gs->speed; i++)
  {
    Bool x = allocBoolWith(false);
    enqueue(gs->actions, x);
  }
  Bool x = allocBoolWith(true);
  enqueue(gs->actions, x);
}

int checkOutcome(ArrayList* allies, ArrayList* enemies)
{
  static int printResult = 1;
  int allyScore = 0, enemyScore = 0, i = 0;
  for (i=0; i<allies->length; i++)
  {
    allyScore += ((GameSprite*) allies->data[i])->hp;
  }

  for (i=0; i<enemies->length; i++)
  {
	  enemyScore += ((GameSprite*) enemies->data[i])->hp;
  }

  if (allyScore <= 0)
  {
	if (printResult)
	{
	printf("Enemies have won Battle \n");
	printResult = 0;
	}
    return -1;
  }

  if (enemyScore <= 0)
  {
	if (printResult)
	{
	  printf("Allies have won Battle \n");
	  printResult = 0;
	}
    return 1;
  }

  return 0;
}
