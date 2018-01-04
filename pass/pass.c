/*************************************************************************
	> File Name: pass.c
	> Author: sky@pig
	> Mail:   im_tall@icloud.com 
	> Created Time: Thu 04 Jan 2018 10:39:17 AM CST
 ************************************************************************/

#include<8051.h>
#define key_set_1 P1_0
#define key_set_2 P1_1
#define key_set_3 P1_2
#define key_set_4 P1_3
#define key_ok    P1_4
#define out_led_1 P1_5

unsigned char loop_val=1;
unsigned char pass[4];
unsigned char passwd[]={1,2,3,4}
unsigned char counter=0;

void keyWite(void);

void main()
{
	while(1)
	{
		while(1)
		{
			if(key_set_1==0)
			{
				keyWite()
				if(key_set_1==0)
				{
					keyWite();
					pass[counter]=1;
					counter+=1;
				}
			}
			if(key_set_2==0)
			{
				keyWite();
				if(key_set_2==0)
				{
					keyWite();
					pass[counter]=2;
					counter+=1;
				}
			}
			if(key_set_3==0)
			{
				keyWite();
				if(key_set_3==0)
				{
					keyWite();
					pass[counter]=3;
					counter+=1;
				}
			}
			if(key_set_4==0)
			{
				keyWtie();
				if(key_set_4==0)
				{
					keyWite();
					pass[counter]=4;
					counter+=1;
				}
			}
			if(key_ok==0)
			{
				keyWite();
				if(key_ok==0)
				{
					keyWite();
					break;
				}
			}
		}//while(1)
		int a;
		fqor(a=0;a<4;a++)
		{
			if(pass[a]=passwd[a])
			{
			}
		}
	}//while(1)
}//void main()

void keyWite()
{
	int a;
	for(a=0;a<5000;a++)
	{
		;
	}
}
