//define for DEBUG LED
#define dbled1 8
#define dbled2 9
#define dbled3 10
#define dbled4 11
#define dbled5 12

#define sensor1 A4
#define sensor2 A3
#define sensor3 A2
#define sensor4 A1
#define sensor5 A0

#define enA  6
#define in1  7
#define in2  5
#define enB  3
#define in3  4
#define in4  2

int s1 = 750, s2 = 750, s3 = 850, s4 = 750, s5 = 750;
long Time = 0;
long Time2 = 0;
long Time3 = 0;
int stage = 0;
int stage2 = 0;
int stage3 = 0;
int faceright = 2;
int lowspeed = 0;
int SpeedStage = 90;
int timestop=0;
void setup() {
  // put your setup code here, to run once:
  //SETUP
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
  pinMode(7, OUTPUT);
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
  Serial.print(analogRead(sensor1));
  Serial.print(" A2:");
  Serial.print(analogRead(sensor2));
  Serial.print(" A3:");
  Serial.print(analogRead(sensor3));
  Serial.print(" A4:");
  Serial.print(analogRead(sensor4));
  Serial.print(" A5:");
  Serial.println(analogRead(sensor5));
}

int calibrate(int sensor, int sensorto1)
{
  if (analogRead(sensor) < sensorto1)
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
void spinright(int speedL, int speedR)
{
  analogWrite(enA, speedR);
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enB, speedL);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
}
void spinleft(int speedL, int speedR)
{
  analogWrite(enA, speedR);
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enB, speedL);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
}
void Stop()
{
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}

void autopirot()
{
  ///////////////////////////stright///////////////////////////////
  if (state() == 4 || state() == 14 || state() == 31)
  {
    straight(110, 100);
  }
  if (state() == 6)
  {
    straight(110, 90);
  }
  if (state() == 12)
  {
    straight(100, 100);
  }
  //////////////////////////////////////////////Right/////////////////////////////////////////
  if (state() == 2)
  {
    faceright = 1;
    straight(110, 90);
  }
  if (state() == 3)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 1)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 7)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 11)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 15)
  {

    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 5)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 13)
  {
    straight(100, 0);
    faceright = 1;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }


  ///////////////////////////////////////////////Left/////////////////////////////////////////
  if (state() == 8)
  {
    faceright = 1;
    straight(30, 100);
  }
  if (state() == 24)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 16)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 28)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 30)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 26)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 20)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
  if (state() == 22)
  {
    straight(0, 100);
    faceright = 0;
    Time3 = millis();
    while (state() != 4)
    {
      if (millis() - Time3 >= 1000)
      {
        Time3 = millis();
        break;
      }
    }
  }
}
void autopirotV2()
{
  ///////////////////////////stright///////////////////////////////
    if (state() == 4 || state() == 14 || state() == 31)
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
    faceright = 1;
    straight(90, 70);
  }
  if (state() == 3)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 1)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 7)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 11)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 15)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 5)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }
  if (state() == 13)
  {
    straight(100, 0);
    faceright = 1;
    while (state() != 4);
  }


  ///////////////////////////////////////////////Left/////////////////////////////////////////
  if (state() == 8)
  {
    faceright = 1;
    straight(70, 80);
  }
  if (state() == 24)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4);
  }
  if (state() == 16)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4);
  }
  if (state() == 28)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4);
  }
  if (state() == 30)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4);
  }
  if (state() == 26)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4);
  }
  if (state() == 20)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4 );
  }
  if (state() == 22)
  {
    straight(0, 90);
    faceright = 0;
    while (state() != 4 );
  }
}
void loop()
{
  printsensor();
  //Serial.println(state());
  /////////////////////////////////////////////
  LED();
   autopirot();
}
