//File: Palindrome.c

/*
 * Author1: Justin VanWinkle
 * Author2: Danilo Martinez
 * Author3: Gustavo Gonzalez
 *
 * Course: COP3502, SummerC 2014
 *
 * Palindrome.c: This file checks for palindromes, using one Queue
 * and one Stack only, in addition to the string parameter.
 * Each data structure will hold characters, discarding the
 * spaces and special characters.
 */

#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include "PriorityQueue.h"

/**
This function returns '' when the character is not a letter, and the uppercase letter when finding a letter
@param c the character to check
@return the uppercase version of param c or '' if an illegal character is found
*/
char getPalindromeChar(char c){
  //c is a copy of the passed parameter
  if(c >= 'a' && c <= 'z'){
    c = c - 32;
  }
  if(c >= 'A' && c <= 'Z'){
    return c;
  }
  return '\0';
}

/**
 * Utility Function which confirms if the given string is a palindrome or not.
 * The API uses stack and queue to verify if the string was a palindrome or not.
 *
 * 1. Read characters of string into the stack(FIFO) and into the queue(LIFO)
 * 2. Pop from stack and dequeue from que to match the element.
 * 3. If all the elements are equal; the string is a palindrome.
 */
bool isPalindrome(char* str, uint length)
{
  char ch;
  int count=0,i=0;
  char *ique, *istack;
  bool result = true;
  PQueue* que = allocPQueue(sizeof(int), PQMODE_QUEUE);
  PQueue* stack = allocPQueue(sizeof(int), PQMODE_STACK);

  setPrinterPQueue(stack, &printChar);
  setReleasePQueue(stack, &releasePrimitive);

  setPrinterPQueue(que, &printChar);
  setReleasePQueue(que, &releasePrimitive);

  // loop through str, add to que and push to stack until the end
  while((ch = str[i++]) != '\0')
  {
    ch = getPalindromeChar(ch);
    if (ch=='\0')
      continue;

    count++;
    push(stack,allocCharWith(ch));
    add(que,allocCharWith(ch));
  }

  // compare stack to queue to determine if palindrome
  while(--count)
  {
    istack = (char*) top(stack); pop(stack);
    ique = (char*) front(que); dequeue(que);

    if (!istack || !ique)
    {
      printf("\nError\n");
      return false;
    }
    if (istack[0] != ique[0])
    {
      result = false;
      break;
    }

    free(istack);
    free(ique);
  }
  releasePQueue(stack);
  releasePQueue(que);

  return result;
}


/**
 * This is entry point of a main which will take input in a commandline.
 *
 * Check the input string if its a palindrome or not via a function
 * isPalindrome()
 */
int main (int argc, char *argv[])
{
  // Check for the proper Input
  if (argc < 2)
  {
    printf ("Invalid command line arguments");
    printf ("Usage : <Execuatable> <palindrome string>");
    return 0;
  }

  // palindrome output based on isPalindrome return value.
  if(isPalindrome(argv[1], strlen(argv[1])))
  {
    printf("%s is a palindrome\n", argv[1]);
  }
  else
  {
    printf("%s is not a palindrome\n", argv[1]);
  }
  return 0;
}
