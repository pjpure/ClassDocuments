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
#define waitW 1
#define goS 2
#define waitS 3
#define walk 4
#define waitWalk1 5
#define waitWalk2 6
#define waitWalk3 7

struct State {
unsigned long ST_Out; // 6-bit pattern to street output
unsigned long Time; // delay in ms units
unsigned long Next[8];}; // next state for inputs 0,1,2,3
typedef const struct State SType;

SType FSM[8]={
    {B00110001,5000,{goW,goW,waitW,goW,waitW,goW,waitW,waitW}},
    {B01010001,1000,{goS,goS,goS,goS,walk,walk,goS,goS}},
    {B10000101,5000,{goS,waitS,goS,goS,waitS,waitS,goS,waitS}},
    {B10001001,1000,{walk,goW,walk,goW,walk,walk,walk,walk}},
    {B10010010,5000,{walk,waitWalk1,waitWalk1,waitWalk1,walk,walk,walk,waitWalk1}},
    {B10010000,500,{waitWalk2,waitWalk2,waitWalk2,waitWalk2,waitWalk2,waitWalk2,waitWalk2,waitWalk2}},
    {B10010010,500,{waitWalk3,waitWalk3,waitWalk3,waitWalk3,waitWalk3,waitWalk3,waitWalk3,waitWalk3}},
    {B10010000,500,{goW,goW,goS,goW,goW,goW,goS,goW}}
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
    Serial.print(input3);
    Serial.print(input2);
    Serial.print(input1);
    Serial.print("   ");
    Serial.print(S);
    Serial.print(" ");
    Serial.println(input);
}
