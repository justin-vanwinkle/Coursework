//File: BST.c

/*
 * Author1: Justin VanWinkle
 * Author2: Danilo Martinez
 * Author3: Gustavo Gonzalez
 *
 * Course: COP3502, SummerC 2014
 *
 * ProcessScheduling.c: This program is intended to re-balance a binary search tree.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "Trees.h"
#include "DArray.h"

// prototypes
bool isBalanced(BSTree* tree);
ArrayList* BST2Array(BSTree* tree);
BSTree* allocBSTBalanced(ArrayList* sortedElements, BSTree* tree);
BSTree* rebalanceBST(BSTree* tree);
void releaseBSTNodes(BSTree* tree);
uint branchHeight(BTNode* node);
void releaser(Object data);
int comparator(Object left, Object right);

// This function checks the height of the left and right side of the tree to
// see if the tree is balanced.
bool isBalanced(BSTree* tree)
{
	// @Design
	// 1. Count height of left and right sides and compute difference
	// 2. return true if the tree is balanced (difference == -1 || 0 || 1)
	// else, return false

	// the balance is the left branch minus the right branch
	int left = branchHeight(tree->root->left);
	int right = branchHeight(tree->root->right);
	int balance = left - right;

	switch (balance)
	{
		case 0:
		case 1:
		case -1:
			return true;

		default:
			return false;
	}

	return false;
}

//This function copies the BST into an array in order from smallest to largest
ArrayList* BST2Array(BSTree* tree)
{

	// get min value
	// append
	// removeMinBST
	// repeat
	// free tree
	// return ArrayList*


	ArrayList* newArray =  allocDArray(10, tree->elementSize);
	BTNode* parent = NULL;
	BTNode* node = tree->root;
	int i = 0;

	while (tree->root)
	{
		// navigate as far left as possible and the lowest value will lie there
		while (node->left)
		{
			parent = node;
			node = node->left;
		}

		// append value to array
		appendDArray(newArray, node->data);

		// remove node from tree
		removeMinBST(tree);
	}

	return newArray;

}

// This function builds a tree from an array
BSTree* allocBSTBalanced(ArrayList* sortedElements, BSTree* tree)
{
	// MUST USE RECURSION

	int i = 0;

	ArrayList* left = allocDArray(sortedElements->length / 2, sortedElements->elementSize);
	ArrayList* right = allocDArray(sortedElements->length / 2, sortedElements->elementSize);

	int midPoint = sortedElements->length / 2;

	// put the midpoint in the tree
	addBST(tree, sortedElements->data[midPoint]);

	//populate left array
	for(i = 0; i < midPoint; i++)
		appendDArray(left, sortedElements->data[i]);


	//populate right array
	for(i = midPoint + 1; i < sortedElements->length; i++)
		appendDArray(right, sortedElements->data[i]);


	// recurse if either array still has data
	if (left->length || right->length)
	{
		allocBSTBalanced(left, tree);
		allocBSTBalanced(right, tree);
	}

	releaseDArray(left);
	releaseDArray(right);

	return tree;

}

// This function handles the big picture of balancing a tree by calling all of the functions
// that are auxiliary to re-balancing
BSTree* rebalanceBST(BSTree* tree)
{
	// if the tree is not balanced:
	if(!isBalanced(tree))
	{
		BSTree* newTree = allocBST(tree->elementSize, &tree->releaser, &tree->comparator);
		ArrayList* array = BST2Array(tree);
		newTree = allocBSTBalanced(array, newTree);
		releaseBSTNodes(tree);
		releaseBST(tree);
		return newTree;
	}

	// if the tree is balanced, return it!
	else
		return tree;
}

// This function releases all of the individual nodes in a tree
void releaseBSTNodes(BSTree* tree)
{
	// MUST USE RECURSION

	// don't rewrite code - reuse!
	removeMinBST(tree);

	// recursive call until the root is null
	if (tree->root)
	{
		releaseBSTNodes(tree);
	}

	return;
}

// This function checks the height of a given branch
uint branchHeight(BTNode* node)
{
	if(!node->left && !node->right)
	{
		return 0;
	}


	uint lheight = node->left ? branchHeight(node->left) : 0;
	uint rheight = node->right ? branchHeight(node->right) : 0;

	uint height = lheight >= rheight ? lheight : rheight;

	return 1 + height;
}

void releaser(Object data)
{
	data = NULL;
}

int comparator(Object left, Object right)
{
	if (left < right)
		return -1;
	if (left == right)
		return 0;
	if (left > right)
		return 1;
}
