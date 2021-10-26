//define for DEBUG LED
#define dbled1 2
#define dbled2 3
#define dbled3 13
#define dbled4 11
#define dbled5 12

#define sensor1 A1
#define sensor2 A2
#define sensor3 A3
#define sensor4 A4
#define sensor5 A5

#define enA  10
#define in1  9
#define in2  8
#define enB  6
#define in3  5
#define in4  4

int s1=280,s2=335,s3=325,s4=325,s5=275;
long Time=0;
long Time2=1000000;
long Time3=0;
int stage=0;
int stage2=0;
int stage3=0;

int SpeedStage=90;
void setup() {
  // put your setup code here, to run once:
  //SETUP
  Serial.begin(9600);
  pinMode(sensor1,INPUT);
  pinMode(sensor2,INPUT);
  pinMode(sensor3,INPUT);
  pinMode(sensor4,INPUT);
  pinMode(sensor5,INPUT);
  pinMode(dbled1,OUTPUT);
  pinMode(dbled2,OUTPUT);
  pinMode(dbled3,OUTPUT);
  pinMode(dbled4,OUTPUT);
  pinMode(dbled5,OUTPUT);
  pinMode(7,OUTPUT);
  /////////////////////////////////////
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(enB, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
}

void printsensor()
{
  Serial.print(" A1:");
  Serial.print(analogRead(A1));
  Serial.print(" A2:");
  Serial.print(analogRead(A2));
  Serial.print(" A3:");
  Serial.print(analogRead(A3));
  Serial.print(" A4:");
  Serial.print(analogRead(A4));
  Serial.print(" A5:");
  Serial.println(analogRead(A5));
}

int calibrate(int sensor,int sensorto1)
{
  if(analogRead(sensor)>sensorto1)
  {
    return 1;
  }else
  {
    return 0;
  }
}

int state()
{
  int ss1,ss2,ss3,ss4,ss5;
  int state;
  ss1=calibrate(sensor1,s1);
  ss2=calibrate(sensor2,s2);
  ss3=calibrate(sensor3,s3);
  ss4=calibrate(sensor4,s4);
  ss5=calibrate(sensor5,s5);
  state=(ss1*1)+(ss2*2)+(ss3*4)+(ss4*8)+(ss5*16);
  return state;
}
void LED(int s1,int s2,int s3,int s4, int s5)
{
  if(calibrate(sensor1,s1))
  {
    digitalWrite(dbled1,HIGH);
  }else
  {
    digitalWrite(dbled1,LOW);
  }
  /////////////////////////////
  if(calibrate(sensor2,s2))
  {
    digitalWrite(dbled2,HIGH);
  }else
  {
    digitalWrite(dbled2,LOW);
  }
  /////////////////////////////
  if(calibrate(sensor3,s3))
  {
    digitalWrite(dbled3,HIGH);
  }else
  {
    digitalWrite(dbled3,LOW);
  }
  //////////////////////////////
  if(calibrate(sensor4,s4))
  {
    digitalWrite(dbled4,HIGH);
  }else
  {
    digitalWrite(dbled4,LOW);
  }
  ////////////////////////////////////
  if(calibrate(sensor5,s5))
  {
    digitalWrite(dbled5,HIGH);
  }else
  {
    digitalWrite(dbled5,LOW);
  }  
}

void straight(int speedL,int speedR)
{
    analogWrite(enA, speedR);
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    analogWrite(enB, speedL);
    digitalWrite(in3, LOW);
    digitalWrite(in4, HIGH);    
}
void Stop()
{
   digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    digitalWrite(in3, LOW);
    digitalWrite(in4, LOW);   
}
void checkRightZero()
{
  if(state()==3)
   {
      straight(100,30);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==1)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==7)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==11)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==15)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==5)
   {
      straight(100,0);
     Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==13)
   {
      straight(100,30);
      Time3=millis();
      while(state()!=0)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
}
void checkpoint2()
{
    ///////////////////////////stright///////////////////////////////
   if(state()==4||state()==14||state()==31)
   {
      straight(110,100);    
   }
   if(state()==6)
   {
      straight(110,90);
   }
   if(state()==12)
   {
      straight(100,100);
   }
   //////////////////////////////////////////////Right/////////////////////////////////////////
   if(state()==2)
   {
      straight(110,90);
   }
   if(state()==3)
   {
      straight(100,30);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==1)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==7)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==11)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==15)
   {
      straight(100,0);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==5)
   {
      straight(100,0);
     Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==13)
   {
      straight(100,30);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }


   ///////////////////////////////////////////////Left/////////////////////////////////////////
   if(state()==8)
   {
      straight(30,100);
   }
   if(state()==24)
   {
      straight(30,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==16)
   {
      straight(0,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==28)
   {
      straight(0,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==30)
   {
      straight(0,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==26)
   {
      straight(0,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==20)
   {
      straight(0,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
   if(state()==22)
   {
      straight(30,100);
      Time3=millis();
      while(state()!=4)
      {
        if(millis()-Time3>=1000)
        {
          Time3=millis();
          break;
        }
      }
   }
}

void checkpoint1()
{
  ///////////////////////////stright///////////////////////////////
   if(state()==4||state()==14||state()==31)
   {
      straight(120,110);     
   }
   ////////////////left////////////////////////
   if(state()==12)
   {
      straight(90,110);
   }
   if(state()==8)
   {
      straight(40,100);
   }
   if(state()==16)
   {
      straight(30,80);
   }
   if(state()==24)
   {
      straight(30,80);
   }
   //////////////////////////////////////////////////////////////
   if(state()==30)
   {
      straight(30,80);
   }
   if(state()==20)
   {
      straight(30,80);
   }
   if(state()==28)
   {
      straight(30,80);
   }
   if(state()==22)
   {
      straight(30,80);
   }
   /////////////////right/////////////////////////
    if(state()==6)
   {
      straight(120,90);
   }
    if(state()==2)
   {
      straight(110,80);
   }
   if(state()==7)
   {
      straight(110,30);
   }
   if(state()==1)
   {      
      straight(120,20);
   }
   //////////////////////////////////////////////////////////
    if(state()==15)
   {      
      straight(110,20);
   }
   if(state()==5)
   {      
      straight(110,20);
   } 
   //////////////////////////////////////////state=0////////////////////////////////////
   if(state()==0)
   {
      if(millis()-Time>=3000)
      {
        Time=millis();
        stage+=1;
      }           
   }
    ///////////////////////////////////////////////////////////////////////////////////////// 
   if(state()==0&&stage==1)
   {
      straight(0,SpeedStage);
   }
    if(state()==0&&stage==2)
   {
       straight(SpeedStage+5,0);
   }
   if(state()==0&&stage==3)
   {
       straight(0,SpeedStage);
   }
   if(state()==0&&stage==4)
   {
       straight(SpeedStage,0);
   }
    if(state()==0&&stage==5)
   {
       straight(SpeedStage,0);
   }
   if(state()==0&&stage==6)
   {
       straight(SpeedStage,0);
       Time2=millis();
   }
   if(state()==0&&stage==7)
   {
      straight(SpeedStage,0);
   }
}
void loop() 
{
  //printsensor();
  //Serial.println(state());
 ///////////////////////////////////////////// 
   LED(s1,s2,s3,s4,s5); 
    checkpoint2();  
 
}
