/************************************************************************
	> File Name: game.c
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: Thu 21 Dec 2017 07:43:00 PM CST
 ************************************************************************/

#include<stdio.h>
#define A 45
#define B 576

char hello();
int main()
{
	char numVal;
	int val,timer;
	timer=0;
	int key=0;
	numVal=hello();
	printf("please enter a number:");
	scanf("%d",&val);
	switch(numVal)
	{
		case 'A':
		case 'a':
			while(key==0)
			{
				timer++;
				if(val>A)
				{
					printf("is big.\n");
					printf("try again:");
				}
				else if(val<A)
				{
					printf("is little.\n");
					printf("try again");
				}
				else
				{
					printf("very good.\n");
					printf("%d\n",timer);
					key+=1;
					break;
				}
				scanf("%d",&val);
			}
			break;
		case 'B':
		case 'b':
			while(key==0)
			{
				timer++;
				if(val>B)
				{
					printf("is big.\n");
					printf("try again:");
				}
				else if(val<B)
				{
					printf("is little.\n");
					printf("try again:");
				}
				else 
				{
					printf("very good!\n");
					printf("%d\n",timer);
					key+=1;
					break;
				}
				break;
				scanf("%d",&val);
			}
			break;
	}
	return 0;
}


char hello()
{	
	char val;
	printf("do you want play 'A'or'B':");
	scanf("%c",&val);
	return val;
}
