#include <stdio.h>
#include <stdlib.h>

int main()
{
	float radius[20];
	float height[20];
	float volume;
	float sA;
	float pi = 3.1415926;
	FILE* pFile;
	int i;
	pFile = fopen("cylinder_input.data", "r");
	for (i=0;i<5;i++)
	{
		fscanf(pFile, "%f", radius[i]);
		fscanf(pFile, "%f", height[i]);
	}
	pFile = fopen("cylinder_output.data", "w+");
	for (i=0; i<5; i++)
	{
		volume = pi * radius[i] * radius[i] * height[i];
		sA = 2 * pi * radius[i] * height[i] + 2 * pi * radius[i] * radius[i];

		printf("volume = %f \t", volume);
		printf("surface area = %f \n", sA);

		fprintf(pFile, "%f \t %f \n", volume, sA);
	}
	fclose(pFile);
	return 0;
}
