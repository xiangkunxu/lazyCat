/*************************************************************************
	> File Name: timer.c
	> Author: sky@pig
	> Mail:   im_tall@icloud.com 
	> Created Time: Wed 03 Jan 2018 12:31:19 PM CST
 ************************************************************************/
q
#include<8051.h>
#define out_led_1 P0_0
#define out_led_2 P0_1
#define out_led_3 P0_2
#define out_led_4 P0_3
#define out_usb_1 P3_3
#define out_led_5 P0_5
#define key_set   P1_0
#define key_ok    P1_4
#define MIN       20
#define MAX       60

unsigned char timer_val=0;
unsigned char key_val=1;
unsigned char h_val=(65535-50000)/256;
unsigned char l_val=(65535-50000)%256;
unsigned char timer_msel=0;
unsigned char timer_sece=0;
unsigned char timer_mine=0;
unsigned char timer_hour=0;

void keyWite(void);
void timerSet(void);

void main()
{
	while(1)
	{
		out_usb_1=1;
		out_led_5=1;
		while(1)
		{
			if(key_set==0)
			{
				keyWite();
				if(key_set==0)
				{
					keyWite();
					timer_val++;
				}
			}
			if(timer_val>4)
			{
				timer_val=0;
			}
			switch(timer_val)
			{
				case 0:
						out_led_1=1;
						out_led_2=1;
						out_led_3=1;
						out_led_4=1;
						break;
				case 1:
						out_led_1=0;
						out_led_2=1;
						out_led_3=1;
						out_led_4=1;
						break;
				case 2:
						out_led_1=1;
						out_led_2=0;
						out_led_3=1;
						out_led_4=1;
						break;
				case 3:
						out_led_1=1;
						out_led_2=1;
						out_led_3=0;							
						out_led_4=1;
						break;
				case 4:
						out_led_1=1;
						out_led_2=1;
						out_led_3=1;
						out_led_4=0;
						break;
			}//switch(timer_val)
			if(key_ok==0)
			{
				keyWite();
				if(key_ok==0 && timer_val!=0)
				{
					keyWite();
					key_val=!key_val;
					out_usb_1=!out_usb_1;
				}
				break;
			}
		}//while(1)
	timerSet();
	while(key_val==0);
	}//while(1)
}//void main()

void timerSet()
{
	TMOD=0x01;
	TH0=h_val;
	TL0=l_val;
	EA=1;
	TR0=1;
	ET0=1;
}

void keyWite()
{
	unsigned int a;
	for(a=0;a<5000;a++)
	{
		;
	}
}

void timer_0() __interrupt 1
{
	timer_msel++;
	if(timer_msel==MIN)
	{
		out_led_5=!out_led_5;
		timer_msel=0;
		timer_sece++;
		if(timer_sece==MAX)
		{
			timer_sece=0;
			timer_mine++;
			if(timer_mine==MAX)
			{
				timer_mine=0;
				timer_hour++;
				if(timer_hour==timer_val)
				{
					out_usb_1=!out_usb_1;
					key_val=!key_val;
				}
			}
		}
	}
	TH0=h_val;
	TL0=l_val;
}
