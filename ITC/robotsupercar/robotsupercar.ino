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

int s1 = 260, s2 = 320, s3 = 320, s4 = 320, s5 = 290;
long Time = 0;
int stage = 0;
int SpeedStage = 85;

int speedL = 110, speedR = 100;
int faceright=2;

void setup() {
  Serial.begin(9600);
  pinMode(sensor1, INPUT);
  pinMode(sensor2, INPUT);
  pinMode(sensor3, INPUT);
  pinMode(sensor4, INPUT);
  pinMode(sensor5, INPUT);
  pinMode(dbled1, OUTPUT);
  pinMode(dbled2, OUTPUT);
  pinMode(dbled3, OUTPUT);
  pinMode(dbled4, OUTPUT);
  pinMode(dbled5, OUTPUT);
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

int calibrate(int sensor, int sensorto1)
{
  if (analogRead(sensor) > sensorto1)
  {
    return 1;
  } else
  {
    return 0;
  }
}

int state()
{
  int ss1, ss2, ss3, ss4, ss5;
  int state;
  ss1 = calibrate(sensor1, s1);
  ss2 = calibrate(sensor2, s2);
  ss3 = calibrate(sensor3, s3);
  ss4 = calibrate(sensor4, s4);
  ss5 = calibrate(sensor5, s5);
  state = (ss1 * 1) + (ss2 * 2) + (ss3 * 4) + (ss4 * 8) + (ss5 * 16);
  return state;
}
void LED()
{
  digitalWrite(dbled1, calibrate(sensor1, s1));
  digitalWrite(dbled2, calibrate(sensor2, s2));
  digitalWrite(dbled3, calibrate(sensor3, s3));
  digitalWrite(dbled4, calibrate(sensor4, s4));
  digitalWrite(dbled5, calibrate(sensor5, s5));
}

void straight(int speedL, int speedR)
{
  analogWrite(enA, speedR);
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  analogWrite(enB, speedL);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
}
void autopilotV1()
{
  if(state()==4||state()==14||state()==31)
   {
      straight(120,105);
   }
   ////////////////left////////////////////////
   if(state()==12)
   {
      straight(100,105);
   }
   if(state()==8)
   {
      straight(80,90);
   }
   if(state()==16)
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
      straight(120,100);
   }
    if(state()==2)
   {
      straight(100,50);
   }
   if(state()==7)
   {
      straight(90,30);
   }
   if(state()==1)
   {      
      straight(90,20);
   }
   //////////////////////////////////////////////////////////
    if(state()==15)
   {      
      straight(90,20);
   }
   if(state()==5)
   {      
      straight(90,20);
   } 
}
/////////////////////////////////////////////////////////////////////////////////////////
void autopilotV2()
{
  ///////////////////////////stright///////////////////////////////
    if (state() == 4 || state() == 14 )
    {
      straight(90, 80);
    }
    if (state() == 6)
    {
      straight(90, 70);
    }
    if (state() == 12)
    {
      straight(80, 80);
    }

  //////////////////////////////////////////////Right/////////////////////////////////////////
  if (state() == 2)
  {
    straight(90, 70);
  }
  if (state() == 3)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 1)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 7)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 11)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 15)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 5)
  {
    straight(100, 0);
    while (state() != 4);
  }
  if (state() == 13)
  {
    straight(100, 0);
    while (state() != 4);
  }


  ///////////////////////////////////////////////Left/////////////////////////////////////////
  if (state() == 8)
  {
    faceright = 1;
    straight(70, 80);
  }
  if (state() == 31)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 24)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 16)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 28)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 30)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 26)
  {
    straight(0, 90);
    while (state() != 4);
  }
  if (state() == 20)
  {
    straight(0, 90);
    while (state() != 4 );
  }
  if (state() == 22)
  {
    straight(0, 90);
    while (state() != 4 );
  }
}
//////////////////////////////////////////////////////////////////////////////
void sensorblack()
{
  //////////////////////////////////////////////Right/////////////////////////////////////////
  if (state() == 2)
  {
    faceright = 1;
  }
  if (state() == 3)
  {
    faceright = 1;
  }
  if (state() == 1)
  {
    faceright = 1;
  }
  if (state() == 7)
  {
    faceright = 1;
  }
  if (state() == 11)
  {
    faceright = 1;
  }
  if (state() == 15)
  {
    faceright = 1;
  }
  if (state() == 5)
  {
    faceright = 1;
  }
  if (state() == 13)
  {
    faceright = 1;
  }
  ///////////////////////////////////////////////Left/////////////////////////////////////////
  if (state() == 8)
  {
    faceright = 0;
  }
  if (state() == 24)
  {
    faceright = 0;
  }
  if (state() == 16)
  {
    faceright = 0;
  }
  if (state() == 28)
  {
    faceright = 0;
  }
  if (state() == 30)
  {
    faceright = 0;
  }
  if (state() == 26)
  {
    faceright = 0;
  }
  if (state() == 20)
  {
    faceright = 0;
  }
  if (state() == 22)
  {
    faceright = 0;
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////
void Stop()
{
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}
void checkstage()
{
  if(state()==31&&millis()-Time>=1500)
  {
    stage+=1;
  }
}
void loop() {
  LED();
  sensorblack();
  checkstage();
  if(stage<2)
  {
    autopilotV1();
  }else if(stage<4)
  {
     autopilotV2();
  }else
  {
    Stop();
  } 
  if (state() == 0)
  {
    if (faceright == 1)
    {
      straight(90, 0);
    }
    else
    {
      straight(0,90);
    }
  }

}
