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
long t=0,tb=0,timex=0,sdl=0;
int tsp=1;
int mx=x;
int sgame=1;
int score=0;
int tbul=1;
int level=0,upspeed=0;
int stategame=1;
int LR=3;
int item=0;
int swin=0;
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
    sx=random(ux,ux);
}

void loop() {  
    LR=7-(analogRead(joystick_axis_x)/150);
    if(LR>6&&x<6){
      if(millis()-timex>=150){
        timex=millis();
        x++;
      }
    }
    if(LR<2&&x>1){
      if(millis()-timex>=150){
        timex=millis();
        x--;
      }
    }
      
    if(digitalRead(shootbutton)==0&&sbullet!=2&&tbul==1)
    {
      if(millis()-sdl>=100)
      {
        sdl=millis();
        shoot();
      }     
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
      ufo();
    }   
  
    if(sbullet==1&&sstar==1)
    {
      if(millis()-tb>=80)
      {
        tb=millis();
        by=by-1;    
      }
      bullet(bx,by);
    } 
  
    if((by==sy&&bx==sx&&sbullet==1&&sstar==1)||(by-1==sy&&bx==sx&&sbullet==1&&sstar==1))
    {
       crash();
    }
    
    if(sy==7)
    {
      delay(10);
      gameover();
    }
    
    if(digitalRead(restartbutton)==LOW)
    {
      delay(100);
      restart();
    }
    
    if(score==5+level)
    {
      win();
    }
    
    if(digitalRead(uplevel)==LOW&&score==level&&score!=0)
    {
      delay(100);
      nextlevel();
    }
    if(digitalRead(stopbutton)==LOW)
    {
      delay(100);
      stopgame();
    }
    if(digitalRead(startbutton)==LOW&&swin!=1)
    {
      delay(100);
      playgame();
    }
    if(digitalRead(useitembutton)==LOW&&item<upspeed&&swin==0&&sbullet!=2)
    {
      delay(250);
      itemslow();
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
void crash()
{
   tsp=random(1,6+upspeed);
   rmbullet(bx,by);
   rmstar(sx,sy);
   sbullet=0;
   sx=random(ux,ux);
   sy=0;
   by=6;
   t=millis();
   score++;
   tbul=1;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void shoot()
{
    sbullet=1;
    bx=x;
    by=6;
    tbul=0;
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void gameover()
{
  swin=1;
  score=0;
  level=0;
  sbullet=2;
  sgame=0;
  sstar=0;
  tbul=1;
  upspeed=0;
  item=0;
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
  swin=0;
  score=0;
  level=0;
  sbullet=0;
  sgame=1;
  sstar=1;
  upspeed=0;
  item=0;
  ux=random(1,7);
  delay(100);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);     
    }
  }
  delay(100);
  sx=random(ux,ux);
  sy=0;
  tsp=1;
  tbul=1;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void win()
{
  swin=1;
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
  swin=0;
  score=0;
  sbullet=0;
  sgame=1;
  sstar=1;
  ux=random(1,7);
  delay(100);
  for(int row=0;row<8;row++)
  {
    for(int col=0;col<8;col++)
    {
        lc.setLed (0 ,row,col, false);     
    }
  }
  delay(100);
  sx=random(ux,ux);
  sy=0;
  tsp=1;
  tbul=1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
void stopgame()
{
  sbullet=2;
  sgame=0;
  sstar=0;
  tbul=1;
}
void playgame()
{
  sbullet=0;
  sgame=1;
  sstar=1;
  tbul=1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
void itemslow()
{
  tsp=1;
  item=item+1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
