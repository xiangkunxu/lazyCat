#include<stdio.h>


int plus(int a[],int c);
int main()
{
	int allVal,len;            
	int numberVal[10];

	len=sizeof(numberVal)/4;     

	printf("please enter same number:\n");

	for(int a=0;a<len;a++)      
	{
		scanf("%d",&numberVal[a]);
	}

	allVal=plus(numberVal,len);

	printf("%d\n",allVal);
	return 0;
}


int plus(int a[],int c)
{
	int val=0;

	for(int b=0;b<c;b++)
	{
		val+=a[b];
	}

	return val;
}
