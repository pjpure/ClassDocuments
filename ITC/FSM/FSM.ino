#define LED_W_R 4
#define LED_W_Y 5
#define LED_W_G 6
#define WEST_BUTTON_PIN 2

#define LED_S_R 8
#define LED_S_Y 9
#define LED_S_G 10
#define SOUTH_BUTTON_PIN 3

#define LED_Wk_G 11
#define LED_Wk_R 12
#define WALK_BUTTON_PIN 13

#define goW 0
#define waitWtS 1
#define waitWtWk 2
#define goS 3
#define waitStWk 4
#define waitStW 5
#define walk 6
#define waitWalk1tW 7
#define waitWalk2tW 8
#define waitWalk3tW 9
#define waitWalk1tS 10
#define waitWalk2tS 11
#define waitWalk3tS 12

struct State {
unsigned long ST_Out; // 6-bit pattern to street output
unsigned long Time; // delay in ms units
unsigned long Next[13];}; // next state for inputs 0,1,2,3
typedef const struct State SType;

SType FSM[13]={
    {B00110001,2000,{goW,goW,waitWtS,waitWtS,waitWtWk,waitWtWk,waitWtS,waitWtS}},
    {B01010001,500,{goS,goS,goS,goS,goS,goS,goS,goS}},
    {B01010001,500,{walk,walk,walk,walk,walk,walk,walk,walk}}, 
    {B10000101,2000,{goS,waitStW,goS,waitStW,waitStWk,waitStWk,waitStWk,waitStWk}},
    {B10001001,500,{walk,walk,walk,walk,walk,walk,walk,walk}},
    {B10001001,500,{goW,goW,goW,goW,goW,goW,goW,goW}},   
    {B10010010,2000,{walk,waitWalk1tW,waitWalk1tS,waitWalk1tW,walk,waitWalk1tW,waitWalk1tS,waitWalk1tW}},
    {B10010000,250,{waitWalk2tW,waitWalk2tW,waitWalk2tW,waitWalk2tW,waitWalk2tW,waitWalk2tW,waitWalk2tW,waitWalk2tW}},
    {B10010010,250,{waitWalk3tW,waitWalk3tW,waitWalk3tW,waitWalk3tW,waitWalk3tW,waitWalk3tW,waitWalk3tW,waitWalk3tW}},
    {B10010000,250,{goW,goW,goS,goW,goW,goW,goS,goW}},
    {B10010000,250,{waitWalk2tS,waitWalk2tS,waitWalk2tS,waitWalk2tS,waitWalk2tS,waitWalk2tS,waitWalk2tS,waitWalk2tS}},
    {B10010010,250,{waitWalk3tS,waitWalk3tS,waitWalk3tS,waitWalk3tS,waitWalk3tS,waitWalk3tS,waitWalk3tS,waitWalk3tS}},
    {B10010000,250,{goS,goS,goS,goS,goS,goS,goS,goS}}  
};
unsigned long S=0; // index to the current state

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

    pinMode(LED_Wk_R, OUTPUT);
    pinMode(LED_Wk_G, OUTPUT);
    pinMode(WALK_BUTTON_PIN, INPUT_PULLUP);

    
}
int input,input1, input2,input3;

void loop() {
    digitalWrite(LED_W_R, !(FSM[S].ST_Out & B10000000));
    digitalWrite(LED_W_Y, !(FSM[S].ST_Out & B01000000));
    digitalWrite(LED_W_G, !(FSM[S].ST_Out & B00100000));
    
    digitalWrite(LED_S_R, !(FSM[S].ST_Out & B00010000));
    digitalWrite(LED_S_Y, !(FSM[S].ST_Out & B00001000));
    digitalWrite(LED_S_G, !(FSM[S].ST_Out & B00000100));
    
    digitalWrite(LED_Wk_G, !(FSM[S].ST_Out & B00000010));
    digitalWrite(LED_Wk_R, !(FSM[S].ST_Out & B00000001));

    delay(FSM[S].Time);
    input1 = !digitalRead(WEST_BUTTON_PIN);
    input2 = !digitalRead(SOUTH_BUTTON_PIN);
    input3 = !digitalRead(WALK_BUTTON_PIN);
    input = input3*4+input2*2+input1;
    S = FSM[S].Next[input];
}
