#define button1 12 
#define button3 10
#define button2 11
#define pressed LOW
#define led1 4
#define led2 3
#define led3 2
int v1,v2,v3;
int i1=0,i2=0,i3=0;
long t1=-3000,t2=-2000,t3=-3000;
int ledstatatus1,ledstatatus2,ledstatatus3;
void setup()
{
  Serial.begin(9600);
  pinMode(button1,INPUT);
  pinMode(button2,INPUT);
  pinMode(button3,INPUT_PULLUP);
  pinMode(led1,OUTPUT);
  pinMode(led2,OUTPUT); 
  pinMode(led3,OUTPUT); 
}

void loop() 
{
  v1=red(digitalRead(button1)); 
  v2=yellow(digitalRead(button2)); 
  v3=green(digitalRead(button3));
  Light_ON_OFF(v1,v2,v3);
}

int red(int i1)
{
  ledstatatus1=(digitalRead(led1));
 if(i1==HIGH)
 {
   delay(100); 
   if(ledstatatus1==LOW)
   { 
    t1=millis() ; 
   }
   else
   {
    t1=-3000;
   }
 }else{
    if(millis()-t1<3000)
    {
      return 1;
    }
    else
    {
      return 0;
   }
 }
 
}

int yellow(int i2)
{
  ledstatatus2=(digitalRead(led2));
  if(i2==pressed)
  {
    delay(100);
    if(ledstatatus2==LOW&&ledstatatus1==LOW&&ledstatatus3==LOW)
    {
      t2=millis();
    }
  }
  if(millis()-t2<2000)
  {
    if((millis()-t2>=0&&millis()-t2<=500)||(millis()-t2>=1000&&millis()-t2<=1500))
    {
      return 1;
    }else
    {
      return 0;
    }
  }
  else
  {
    return 0;
  }
}

int green(int i3)
{
  ledstatatus3=(digitalRead(led3));
  if(i3==pressed)
  {
    delay(100);
    if(ledstatatus3==LOW&&ledstatatus1==LOW)
    {
      t3=millis();
    }else
    {
      t3=-3000;
    }
  }
  else
  {
    if(millis()-t3<3000)
    {
      return 1;
    }else
    {
      return 0;
    }
  }
}

void Light_ON_OFF(int r,int y,int g)
{
  if(r==1)
  {
     digitalWrite(led1,HIGH);
  }else
  {
     digitalWrite(led1,LOW);
  }

  if(y==1)
  {
     digitalWrite(led2,HIGH);
  }else
  {
     digitalWrite(led2,LOW);
  }

  if(g==1)
  {
    digitalWrite(led3,HIGH);
  }else
  {
    digitalWrite(led3,LOW);
  }
}
