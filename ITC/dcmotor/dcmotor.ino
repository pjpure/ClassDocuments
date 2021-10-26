// motor one
int enA = 10;
int in1 = 9;
int in2 = 8;
int enB = 6;
int in3 = 5;
int in4 = 4;
void setup()
{
// set all the motor control pins to outputs
pinMode(enA, OUTPUT);
pinMode(in1, OUTPUT);
pinMode(in2, OUTPUT);
pinMode(enB, OUTPUT);
pinMode(in3, OUTPUT);
pinMode(in4, OUTPUT);
}
void straight()
{
    analogWrite(enA, 255);
    digitalWrite(in1, LOW);
    digitalWrite(in2, HIGH);
    analogWrite(enB, 130);
    digitalWrite(in4, LOW);
    digitalWrite(in3, HIGH);
    
}
void turnright()
{
    analogWrite(enA, 255);
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    analogWrite(enB, 130);
    digitalWrite(in4, LOW);
    digitalWrite(in3, HIGH);
}
void Stop()
{
   analogWrite(enA, 255);
    digitalWrite(in1, LOW);
    digitalWrite(in2, LOW);
    analogWrite(enB, 130);
    digitalWrite(in4, LOW);
    digitalWrite(in3, LOW);
}
void loop()
{
    straight();
    delay(1000);
    Stop();
    delay(1000);
    turnright();
    delay(270);
    Stop();
    delay(500);
}
