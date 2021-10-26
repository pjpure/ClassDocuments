#define d 2
#define r 3
#define m 4
#define s 5
#define l 6
#define t 7
#define spk 13
int tones[8]={0,262,294,330,392,440,494};
int play[100];
int i=0;
void setup() 
{
  
  pinMode(d,INPUT_PULLUP);
  digitalWrite(d,HIGH);
  pinMode(r,INPUT_PULLUP);
  digitalWrite(r,HIGH);
  pinMode(m,INPUT_PULLUP);
  digitalWrite(m,HIGH);
  pinMode(s,INPUT_PULLUP);
  digitalWrite(s,HIGH);
  pinMode(l,INPUT_PULLUP);
  digitalWrite(l,HIGH);
  pinMode(t,INPUT_PULLUP);  
}

void loop() 
{
  button();
}

void button()
{
 butd();
 butr();
 butm();
 buts();
 butl();
 butplay();  
  
}

void butd()
{
  if(digitalRead(d)==LOW)
  {
    tone(spk,tones[1]);
    delay(500);
    i++;
    play[i]=tones[1];    
  }
  noTone(spk);
     
}

void butr()
{
  if(digitalRead(r)==LOW)
  {
    tone(spk,tones[2]);   
    i++;
    play[i]=tones[2];
  }noTone(spk);
  
}

void butm()
{
  if(digitalRead(m)==LOW)
  {      
    tone(spk,tones[3]);    
    i++;
    play[i]=tones[3];   
  }noTone(spk);
  
}

void buts()
{
  if(digitalRead(s)==LOW)
  {
    tone(spk,tones[4]);      
    i++;
    play[i]=tones[4];
  }noTone(spk);
  
}

void butl()
{
  if(digitalRead(l)==LOW)
  {
    tone(spk,tones[5]); 
    i++;
    play[i]=tones[5];  
  }noTone(spk); 
}

void butplay()
{
  if(digitalRead(t)==LOW)
  {
    for(int j=0;j<=i;j++)
    {
      tone(spk,play[j]);
      noTone(spk);
    }
    noTone(spk);
    i=0;
  }
}
