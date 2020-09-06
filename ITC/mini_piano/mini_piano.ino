#define NOTE_C4 262 
#define NOTE_D4 294 
#define NOTE_E4 330 
#define NOTE_F4 349 
#define NOTE_G4 392 
#define NOTE_A4 440 
#define NOTE_B4 494
#define NOTE_C5  523
#define NOTE_D5  587
#define NOTE_E5  659
#define NOTE_F5  698
#define NOTE_G5  784
#define NOTE_A5  880
#define NOTE_B5  988 
#define speakerpin 13
#define sw1 2
#define sw2 3
#define sw3 4
#define sw4 5
#define sw5 6
#define sw6 7
#define sw7 8
#define swrecord 11  
#define swplay 12

int timebut[100]={0};
int key[100]={0};
int Delay[100]={0};
int j=0;
int i=0;
int state=0;
int Time;
int sw[8]={0,2,3,4,5,6,7,8};
int note[8]={0,NOTE_C4,NOTE_D4,NOTE_E4,NOTE_F4,NOTE_G4,NOTE_A4,NOTE_B4};
//int note[8]={0,NOTE_C5,NOTE_D5,NOTE_E5,NOTE_F5,NOTE_G5,NOTE_A5,NOTE_B5};

void setup()
{ 
  pinMode(speakerpin, OUTPUT);
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
  if(digitalRead(swplay)==LOW)
  {
    play();
  }
    if(digitalRead(swrecord)==LOW)
    {
        record();
    }
    else if(digitalRead(sw1) == LOW)
    {
         i=1;
         but(i);
    }
    else if(digitalRead(sw2) == LOW)
    {
         i=2;
         but(i);
    }
    else if(digitalRead(sw3) == LOW)
    {
        i=3;
        but(i);
    }
    else if(digitalRead(sw4) == LOW)
    {
        i=4;
        but(i);
    }
     else if(digitalRead(sw5) == LOW)
    {
        i=5;
        but(i);
    }
    else if(digitalRead(sw6) == LOW)
    {
        i=6;
        but(i);
    }
     else if(digitalRead(sw7) == LOW)
    {
        i=7;
        but(i);
    }
    else 
    {
      noTone(speakerpin);
    }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////

void but(int i)
{
  if(digitalRead(sw[i]) == LOW)
  {
     tone(speakerpin,note[i]);
     if(state==1)
     {
       if(j>0) Delay[j]=millis()-Time;
       Time=millis();
       while(digitalRead(sw[i]) == LOW);
        timebut[j]=millis()-Time;
        key[j]=note[i];
        Time=millis();
        j++;
      }
   }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////

void record()
{
  while(digitalRead(swrecord)==LOW) delay(1);
    if(state==0){
      j=0;
      for(int k=0;k<100;k++)
      {
        key[k]=0;
        timebut[k]=0;
        Delay[k]=0;
      }
      state=1;
    }
    else
    {
      state=0; 
    } 
}

/////////////////////////////////////////////////////////////////////////////////////////////////////

void play()
{
  while(digitalRead(swplay)==LOW) delay(1);
    if(state==0 && j>0){
      for(int k=0;k<j;k++){
        tone(speakerpin,key[k]);
        delay(timebut[k]);
        noTone(speakerpin);
        delay(Delay[k]);
      }
    }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////
