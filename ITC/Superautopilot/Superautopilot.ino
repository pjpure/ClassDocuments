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
void autoezpilot()
{
  ///////////////////////////stright///////////////////////////////
  if (state() == 4 || state() == 14 || state() == 31)
  {
    straight(speedL, speedR);
  }
  if (state() == 12)
  {
    straight(speedL-5, speedR + 5);
  }
  if (state() == 6)
  {
    straight(speedL + 5, speedR-5);
  }
  //////////////////////////////////////////////Right/////////////////////////////////////////
  if (state() == 2)
  {
    faceright = 1;
    straight(speedL + 5, speedR - 30);
    while (state() != 4);
  }
  if (state() == 3)
  {
    faceright = 1;
    straight(speedL + 5, speedR - 40);
    while (state() != 4);
  }
  if (state() == 1)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  if (state() == 7)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  if (state() == 11)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  if (state() == 15)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  if (state() == 5)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  if (state() == 13)
  {
    faceright = 1;
    straight(speedL + 10, speedR - 50);
    while (state() != 4);
  }
  ///////////////////////////////////////////////Left/////////////////////////////////////////
  if (state() == 8)
  {
    faceright = 0;
    straight(speedL - 30, speedR + 5);
    while (state() != 4);
  }
  if (state() == 24)
  {
    faceright = 0;
    straight(speedL - 40, speedR + 5);
    while (state() != 4);
  }
  if (state() == 16)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
  if (state() == 28)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
  if (state() == 30)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
  if (state() == 26)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
  if (state() == 20)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
  if (state() == 22)
  {
    faceright = 0;
    straight(speedL - 50, speedR + 10);
    while (state() != 4);
  }
}

void loop() {
  autoezpilot();
  LED();
  if (state() == 0)
  {
    if (faceright == 1)
    {
      straight(speedL + 20, 0);
    }
    else
    {
      straight(0, speedL + 20);
    }
  }

}
