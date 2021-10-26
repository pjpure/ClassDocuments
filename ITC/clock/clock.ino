
#include "LedControl.h"
#include "FontLEDClock.h"
#define  Inbutton 9
#define  Debutton 8
#define  countsecondbutton 4
#define  modebutton 5
#define  chTimebutton 3
#define speak 6

#define  ldr A1
long Delay = 0;

LedControl lc = LedControl(10, 12, 11, 4);              // DIN,CLK,CS,Number of LED Module
uint8_t intensity = 8;
int hour  = 10, minute = 10, second = 10; //Variable Clock mode
int counthour  = 0, countminute = 0, countsecond = 0;
int hourA  = 10, minuteA = 11, secondA = 0;
int day = 30, month = 10, year = 2019;
int countTime = 0;
int countMode = 0;
int countEdit = 0;
int stateldr = 0;
long timrldr = 0;
int devices = lc.getDeviceCount();
int statealram=0;
int statestop=1;

void setup()
{
  pinMode(speak, OUTPUT);
  pinMode(Inbutton, INPUT_PULLUP);
  pinMode(Debutton, INPUT_PULLUP);
  pinMode(countsecondbutton, INPUT_PULLUP);
  pinMode(modebutton, INPUT_PULLUP);
  pinMode(chTimebutton, INPUT_PULLUP);
  pinMode(ldr, INPUT);                    /* find no of LED modules */
  for (int address = 0; address < devices; address++)   /* set up each device         */
  { /* set up each device         */
    lc.shutdown(address, false);                        /* turn off power saving mode */
    lc.setIntensity(address, 8);                        /* set intensity=2 of 8       */
    lc.clearDisplay(address);                           /* clear screen               */
  }                                                     /* set up each device         */
  Serial.begin(9600);
  noInterrupts();           /* disable all interrupts             */
  TCCR1A  = 0;
  TCCR1B  = 0;
  TCNT1   = 3036;           /* preload timer 65536-16MHz/256/1Hz  */
  TCCR1B |= (1 << CS12);    /* 256 prescaler                      */
  TIMSK1 |= (1 << TOIE1);   /* enable timer overflow interrupt    */
  interrupts();             /* enable all interrupts              */
}

void clear_display()
{
  for (uint8_t address = 0; address < 4; address++)
    lc.clearDisplay(address);
}

void plot (uint8_t x, uint8_t y, bool value)
{
  uint8_t address;                                      /* select which matrix depending on the x coord  */
  if (x >= 0  && x <= 7)  {
    address = 3;
  }
  if (x >= 8  && x <= 15) {
    address = 2;
    x = x - 8;
  }
  if (x >= 16 && x <= 23) {
    address = 1;
    x = x - 16;
  }
  if (x >= 24 && x <= 31) {
    address = 0;
    x = x - 24;
  }

  if (value == 1)
    lc.setLed(address, y, x, true);
  else
    lc.setLed(address, y, x, false);
}

void print_tiny_char(uint8_t x, uint8_t y, char c)
{
  uint8_t dots;
  if (c >= 'A' && c <= 'Z' || (c >= 'a' && c <= 'z') )  c &= 0x1F;              /* A-Z maps to 1-26  */
  else if (c >= '0' && c <= '9')                        c  = (c - '0') + 32;
  else if (c == ' ' )                                   c  =  0;                /* space             */
  else if (c == '.' )                                   c  = 27;                /* full stop         */
  else if (c == ':' )                                   c  = 28;                /* colon             */
  else if (c == '\'')                                   c  = 29;                /* single quote mark */
  else if (c == '!' )                                   c  = 30;                /* single quote mark */
  else if (c == '?' )                                   c  = 31;                /* question mark     */

  for (uint8_t col = 0; col < 3; col++)
  {
    dots = pgm_read_byte_near(&mytinyfont[c][col]);
    for (uint8_t row = 0; row < 5; row++)
    {
      if (dots & (16 >> row))     plot(x + col, y + row, 1);
      else                      plot(x + col, y + row, 0);
    }
  }
}

void print_normal_char(uint8_t x, uint8_t y, char c)
{

  uint8_t dots;
  if (c >= 'A' && c <= 'Z' ) {
    c &= 0x1F;  // A-Z maps to 1-26
  }
  else if (c >= 'a' && c <= 'z') {
    c = (c - 'a') + 41;  // A-Z maps to 41-67
  }
  else if (c >= '0' && c <= '9') {
    c = (c - '0') + 31;
  }
  else if (c == ' ') {
    c = 0;  // space
  }
  else if (c == '.') {
    c = 27;  // full stop
  }
  else if (c == '\'') {
    c = 28;  // single quote mark
  }
  else if (c == ':') {
    c = 29;  // clock_mode selector arrow
  }
  else if (c == '>') {
    c = 30;  // clock_mode selector arrow
  }
  else if (c >= -80 && c <= -67) {
    c *= -1;
  }

  for (uint8_t col = 0; col < 5; col++) {
    dots = pgm_read_byte_near(&myfont[c][col]);
    for (uint8_t row = 0; row < 7; row++) {
      if (dots & (64 >> row)) {   // only 7 rows.
        plot(x + col, y + row, 1);
      } else {
        plot(x + col, y + row, 0);
      }
    }
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
ISR(TIMER1_OVF_vect)        // interrupt service routine
{
  TCNT1 = 3036;             /* preload timern */
  if (countEdit == 0||countMode!=0)
  {
    second++;
  }

  if (countTime == 1)
  {
    countsecond++;
  }
}
////////////////////////////////////////////////////////////////////////////
void checkTime()
{
  if (countEdit == 0||countMode!=0)
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

  if (countTime == 1)
  {
    if (countsecond > 59)
    {
      countsecond = 0;
      countminute++;
    }
    if (countminute > 59)
    {
      countminute = 0;
      counthour++;
    }
    if (counthour > 23)
    {
      counthour = 0;
    }
  }
}

//////////////////////////////////////////////////////////////////////////////
void clocks()
{
  print_tiny_char( 2, 1,  hour / 10 + '0'); //print hour
  print_tiny_char( 6, 1,  hour % 10 + '0');
  print_tiny_char(12, 1, minute / 10 + '0'); //print minute
  print_tiny_char(16, 1, minute % 10 + '0');
  print_tiny_char(22, 1, second / 10 + '0'); //print second
  print_tiny_char(26, 1, second % 10 + '0');

  if (second == 0)
  {
    plot(10, 2, 0);
    plot(10, 4, 0);
    plot(20, 2, 0);
    plot(20, 4, 0);
  }
  else
  {
    plot(10, 2, 1);
    plot(10, 4, 1);
    plot(20, 2, 1);
    plot(20, 4, 1);
  }

}
/////////////////////////////////////////////////////////////////////////////////////
void clocks2()
{
  print_normal_char( 2, 0,  hour / 10 + '0'); //print hour
  print_normal_char( 9, 0,  hour % 10 + '0');
  print_normal_char(18, 0, minute / 10 + '0'); //print minute
  print_normal_char(24, 0, minute % 10 + '0');

  if (minute == 0)
  {
    plot(16, 2, 0);
    plot(16, 5, 0);
  }
  else
  {
    plot(16, 2, 1);
    plot(16, 5, 1);
  }

}
/////////////////////////////////////////////////////////////////////////////////////
void date()
{
  print_tiny_char( 2, 1,  day / 10 + '0'); //print day
  print_tiny_char( 6, 1,  day % 10 + '0');
  print_tiny_char(12, 1, month / 10 + '0'); //print month
  print_tiny_char(16, 1, month % 10 + '0');
  print_tiny_char(22, 1, (year / 10) % 10 + '0'); //print year00xx
  print_tiny_char(26, 1, year % 10 + '0');

  plot(10, 5, 1);
  plot(20, 5, 1);

}
/////////////////////////////////////////////////////////////////////////////////////
void settimehour()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      hour++;
    }
  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      hour--;
    }
  }

}
///////////////////////////////////////////////////////////////////////////////////
void settimemin()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      minute++;
    }

  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      minute--;
    }
  }

}
/////////////////////////////////////////////////////////////////////////////
void settimehourA()
{
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      hourA++;
    }
  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      hourA--;
    }
  }

}
///////////////////////////////////////////////////////////////////////////////////
void settimeminA()
{
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      minuteA++;
    }

  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      minuteA--;
    }
  }

}
//////////////////////////////////////////////////////////////////////////////////
void settimesec()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      second++;
    }
  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      second--;
    }
  }

}
//////////////////////////////////////////////////////////////////////////////////
void setday()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      day++;
    }
  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      day--;
    }
  }

}
///////////////////////////////////////////////////////////////////////////////////
void setmonth()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      month++;
    }

  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      month--;
    }
  }

}
//////////////////////////////////////////////////////////////////////////////////
void setyear()
{
  checktime();
  if (digitalRead(Inbutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      year++;
    }
  }
  if (digitalRead(Debutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      year--;
    }
  }

}
//////////////////////////////////////////////////////////////////////////////////
void buttoncounttime()
{
  if (digitalRead(countsecondbutton) == LOW && millis() - Delay >= 250)
  {
    Delay = millis();
    if (countTime == 0)
    {
      countTime = 1;
    }
    else
    {
      countTime = 0;
    }
  }

  if (digitalRead(chTimebutton) == 0&& millis() - Delay >= 250&&countMode==2&&countTime == 0)
  {
      Delay = millis();
      countsecond = 0;
      countminute = 0;
      counthour = 0;
  }
}
//////////////////////////////////////////////////////////////////////////////////////
void checktime()
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
/////////////////////////////////////////////////////////////////////////////////////
void checktimeA()
{
  if (minuteA > 59) {
    minuteA = 0;
  }
  if (hourA > 23) {
    hourA = 0;
  }
  
  if (minuteA < 0) {
    minuteA = 59;
  }
  if (hourA < 0) {
    hourA = 23;
  }
}
/////////////////////////////////////////////////////////////////////////////////////
void counttime()
{
  buttoncounttime();
  print_tiny_char( 2, 1,  counthour / 10 + '0'); //print hour
  print_tiny_char( 6, 1,  counthour % 10 + '0');
  print_tiny_char(12, 1, countminute / 10 + '0'); //print minute
  print_tiny_char(16, 1, countminute % 10 + '0');
  print_tiny_char(22, 1, countsecond / 10 + '0'); //print second
  print_tiny_char(26, 1, countsecond % 10 + '0');

  if (countsecond == 0)
  {
    plot(10, 2, 0);
    plot(10, 4, 0);
    plot(20, 2, 0);
    plot(20, 4, 0);
  }
  else
  {
    plot(10, 2, 1);
    plot(10, 4, 1);
    plot(20, 2, 1);
    plot(20, 4, 1);
  }
}
///////////////////////////////////////////////////////////////////////////////
void mode()
{
  if (digitalRead(modebutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      clear_display();
      countMode++;
      countEdit = 0;
    }
  }
  if (countMode > 3)
  {
    clear_display();
    countMode = 0;
  }
}
////////////////////////////////////////////////////////////////////////////////////
void selectEdit()
{
  if (digitalRead(chTimebutton) == 0)
  {
    if (millis() - Delay >= 250)
    {
      Delay = millis();
      countEdit++;
      if (countEdit == 1)
      {
        clear_display();
      }
    }
  }
  if (countEdit > 3)
  {
    clear_display();
    countEdit = 0;
  }
}
/////////////////////////////////////////////////////////////////////////////////
void ldrcheck()
{
  if (analogRead(ldr) < 600 && stateldr == 1)
  {
    if (countMode == 0)
    {
      clear_display();
    }
    stateldr = 0;
  } else if (analogRead(ldr) >= 600 && stateldr == 0)
  {
    if (countMode == 0)
    {
      clear_display();
    }
    stateldr = 1;
  }
}
//////////////////////////////////////////////////////////////////////////////////
void CLOCK()
{
  if (stateldr == 0)
  {
    clocks();
    selectEdit();
    if (countEdit == 1)
    {
      plot(6, 7, 1);
      settimehour();
    }
    if (countEdit == 2)
    {
      plot(16, 7, 1);
      plot(6, 7, 0);
      settimemin();
    }
    if (countEdit == 3)
    {
      plot(26, 7, 1);
      plot(16, 7, 0);
      plot(6, 7, 0);
      settimesec();
    }
  } else
  {
    clocks2();
    selectEdit();
    if (countEdit == 1)
    {
      plot(8, 7, 1);
      settimehour();
    }
    if (countEdit == 2)
    {
      plot(23, 7, 1);
      plot(8, 7, 0);
      settimemin();
    }
    if (countEdit > 2)
    {
      clear_display();
      countEdit = 0;
      plot(23, 7, 0);
      plot(8, 7, 0);
    }
  }

}
//////////////////////////////////////////////////////////////////////////////////
void DATE()
{
  date();
  selectEdit();
  if (countEdit == 1)
  {
    plot(6, 7, 1);
    setday();
  }
  if (countEdit == 2)
  {
    plot(16, 7, 1);
    plot(6, 7, 0);
    setmonth();
  }
  if (countEdit == 3)
  {
    plot(26, 7, 1);
    plot(16, 7, 0);
    plot(6, 7, 0);
    setyear();
  }
}
//////////////////////////////////////////////////////////////////////////////////
void setalarm()
{
  checktimeA();
  selectEdit();
  print_normal_char( 2, 0,  hourA / 10 + '0'); //print hour
  print_normal_char( 9, 0,  hourA % 10 + '0');
  print_normal_char(18, 0, minuteA / 10 + '0'); //print minute
  print_normal_char(24, 0, minuteA % 10 + '0');
  print_tiny_char(30, 0,'!');
  
  if (minute == 0)
  {
    plot(16, 2, 0);
    plot(16, 5, 0);
  }
  else
  {
    plot(16, 2, 1);
    plot(16, 5, 1);
  }

  if (countEdit == 1)
    {
      plot(8, 7, 1);
      settimehourA();
    }
    if (countEdit == 2)
    {
      plot(23, 7, 1);
      plot(8, 7, 0);
      settimeminA();
    }
    if (countEdit > 2)
    {
      clear_display();
      countEdit = 0;
      plot(23, 7, 0);
      plot(8, 7, 0);
    }
}
///////////////////////////////////////////////////////////////////////////////////
void alarm()
{
  if(hourA==hour&&minuteA==minute&&countMode!=3&&countEdit == 0&&statestop==0)
  {
    statealram=1;
  }else
  {
    statealram=0;
  }

  if(statealram==1)
  {
    tone(speak,1000);
  }else
  {
    noTone(speak);
  }
  stopalarm();
}
////////////////////////////////////////////////////////////////////////////////////
void stopalarm()
{
  if(statealram==1)
  {
    if(digitalRead(3)==0||digitalRead(4)==0||digitalRead(5)==0||digitalRead(8)==0||digitalRead(9)==0&& millis() - Delay >= 250)
    {
      Delay=millis();
      statealram=0;
      statestop=1;
    }
  }
}
////////////////////////////////////////////////////////////////////////////////////
void light()
{
  intensity = map(analogRead(ldr), 100, 800, 8, 0);
  for (int address = 0; address < devices; address++)
  {
    lc.setIntensity(address, intensity);
  }
}
////////////////////////////////////////////////////////////////////////////////////
void loop() {
  mode();
  ldrcheck();
  light();
  alarm();
  checkTime();
  if (countMode == 0)
  {
    CLOCK();
  }
  if (countMode == 1)
  {
    DATE();
  }
  if (countMode == 2)
  {
    counttime();
  }
  if (countMode == 3)
  {
    setalarm();
    statestop=0;
  }
  delay(100);
}
///////////////////////////////////////////////////////////////////////////////////
