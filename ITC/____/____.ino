#define
ledPin 13
int
timer 1 _
int
t 1 0
void
setup()
{
Serial.begin
9600
pinMode
ledPin , OUTPUT
// initialize timer
1
noInterrupts
(); // disable all interrupts
TCCR
1 A = 0
TCCR
1 B = 0
timer
1 _counter = 3036 ; // preload timer 65536 16 MHz/ 256 1 Hz
TCNT
1 = timer 1 _counter; // preload timer
TCCR
1 B |= ( 1 << CS 12 ); // 256 prescaler
TIMSK
1 |= 1 << TOIE 1 ); // enable timer overflow interrupt
interrupts
(); // enable all interrupts
}
ISR(TIMER
1 _OVF_vect) // interrupt service routine
{
TCNT
1 = timer 1 _counter; // preload timer
digitalWrite
ledPin , digitalRead ledPin ) ^ 1
Serial.println
(t 1
}
void
loop()
{
// your program here...
}
4
