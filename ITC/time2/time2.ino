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
    if(t1==60)
    {
      t1=0;
      tm++;
    }
    if(tm==60)
    {
      tm=0;
      th++;
    }
    Serial.print(th);
    Serial.print(":");
    Serial.print(tm);
    Serial.print(":");
    Serial.println(t1);
    t1++;
    
}
void loop()
{
    
}
