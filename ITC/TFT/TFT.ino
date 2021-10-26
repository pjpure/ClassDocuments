#include "ST7735_TEE.h"
#define buttonup 2
#define buttonright 3

TEE_ST7735 lcd(9, 10, 11, 12, 13); //Arduino  csk,sda,A0,rst,cs
int hour  = 23, minute = 59, second = 50; //Variable Clock mode
int hour2  = hour, minute2 = minute, second2 = second;
int counthour  = 0, countminute = 0, countsecond = 0;

int day = 31, month = 12, year = 2019;
int day2 = day, month2= month, year2 = year;
int x=7,y=100;
int xd=25,yd=125;
char input;
String num;
int Mode=0,eMode=0,input_number;


long Delay=0;
int stateSun=1;

void setup()
{
    //lcd.init(lcd.HORIZONTAL);
    lcd.init(lcd.VERTICAL);
    Serial.begin(9600);
  noInterrupts();           /* disable all interrupts             */
  TCCR1A  = 0;
  TCCR1B  = 0;
  TCNT1   = 3036;           /* preload timer 65536-16MHz/256/1Hz  */
  TCCR1B |= (1 << CS12);    /* 256 prescaler                      */
  TIMSK1 |= (1 << TOIE1);   /* enable timer overflow interrupt    */
  interrupts();
  lcd.fillScreen(BLACK);
  lcd.drawString(20, 30, "APPLE", RED, 3);
  lcd.drawString(20, 60, "WATCH", RED, 3);
}

ISR(TIMER1_OVF_vect)        // interrupt service routine
{
  TCNT1 = 3036;
  if(eMode==0||Mode==0)
  {
     second++;/* preload timern */   
  }
   
}
//////////////////////////////////////////////////////////////////////////////////////////////
void checktime()
{
  if(eMode==0)
  {
    if (second > 59) {
      second = 0;
      minute++;
    }
    if (minute > 59) {
      minute = 0;
      hour++;
    }
    if (hour > 23) {
      hour = 0;
      day++;
    }
    if ((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day > 31)
    {
      day = 1;
      month++;
    }
    if ((month == 4 || month == 6 || month == 9 || month == 11) && day > 30)
    {
      day = 1;
      month++;
    }
    if (month == 2 && (year % 4 != 0 || (year % 100 == 0 && year % 400 != 0)) && day > 28)
    {
      day = 1;
      month++;
    }
    if (month == 2 && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) && day > 29)
    {
      day = 1;
      month++;
    }
    if (month > 12)
    {
      month = 1;
      year++;
    }
  }
  

//////////////////////////////////////////////////////////////////////////////////////////////
 if(eMode!=0)
 {
  if (second > 59) {
    second = 0;
  }
  if (minute > 59) {
    minute = 0;
  }
  if (hour > 23) {
    hour = 0;
  }
  if ((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day > 31)
  {
    day = 1;
  }
  if ((month == 4 || month == 6 || month == 9 || month == 11) && day > 30)
  {
    day = 1;
  }
  if (month == 2 && (year % 4 != 0 || (year % 100 == 0 && year % 400 != 0)) && day > 28)
  {
    day = 1;
  }
  if (month == 2 && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) && day > 29)
  {
    day = 1;
  }
  if (month > 12)
  {
    month = 1;
  }
  /////////////////////////////////////////////////////////////////////////////////
  if (second < 0) {
    second = 59;
  }
  if (minute < 0) {
    minute = 59;
  }
  if (hour < 0) {
    hour = 23;
  }
  if ((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) && day <= 0)
  {
    day = 31;
  }
  if ((month == 4 || month == 6 || month == 9 || month == 11) && day <= 0)
  {
    day = 30;
  }
  if (month == 2 && (year % 4 != 0 || (year % 100 == 0 && year % 400 != 0)) && day <= 0)
  {
    day = 28;
  }
  if (month == 2 && year % 4 == 0 && (year % 100 != 0 || year % 400 == 0) && day <= 0)
  {
    day = 29;
  }
  if (month <= 0)
  {
    month = 12;
  }
 }
  

}
/////////////////////////////////////////////////////////////////////////////////////////////
void clocks()
{
    lcd.drawChar(x, y, hour/10+'0', MAGENTA, 2);
    lcd.drawChar(x+15, y, hour%10+'0', MAGENTA, 2);
    lcd.drawChar(x+30, y, ':', YELLOW, 2);
    lcd.drawChar(x+45, y, minute/10+'0', MAGENTA, 2);    
    lcd.drawChar(x+60, y, minute%10+'0', MAGENTA, 2);
    lcd.drawChar(x+75, y, ':', YELLOW, 2);       
    lcd.drawChar(x+90, y, second/10+'0', MAGENTA, 2); 
    lcd.drawChar(x+105, y, second%10+'0', MAGENTA, 2); 
    rmclock();  
}
//////////////////////////////////////////////////////////////////////////////////////////////
void date()
{
    lcd.drawChar(xd, yd, day/10+'0', BLUE, 1);
    lcd.drawChar(xd+10, yd, day%10+'0', BLUE, 1);
    lcd.drawChar(xd+20, yd, '/', CYAN, 1);
    lcd.drawChar(xd+30, yd, month/10+'0', BLUE, 1);    
    lcd.drawChar(xd+40, yd, month%10+'0', BLUE, 1);
    lcd.drawChar(xd+50, yd, '/', CYAN, 1);       
    lcd.drawChar(xd+60, yd, (year / 10)%10+'0', BLUE, 1); 
    lcd.drawChar(xd+70, yd, year%10+'0', BLUE, 1);  
    rmdate();
}
//////////////////////////////////////////////////////////////////////////////////////////////
void rmclock()
{
    if(hour2/10!=hour/10)
    {
      lcd.fillRect(x,y,10,15,BLACK);
      lcd.fillRect(x+15,y,10,15,BLACK);
      lcd.fillRect(x+45,y,10,15,BLACK);
      lcd.fillRect(x+60,y,10,15,BLACK);
      lcd.fillRect(x+90,y,10,15,BLACK);
      lcd.fillRect(x+105,y,10,15,BLACK);
      hour2=hour;  
    }
    if(hour2%10!=hour%10)
    {
      lcd.fillRect(x+15,y,10,15,BLACK);
      lcd.fillRect(x+45,y,10,15,BLACK);
      lcd.fillRect(x+60,y,10,15,BLACK);
      lcd.fillRect(x+90,y,10,15,BLACK);
      lcd.fillRect(x+105,y,10,15,BLACK);
      hour2=hour;   
    }
    if(minute2/10!=minute/10)
    {
      lcd.fillRect(x+45,y,10,15,BLACK);
      lcd.fillRect(x+60,y,10,15,BLACK);
      lcd.fillRect(x+90,y,10,15,BLACK);
      lcd.fillRect(x+105,y,10,15,BLACK);
      minute2=minute;  
    }
    if(minute2%10!=minute%10)
    {
      lcd.fillRect(x+60,y,10,15,BLACK);
       lcd.fillRect(x+90,y,10,15,BLACK);
      lcd.fillRect(x+105,y,10,15,BLACK);
      minute2=minute;  
    }
    if(second2/10!=second/10)
    {
      lcd.fillRect(x+90,y,10,15,BLACK);
      lcd.fillRect(x+105,y,10,15,BLACK);
      second2=second;  
    }
    if(second2%10!=second%10)
    {
      lcd.fillRect(x+105,y,10,15,BLACK);
      second2=second;  
    }   
}
/////////////////////////////////////////////////////////////////////////////////////////////
void rmdate()
{
    if((year2/10)%10!=(year/10)%10)
    {
      lcd.fillRect(xd+60,yd,5,10,BLACK);
      lcd.fillRect(xd+70,yd,5,10,BLACK);
      lcd.fillRect(xd+30,yd,5,10,BLACK);
      lcd.fillRect(xd+40,yd,5,10,BLACK);
      lcd.fillRect(xd,yd,5,10,BLACK);
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      year2=year;  
    }
    if(year2%10!=year%10)
    {
      lcd.fillRect(xd+70,yd,5,10,BLACK);
      lcd.fillRect(xd+30,yd,5,10,BLACK);
      lcd.fillRect(xd+40,yd,5,10,BLACK);
      lcd.fillRect(xd,yd,5,10,BLACK);
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      year2=year;  
    }
    if(month2/10!=month/10)
    {
      lcd.fillRect(xd+30,yd,5,10,BLACK);
      lcd.fillRect(xd+40,yd,5,10,BLACK);
      lcd.fillRect(xd,yd,5,10,BLACK);
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      month2=month;  
    }
    if(month2%10!=month%10)
    {
      lcd.fillRect(xd+40,yd,5,10,BLACK);
      lcd.fillRect(xd,yd,5,10,BLACK);
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      month2=month;   
    } 
    if(day2/10!=day/10)
    {
      lcd.fillRect(xd,yd,5,10,BLACK);
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      day2=day;  
    }
    if(day2%10!=day%10)
    {
      lcd.fillRect(xd+10,yd,5,10,BLACK);
      day2=day;   
    }     
}
//////////////////////////////////////////////////////////////////////////////////////////////
void edit()
{
  button();
  while (Serial.available()) {
         input = (char)Serial.read();
         num += input;
     }
     if(num != "")
     {
      input_number = num.toInt();
      if(Mode == 1){
        if(eMode == 1)  hour = input_number;
        if(eMode == 2)  minute = input_number;
        if(eMode == 3)  second = input_number;
      }
      if(Mode == 2){
        if(eMode == 1)  day = input_number;
        if(eMode == 2)  month = input_number;
        if(eMode == 3)  year = input_number;
      } 
     }
     num = "";
}
/////////////////////////////////////////////////////////////////////////////////////////////
void button()
{
  if(digitalRead(buttonup)==0&&millis()-Delay>=250)
  {
    Delay=millis();
    eMode=0;
    Mode++;
    if(Mode>2)
    {
      Mode=0;
    }
  }

  if(digitalRead(buttonright)==0&&millis()-Delay>=250)
  {
    Delay=millis();
    eMode++;
    if(eMode>3)
    {
      eMode=0;
    }
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////
void Print()
{
  if(Mode==0)
  {
    Serial.println("Apple Watch");
  }
  if(Mode==1)
  {
    Serial.print("time ");
    if(eMode==0)
    {
      Serial.println(" ");
    }
    if(eMode==1)
    {
      Serial.println("editHour");
    }
    if(eMode==2)
    {
      Serial.println("editMinute");
    }
    if(eMode==3)
    {
      Serial.println("editSecond");
    }
  }
  if(Mode==2)
  {
    Serial.print("date ");
    if(eMode==0)
    {
      Serial.println(" ");
    }
    if(eMode==1)
    {
      Serial.println("editDay");
    }
    if(eMode==2)
    {
      Serial.println("editMonth");
    }
    if(eMode==3)
    {
      Serial.println("editYear");
    }
  }
}
////////////////////////////////////////////////////////////////////////////////////////////
void loop()
{
    checktime();
    date();
    clocks();
    edit();
    Print();
}
