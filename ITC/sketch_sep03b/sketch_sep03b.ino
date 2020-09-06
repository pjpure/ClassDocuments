#define LED1  4
#define LED2  3
#define LED3  2
#define SW1   12
#define SW2   11
#define SW3   10
void setup(){
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(SW1,INPUT_PULLUP);
  pinMode(SW2,INPUT_PULLUP);
  pinMode(SW3,INPUT_PULLUP);
}
void loop(){
    digitalWrite( LED1,digitalRead(SW1)? HIGH : LOW); 
    digitalWrite( LED2,digitalRead(SW2)? LOW : HIGH); 
    digitalWrite( LED3,digitalRead(SW3)? LOW : HIGH);    
    delay(100); 
}
