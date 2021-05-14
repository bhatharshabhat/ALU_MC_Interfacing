#include<reg51.h>
sbit led1  = P2^0;    //pin connected to toggle Led
sbit led2 = P2^1;
sbit led3 =P2^2;
sbit led4 =P2^3;
sbit S0 =P1^1;  //Pin connected to toggle led
sbit S1 =P1^2;
int main()
{
    led1 = 0; //configuring as output pin
		led2 = 0;
		led3 = 0;
		led4 = 0;
    S0 = 1; //Configuring as input pin
		S1 = 1;
    while(1) //Continuous monitor the status of the switch.
    {
        if(S0 == 0 && S1 == 0)
					{
            led4 =1; //Led On
						led3=0;
						led2=0;
						led1=0;
					}
        else if(S0 == 0 && S1 == 1)
					{
            led3 =1; 
						led4=0;
						led2=0;
						led1=0;
					}
				else if(S0 == 1 && S1 == 0)
					{
						led2 =1;
						led1=0;
						led3=0;
						led4=0;
					}
				else if(S0 == 1 && S1 == 1)
					{
						led1 =1;
						led2=0;
						led3=0;
						led4=0;
					}
    }
    return 0;
}