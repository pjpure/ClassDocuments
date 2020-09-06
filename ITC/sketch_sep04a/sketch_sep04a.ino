#define button1 12 
#define button2 11
#define button3 10
#define pressed LOW
#define led1 4
#define led2 3
#define led3 2
int led3status=0;
int dl1=1;
int dl3=1;
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
      delay(250);
      digitalWrite(led1,HIGH);
      while(dl1<=77)
      {
        dl1=dl1+1;
        delay(dl1);
        if(digitalRead(button1)!=pressed)
        {
          dl1=75;
        }
        
      }    
      digitalWrite(led1,LOW);
      dl1=1;
      delay(250);
      
  }

  //led2
  if(digitalRead(button2)==pressed)
  {
      delay(250);
      digitalWrite(led2,HIGH);
      while(dl1<=77)
      {
        dl1=dl1+1;
        delay(dl1);

        //led1
  if(digitalRead(button1)!=pressed)
  {
      delay(250);
      digitalWrite(led1,HIGH);
      //digitalWrite(led2,LOW);
      while(dl1<=77)
      {
        dl1=dl1+1;
        delay(dl1);
        if(dl1==40)
          {
            digitalWrite(led2,LOW);
          }
          
          if(dl1==60)
          {
            digitalWrite(led2,HIGH);
          }                       
        if(digitalRead(button1)!=pressed)
        {
          dl1=75;
        }
        
      }    
      digitalWrite(led1,LOW);
      //dl1=1;
      delay(250);
      
  }

                    //led3
  if(digitalRead(button3)==pressed)
  {
      delay(250);
      digitalWrite(led3,HIGH);
      //digitalWrite(led2,LOW);
      while(dl1<=77)
      {
        dl1=dl1+1;
        delay(dl1);
        if(dl1==40)
          {
            digitalWrite(led2,LOW);
          }
          
          if(dl1==60)
          {
            digitalWrite(led2,HIGH);
          }                       
                  //led1
            if(digitalRead(button1)!=pressed)
            {
                delay(250);
                digitalWrite(led1,HIGH);
                digitalWrite(led2,LOW);
                while(dl1<=77)
                {
                  dl1=dl1+1;
                  delay(dl1);
                  if(dl1==40)
          {
            digitalWrite(led2,LOW);
          }
          
          if(dl1==60)
          {
            digitalWrite(led2,HIGH);
          }                       
                  if(digitalRead(button1)!=pressed)
                  {
                    dl1=75;
                  }
                  
                }    
                digitalWrite(led1,LOW);
               // dl1=1;
                
            }
        if(digitalRead(button3)==pressed)
        {
          dl1=75;
        }
        
      }    
      digitalWrite(led3,LOW);
     // dl1=1;
      
  }//led3
                                         
         if(dl1==40)
          {
            digitalWrite(led2,LOW);
          }
          
          if(dl1==60)
          {
            digitalWrite(led2,HIGH);
          }                       
        if(digitalRead(button2)==pressed)
        {
          dl1=75;
        }
        
      }    
      digitalWrite(led2,LOW);
      dl1=1;
      delay(250);
      
  }

  //led3
  if(digitalRead(button3)==pressed)
  {
      delay(250);
      digitalWrite(led3,HIGH);
      while(dl3<=77)
      {
        dl3=dl3+1;
        delay(dl3);
                  //led1
            if(digitalRead(button1)!=pressed)
            {
                delay(250);
                digitalWrite(led1,HIGH);
                while(dl1<=77)
                {
                  dl1=dl1+1;
                  delay(dl1);
                  if(digitalRead(button1)!=pressed)
                  {
                    dl1=75;
                  }
                  if(dl3+dl1==77)
                  {
                    delay(250);
                    digitalWrite(led3,LOW);
                  }
                  
                }    
                digitalWrite(led1,LOW);
               // dl1=1;
                
            }
        if(digitalRead(button3)==pressed)
        {
          dl3=75;
        }
        
      }    
      digitalWrite(led3,LOW);
      dl3=1;
      delay(250);
      
  }//led3
}
