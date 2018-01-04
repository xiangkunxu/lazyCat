#include<stdio.h>

int main()
{
	/*****保存类型数量*****/
	int  letters=0,spaces=0,digits=0,others=0;    //字母 空格 数字 符号
	char inPut;
	printf("plese enter same un:");
	while((inPut=getchar())!='\n')
	{
		if((inPut>='a' && inPut<='z') || (inPut>='A' && inPut<='Z'))  //检查是否为字母
		{
			letters++;
		}
		else if(inPut>='0'&&inPut<='9')                               //检查是否位数字
		{
			digits++;
		}
		else if(inPut==' ')                                           //检查空格
		{
			spaces++;
		}
		else                                                           //检查换行符
		{
			others++;
		}
	}
	printf("letters %d\nspaces %d\ndigits %d\nothers %d\n",letters,spaces,digits,others);
		return 0;
}
