#include<math.h>
#define pinx A1
#define piny A2
#define pinz A3
#define vcc A0
#define gnd A4

void setup()
{
Serial.begin(9600);
analogWrite(gnd,0);
analogWrite(vcc,1024);
}

void loop()
{
int ax,ay,az;
int x[51];
int y[51];
int z[51];
int X=0,Y=0,Z=0;
int xv,yv,zv;
int degreeX,degreeY,degreeZ,degree;
int x1;

  
for(int i=0;i<50;i++)
{
  x[i] = analogRead(pinx);
  y[i]= analogRead(piny);
  z[i]= analogRead(pinz);
  X=X+x[i];
  Y=Y+y[i];
  Z=Z+z[i];
}
xv=X/50;
yv=Y/50;
zv=Z/50;

if((xv>=265&&xv<=398)&&(yv>=261&&yv<=393))
{
  degreeX=abs((xv-332)*1.36363636364);
  degreeY=abs((yv-327)*1.36363636364);
  degree=(degreeX+degreeY)/2;
}


//Serial.print(" ");
//Serial.print(xv);
//Serial.print(" ");
//Serial.print(yv);
//Serial.print(" ");
//Serial.println(zv);

Serial.print(" ");
Serial.println(degree);

delay(250);
}
