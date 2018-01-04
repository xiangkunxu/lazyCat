#include<stdio.h>

int main()
{
	int  timer,summation,tmp,numVal;    //计数器 总和 临时存储 临时存储
	summation=0;                         
	printf(" Please enter:");
	scanf("%d %d",&timer,&numVal);
	tmp=numVal;
	while(timer>0)
	{
		summation+=tmp;
		numVal=numVal*10;
		tmp+=numVal;
		timer--;
	}
	printf("%d\n",summation);
	return 0;
}
