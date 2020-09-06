#define NOTE_C4 262 // เสียงโด (กลาง)
#define NOTE_D4 294 // เสียงเร (กลาง)
#define NOTE_E4 330 // เสียงมี (กลาง)
#define NOTE_F4 349 // เสียงฟา (กลาง)
#define NOTE_G4 392 // เสียงซอล (กลาง)
#define NOTE_A4 440 // เสียงลา (กลาง)
#define NOTE_B4 494 // เสียงที (กลาง)
#define speakerpin 10
#define sw1 2
#define sw2 3
#define sw3 4
#define sw4 5
#define sw5 6
#define sw6 7
#define sw7 8
#define swrecord 11  
#define swplay 12
int tim[100]={0};
int key[100]={0};
int Delay[100]={0};
int index=0;
int state=0;
int Time;
int sw[8]={0,2,3,4,5,6,7,8};
int note[8]={0,NOTE_C4,NOTE_D4,NOTE_E4,NOTE_F4,NOTE_G4,NOTE_A4,NOTE_B4};
int i=0;

void setup()
{ 
  pinMode(speakerpin, OUTPUT);//buzzer
  pinMode(sw1, INPUT_PULLUP);
  pinMode(sw2, INPUT_PULLUP);
  pinMode(sw3, INPUT_PULLUP);
  pinMode(sw4, INPUT_PULLUP);
  pinMode(sw5, INPUT_PULLUP);
  pinMode(sw6, INPUT_PULLUP);
  pinMode(sw7, INPUT_PULLUP);
  pinMode(swrecord, INPUT_PULLUP);
  pinMode(swplay, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() 
{
  play();
}

void but(int i)
{
  if(digitalRead(sw[i]) == LOW)
  {
     tone(speakerpin,note[i]);
     if(state==1)
     {
       if(index>0) Delay[index]=millis()-Time;
       Time=millis();
       while(digitalRead(sw[i]) == LOW);
        tim[index]=millis()-Time;
        key[index]=note[i];
        Serial.println(Time);
        Time=millis();
        index++;
      }
   }
}

void play()
{
  //Serial.print(digitalRead(sw1));
  //Serial.print(digitalRead(sw2));
  //Serial.print(digitalRead(sw3));
  //Serial.print(digitalRead(sw4));
  //Serial.print(digitalRead(sw5));
  //Serial.print(digitalRead(sw6));
  //Serial.println(digitalRead(sw7));
  if(digitalRead(swplay)==LOW){
    while(digitalRead(swplay)==LOW) delay(1);
    if(state==0 && index>0){
      Serial.println("play");
      for(int k=0;k<index;k++){
        tone(speakerpin,key[k]);
        delay(tim[k]);
        noTone(speakerpin);
        delay(Delay[k]);
      }
    }
  }
  if(digitalRead(swrecord)==LOW){
    while(digitalRead(swrecord)==LOW) delay(1);
    if(state==0){//record
      index=0;
      for(int k=0;k<100;k++){
        key[k]=0;
        tim[k]=0;
        Delay[k]=0;
      }
      state=1;
      Serial.println("record");
    }
    else{
      state=0; //endrecord
      Serial.println(" STOP record");
    } 
   }
    else if(digitalRead(sw1) == LOW){
      i=1;
     but(i);
   }
    else if(digitalRead(sw2) == LOW){
      i=2;
     but(i);
   }
    else if(digitalRead(sw3) == LOW){
    i=3;
     but(i);
  }
   else if(digitalRead(sw4) == LOW){
      i=4;
     but(i);
  }
     else if(digitalRead(sw5) == LOW)
  {
      i=5;
     but(i);
  }
   else if(digitalRead(sw6) == LOW){
      i=6;
     but(i);
  }
   else if(digitalRead(sw7) == LOW){
      i=7;
     but(i);
  }
  else noTone(speakerpin);
  }
