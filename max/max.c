#include<stdio.h>
#include<ctype.h>

int main()
{
	int numVal_1,numVal_2,tmp;              //数字1 数字2 返回值 
	printf("please enter two number:");
	scanf("%d %d",&numVal_1,&numVal_2);
	tmp=(numVal_1>numVal_2) ? numVal_1 : (numVal_1<numVal_2) ? numVal_2 : 0;
	printf("max number is:%d\n",tmp);
	return 0;
} 
/*****联合体*****
union numData
{
	int numVal;
	char chVal[5];
}
*/

/*****函数声明******/
/*
int max(int valA,int valB);
int main()
{
	int val_1,val_2,maxNum;
	printf("please emter two number:"<F3>);
	scanf("%d %d",&val_1,&val_2);
    if(isdigit(val_1)==0&&isdigit(val_2)==0)      //检查输入的值是否为十进制数字
	{
		maxNum=max(val_1,val_2);
		printf("%d\n",maxNum);
	}
	else
	{
		printf("please enter number.thanks\n");
		return 0;
	}
	return 0;
}
*/
/*****比较函数*****/
/*
int max(int valA,int valB)
{    
	if(valA==valB)
	{
		return 0;        //值相等时返回0
	}
	else if(valA>valB)
	{
		return valA;     //非零时返回较大的值
	}
	else
	{
		return valB;
	}
}*/

int min(int val_A,int val_b)
{
	if(val_A==val_B)
	{
		return 0;
	}
	else if(val_A>val_B)
	{
		return val_B;
	}
	else
	{
		return val_A;
	}
}
