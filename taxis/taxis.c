/*************************************************************************
	> File Name: taxis.c
	> Author: atom
	> Mail: im_tall@icloud.com 
	> Created Time: Thu 21 Dec 2017 05:13:09 PM CST
 ************************************************************************/

#include<stdio.h>


int main()
{
	int timer=0;
	for(int valA=1;valA<=4;valA++)
	{
		for(int valB=1;valB<=4;valB++)
		{
			for(int valC=1;valC<=4;valC++)
			{
				if(valA!=valB && valA!=valC && valC!=valB)
				{
					printf("%d %d %d \n",valA,valB,valC);
					timer++;
				}
			}
		}
	}
	printf("all:%d\n",timer);
	return 0;
}
