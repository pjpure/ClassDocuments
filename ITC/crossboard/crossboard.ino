int state=0;
long Time=0;
void setup() {
  Serial.begin(9600);
  pinMode(3,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(9,INPUT_PULLUP);
}

void loop() {
 if(digitalRead(9)==LOW)
 {
  if(millis()-Time>=250)
  {
    Time=millis();
    if(state==0)
    {
      state=1;
    }else
    {
      state=0;
    }
  }
    
 }
 if(state==1)
 {
    digitalWrite(3,HIGH);
    digitalWrite(2,HIGH);
 }else
 {
    digitalWrite(3,LOW);
    digitalWrite(2,LOW);
 }
 Serial.print(digitalRead(9));
 Serial.print(" ");
 Serial.print(digitalRead(2));
 Serial.print(" ");
 Serial.println(digitalRead(3));
 
}
