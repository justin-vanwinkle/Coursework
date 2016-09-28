/*
 * labTester.c
 *
 *  Created on: Jul 21, 2014
 *      Author: lugoh008
 */

#include "Trees.h"
#include "BST.h"

int newIntCompare(Object first, Object second){
	int comp = *((Int)first) - *((Int)second);
	comp = comp < 0 ?
			-1 :
			comp > 0 ?
					1 :
					0;
	return comp;
}

uint countBST_aux(BTNode* node){
	if(!node){
		return 0;
	}
	if(!node->left && !node->right){
		return 1;
	}
	return 1 + countBST_aux(node->left) + countBST_aux(node->right);
}

uint countBST(BSTree* tree){
	if(!tree || !tree->root){
		return 0;
	}
	return countBST_aux(tree->root);
}



int testBalanceTreeMain(int argc, char** argv){
	BSTree* tree = allocBST(sizeof(int), &releasePrimitive, &newIntCompare);
	int i = 32;

	while(i > 0){
		addBST(tree, &i);
		i--;
	}
	//should print 32 and 31
	printf("Original tree has %d nodes\n", countBST(tree));
	printf("The height of the original tree is %d\n", heightBST(tree));
	//should print 32 and 5
	//note that this is the ONLY function (aside from releaseBST) getting called from the PDF
	//this function DEPENDS on others in the PDF
	BSTree* balanced = rebalanceBST(tree);
	printf("New tree has %d nodes\n", countBST(tree));
	printf("The height of the new tree is %d\n", heightBST(balanced));
	releaseBST(tree);
	releaseBST(balanced);
	return 0;
}


/*HERE IT IS*/
int main(int argc, char** argv){
	return testBalanceTreeMain(argc, argv);
}
