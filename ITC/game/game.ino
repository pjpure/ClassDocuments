#include "LedControl.h"
LedControl lc=LedControl(11,13,10,0 );
unsigned long delaytime=100 ; 
int x=3,y=7;
int shootbutton = 2;
int restartbutton = 4;
int uplevel = 3;
int joystick_axis_x = A0;
int joystick_axis_y = A1;
int sy=0,sx;
int bx,by=6;
int sbullet=0,sstar=1;
long t=0,tb=0;;
int tsp=1;
int mx=x;
int sgame=1;
int score=0;
int tbul=1;
int level=0,upspeed=0;

void setup() 
{
  Serial.begin(9600);
  randomSeed(analogRead(0));
  pinMode(shootbutton, INPUT);
  digitalWrite(shootbutton, HIGH);
  int devices= lc.getDeviceCount (); 
    lc.shutdown (0 ,false);
    lc.setIntensity (0 ,8);
    lc.clearDisplay (0);
    sx=random(1,7);
}

void loop() {  
    x=7-(analogRead(joystick_axis_x)/150);
    if(x==7)
    {
      x=6;
    }
    
    if(digitalRead(shootbutton)==0&&sbullet!=2&&tbul==1)
    {
      delay(10);
      sbullet=1;
      bx=x;
      by=6;
      tbul=0;
    }
    
    if(by==0)
    {
      sbullet=0;
      by=6;
      tbul=1;    
    }
    
    if(millis()-t>=(1000/tsp)&&sstar==1)
    {
      t=millis();
      rmstar(sx,sy);
      sy++;
    }
    
    if(sgame==1)
    {
      gotoxy(x,mx);
      mx=x;
      drawstar(sx,sy);
    }
    
  
  if(sbullet==1&&sstar==1)
  {
    if(millis()-tb>=50)
    {
      tb=millis();
      by=by-1;    
    }
    bullet(bx,by);
  } 
  
  if((by==sy&&bx==sx&&sbullet==1&&sstar==1)||sx==0)
  {
     tsp=random(1,6+upspeed);
     rmbullet(bx,by);
     rmstar(sx,sy);
     sbullet=0;
     sx=random(1,7);
     sy=0;
     by=6;
     t=millis();
     score++;
     tbul=1;
  }
  
  if(sy==7)
  {
    delay(10);
    gameover();
  }
  
  if(digitalRead(restartbutton)==LOW)
  {
    delay(10);
    restart();
  }
  
  if(score==5+level)
  {
    win();
  }
  
  if(digitalRead(uplevel)==LOW&&score==level&&score!=0)
  {
    delay(10);
    nextlevel();
  }
  
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void gotoxy(int x,int mx)
{
    ship(x);
    if(mx!=x)
    {
      rmship(mx);
    }
    
}
void ship(int x)
{
     lc.setLed (0 ,x,7, true);
     lc.setLed (0 ,x+1,7, true);
     lc.setLed (0 ,x-1,7, true);       
}
void rmship(int x)
{
    lc.setLed (0 ,x,7, false);
    lc.setLed (0 ,x+1,7, false);
    lc.setLed (0 ,x-1,7, false);
}
//////////////////////////////////////////////////////////////////////////////////////////////////

void drawstar(int sx,int sy)
{
     lc.setLed (0 ,sx,sy, true);
}
void rmstar(int sx,int sy)
{
    lc.setLed (0 ,sx,sy, false);
}
void star(int sx,int sy)
{
  drawstar(sx,sy);
  rmstar(sx,sy);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void drawbullet(int bx,int by)
{
  lc.setLed (0 ,bx,by, true);
}

void rmbullet(int bx,int by)
{
    lc.setLed (0 ,bx,by, false);
}
void bullet(int bx,int by)
{
  drawbullet(bx,by);
  rmbullet(bx,by);  
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void gameover()
{
  score=0;
  level=0;
  sbullet=2;
  sgame=0;
  sstar=0;
  tbul=1;
  upspeed=0;
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);         
    }
  }
  delay(100);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, true);         
    }
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void restart()
{
  score=0;
  level=0;
  sbullet=0;
  sgame=1;
  sstar=1;
  upspeed=0;
  delay(100);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);     
    }
  }
  delay(100);
  sx=random(1,7);
  sy=0;
  tsp=1;
  tbul=1;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void win()
{
  sbullet=2;
  sgame=0;
  sstar=0;
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);         
    }
  }
  delay(250);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
       if(row==0||row==7)
       {
        lc.setLed (0 ,row,col, true); 
       }
       if((row==1&&col!=7)||(row==6&&col!=7))
       {
        lc.setLed (0 ,row,col, true); 
       }
       if((col==4&&row==5)||(col==4&&row==4)||(col==4&&row==3)||(col==4&&row==2))
       {
        lc.setLed (0 ,row,col, true); 
       }
       if((col==5&&row==5)||(col==5&&row==2))
       {
        lc.setLed (0 ,row,col, true); 
       }
       if((col==3&&row==4)||(col==3&&row==3))
       {
        lc.setLed (0 ,row,col, true); 
       }
    }
  }
  level=level+5;
  upspeed=upspeed+1;
  tbul=1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
void nextlevel()
{
  score=0;
  sbullet=0;
  sgame=1;
  sstar=1;
  delay(100);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);     
    }
  }
  delay(100);
  sx=random(1,7);
  sy=0;
  tsp=1;
  tbul=1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
