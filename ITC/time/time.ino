#define ledPin 13
int timer1_counter;
int t1=0,ts=0,tm=0,th=0,i=0;
void setup()
{
    Serial.begin(9600);
    pinMode(ledPin , OUTPUT); 
    
    // initialize timer 1
    noInterrupts(); // disable all interrupts
    TCCR1A = 0;
    TCCR1B = 0;
    
    timer1_counter = 3036 ; // preload timer 65536 16 MHz/ 256 1 Hz
    
    TCNT1 = timer1_counter; // preload timer
    TCCR1B |= ( 1 << CS12 ); // 256 prescaler
    TIMSK1 |= (1 << TOIE1 ); // enable timer overflow interrupt
    interrupts(); // enable all interrupts
}
ISR(TIMER1_OVF_vect) // interrupt service routine
{
    TCNT1 = timer1_counter; // preload timer
    digitalWrite(ledPin , digitalRead(ledPin)^ 1);
    //Serial.println(t1);
    ts=t1-(60*i);
    if(t1==60*(i+1)-1&&t1!=0)
    {
      i++;
    }
    if(t1%60==0&&t1!=0)
    {
      tm++;
    }
    if(t1%3600==0&&t1!=0)
    {
      th++;
    }
    Serial.print(th);
    Serial.print(":");
    Serial.print(tm);
    Serial.print(":");
    Serial.println(ts);
    t1++;
    
}

ISR(TIMER1_OVF_vect)        // interrupt service routine
{
  TCNT1 = 3036;             /* preload timern */
  if (countEdit == 0)
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
    second++;
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
    countsecond++;
  }
}
void loop()
{
    
}
