#define a 2
#define b 3
#define c 4
#define d 6
#define e 7
#define f 8
#define g 9
                                             
int pin[7]={g,f,e,d,c,b,a};
int num[8]={0,48,109,121,51,91,95};
int n=0;
int ran;
int but1,but2;
void setup(){
  Serial.begin(9600);
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,INPUT_PULLUP);
  pinMode(13,INPUT_PULLUP);
}

void loop()
{
  if(digitalRead(12)==LOW)
  {
    delay(250);
    but2=0;
    ran=0;
    n++;
    if(n==7){
      n=1;
    }
    but1=n;
    guessbutton(n);
  }
 
  if(digitalRead(13)==LOW)
  {
    delay(250);
    n=0;
    guessbutton(n);
    ranON();
    delay(250);
    ran=random(1,7);
    but2=ran;
    delay(250);
    startbutton(ran);
    delay(500);
    guessbutton(but1);   
  } 
  winlose();
  
}

void guessbutton(int n)
{
  for(int i=0;i<=7;i++)
  {
    digitalWrite(pin[i],bitRead(num[n],i));
  }
}

void startbutton(int ran)
{
  for(int i=0;i<=7;i++)
  {
    digitalWrite(pin[i],bitRead(num[ran],i));
  }
}


void ranON()
{
  for(int j=0;j<=3;j++)
  {
      for(int i=2;i<=8;i++)
      {
      digitalWrite(i,1);
      delay(25);
        if(i%2==0)
        {
           digitalWrite(10,1);
           delay(25);  
           digitalWrite(10,0);
           delay(25);
        }
      digitalWrite(i,0);
      delay(25);
        if(i%2==1)
        {
           digitalWrite(11,1);
           delay(25);  
           digitalWrite(11,0);
           delay(25);
        }
      
      }
  }
}


void winlose()
{
  if(but1==but2&&but1!=0&&but2!=0)
  {
    //delay(500);
    n=0;
    ran=0;
    //ranON();
    but1=0;
    but2=0;
    digitalWrite(11,HIGH);
    delay(2000);
    digitalWrite(11,LOW);
    startbutton(ran);
    guessbutton(n);
   
    
  }else if(but1!=0&&but2!=0)
  {
    digitalWrite(10,HIGH);
    delay(100);
    digitalWrite(10,LOW);
  }
}
