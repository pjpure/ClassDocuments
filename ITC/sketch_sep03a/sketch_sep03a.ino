#define button1 12 
#define button2 11
#define button3 10
#define pressed LOW
#define led1 4
#define led2 3
#define led3 2
int led3status=0;
int dl=3000;
void setup()
{ 
  Serial.begin(9600);
  pinMode(button1,INPUT);
  pinMode(button2,INPUT_PULLUP);
  pinMode(button3,INPUT_PULLUP);
  pinMode(led1,OUTPUT);
  pinMode(led2,OUTPUT); 
  pinMode(led3,OUTPUT); 
}
void loop()
{
  //led1
  if(digitalRead(button1)!=pressed)
  {
      digitalWrite(led1,HIGH);
      delay(dl); 
      digitalWrite(led1,LOW);
  }
  
      //led2
    if(digitalRead(button2)==pressed)
    {
        digitalWrite(led2,HIGH);
        delay(500);
        digitalWrite(led2,LOW);
        delay(500);
        digitalWrite(led2,HIGH);
        delay(500);
        digitalWrite(led2,LOW);
        delay(500);     
    }
  
    //led3
    if(digitalRead(button3)==pressed)
    {
        digitalWrite(led3,HIGH); 
        delay(dl);
        digitalWrite(led3,LOW);   
    } 
}
