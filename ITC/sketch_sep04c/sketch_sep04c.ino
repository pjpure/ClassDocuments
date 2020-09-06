#define button1 12 
#define button2 11
#define button3 10
#define pressed LOW
#define led1 4
#define led2 3
#define led3 2
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

void loop() {
  if(digitalRead(button1)!=pressed)
  {
    delay(250);
    digitalWrite(led1,1);
      if(digitalRead(button1)!=pressed)
      {
        delay(250);
        digitalWrite(led1,0);
      }
  }

}
