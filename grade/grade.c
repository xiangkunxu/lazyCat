#include<stdio.h>


/*****定义选项开关*****/
#define GRADE_A 0
#define GRADE_B 1
#define GRADE_C 2

/*
int main()
{
	int  pointVal;
	char gradeVal[3]={'A','B','C'};         //定义选项数组
	printf("plesae enter you point:");
	scanf("%d",&pointVal);
	if(pointVal<=100)                       //检查输入分数书否符合标准
	{
		if(pointVal>=90)
		{
			printf("hi you grade is:%c\n",gradeVal[GRADE_A]);
		}
		else if(pointVal<90&&pointVal>=60)
		{
			printf("hi you grade is:%c\n",gradeVal[GRADE_B]);
		}
		else if(pointVal<60)
		{
			printf("hi you grade is:%c\n",gradeVal[GRADE_C]);
		}
	}
	else
	{
		printf("please enter correct.\n");
	}
	return 0;
}
*/

int main()
{
	int  score;
	char grade;
	printf("please enter your score:");
	scanf("%d",&score);
	grade=(score>=90)? 'A' : ((score>=60)? 'B' : 'C');
	printf("hi your grade is:%c\n",grade);
	return 0;
}	
