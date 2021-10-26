#define LED_W_R 4
#define LED_W_Y 5
#define LED_W_G 6
#define WEST_BUTTON_PIN 2

#define LED_S_R 8
#define LED_S_Y 9
#define LED_S_G 10
#define SOUTH_BUTTON_PIN 3

#define LED_WK_R 11
#define LED_WK_G 12
#define WALK_BUTTON_PIN 13

#define goS 0
#define waitS 1
#define goW 2
#define waitW 3
#define walk 4
#define waitwalk 5
struct State {
  unsigned long  ST_Out ; // 6 bit pattern to street output
  unsigned long Time; // delay in ms units
  unsigned long Next[8];
}; // next state for inputs 0,1,2,3
typedef const struct State SType;
SType FSM[6] = {
  {0x61, 3000, goS, waitS, goS, waitS, walk, walk, waitS, waitS},
  {0x67, 1000, waitS, goW, goW, goW, walk, walk, walk, walk},
  {0x4C, 3000, goW, goW, waitW, waitW, walk, waitW, walk, waitW},
  {0x7C, 1000, waitW, goS, goS, goS, walk, walk, walk, goS},
  {0xA4, 3000, walk, waitwalk, waitwalk, waitwalk, walk, goW, goS, goW},
  {0x64, 0, walk, goW, goS, goW, walk, goW, goS, goW}
};
unsigned short S = 4 ; // index to the current state
// Interrupt
int timer1_counter;
int  t1 = 0;

void setup() {
  Serial.begin(9600);
  pinMode(LED_W_R, OUTPUT);
  pinMode(LED_W_Y, OUTPUT);
  pinMode(LED_W_G, OUTPUT);
  pinMode(WEST_BUTTON_PIN, INPUT_PULLUP);

  pinMode(LED_S_R, OUTPUT);
  pinMode(LED_S_Y, OUTPUT);
  pinMode(LED_S_G, OUTPUT);
  pinMode(SOUTH_BUTTON_PIN, INPUT_PULLUP);

  pinMode(LED_WK_R, OUTPUT);
  pinMode(LED_WK_G, OUTPUT);
  pinMode(WALK_BUTTON_PIN, INPUT_PULLUP);

  // initialize timer1
  noInterrupts(); // disable all interrupts
  TCCR1A = 0;
  TCCR1B = 0;

  timer1_counter = 3036;
  TCNT1 = timer1_counter; TCCR1B |= (1 << CS12); TIMSK1 |= (1 << TOIE1);
  interrupts();
}
int input, inputW, inputS , inputWK;

ISR(TIMER1_OVF_vect) // interrupt service routine
{
  TCNT1 = timer1_counter; // preload timer
  Serial.println(t1++);
}

void loop() {

  digitalWrite(LED_W_R,  !(FSM[S].ST_Out & B00000001));
  digitalWrite(LED_W_Y, !(FSM[S].ST_Out & B00000010));
  digitalWrite(LED_W_G,  !(FSM[S].ST_Out & B00000100));
  digitalWrite(LED_S_R,  !(FSM[S].ST_Out & B00001000));
  digitalWrite(LED_S_Y, !(FSM[S].ST_Out & B00010000));
  digitalWrite(LED_S_G,  !(FSM[S].ST_Out & B00100000));
  digitalWrite(LED_WK_G, !(FSM[S].ST_Out & B01000000));
  digitalWrite(LED_WK_R,!( FSM[S].ST_Out & B10000000));
  delay(FSM[S].Time);
  input = 0 ;
  
  inputW = !digitalRead (WEST_BUTTON_PIN);
  inputS = !digitalRead (SOUTH_BUTTON_PIN);
  inputWK = !digitalRead (WALK_BUTTON_PIN);
  input = inputWK * 4 + inputS * 2 + inputW;
  
  if (S == 4 && (input != 0 && input != 4 )) {
    int blnkTime = t1 + 1;
    int c = 1 ;
    Serial.println("BT : " + (String)blnkTime);
    while (t1 <= blnkTime ) {
      c++;
      if (c % 17 == 0) // 17 is approx of 1/4 of 1 secs , By 1 secs approxly equals to 70
        digitalWrite(LED_WK_G , !digitalRead(LED_WK_G));
      Serial.println("counter : " + (String)c);
    }

  }
  S = FSM[S].Next[input];

}
