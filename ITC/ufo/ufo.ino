#include "LedControl.h"
LedControl lc=LedControl(11,13,10,0 ); 
int x=3,y=7;
int shootbutton = 2;
int restartbutton = 4;
int uplevel = 3;
int useitembutton = 5;
int stopbutton =7;
int startbutton =6;
int joystick_axis_x = A0;
int joystick_axis_y = A1;
int sy=0,sx;
int bx,by=6;
int sbullet=0,sstar=1;
long t=0,tb=0,timex=0;
int tsp=1;
int mx=x;
int sgame=1;
int score=0;
int tbul=1;
int level=0,upspeed=0;
int stategame=1;
int LR=3;
int item=0;

long timeufo=0;
int ux=random(1,7);
int sux=1;
int mux=ux;

void setup() 
{
  Serial.begin(9600);
  randomSeed(analogRead(10));
  pinMode(shootbutton, INPUT);
  digitalWrite(shootbutton, HIGH);
  int devices= lc.getDeviceCount (); 
    lc.shutdown (0 ,false);
    lc.setIntensity (0 ,8);
    lc.clearDisplay (0);
    sx=random(1,7);
    
}

void loop() {  
   
   ufo();
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void drawufo(int ux)
{
     lc.setLed (0 ,ux,0, true);
     lc.setLed (0 ,ux+1,0, true);
     lc.setLed (0 ,ux-1,0, true);       
}
void rmufo(int mux)
{
    lc.setLed (0 ,mux,0, false);
    lc.setLed (0 ,mux+1,0, false);
    lc.setLed (0 ,mux-1,0, false);
}
void moveufo(int ux,int mux )
{
  drawufo(ux);
    if(mux!=ux)
    {
      rmufo(mux);
    }
}
void ufo()
{
  moveufo(ux,mux);
   mux=ux;
   if(ux==6)
   {
    sux=1; 
   }
   if(ux==1)
   {
    sux=2; 
   }
   if(sux==1)
   {
    if(millis()-timeufo>=500)
    {
      timeufo=millis();
      ux--;
    } 
   }
   if(sux==2)
   {
    if(millis()-timeufo>=500)
    {
      timeufo=millis();
      ux++;;
    } 
   }
}
