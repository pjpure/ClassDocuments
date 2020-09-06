
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
pinMode(13,INPUT);
pinMode(A0,INPUT);
}

void loop() {
  Serial.print(digitalRead(13));
  Serial.print(" ");
  Serial.println(analogRead(A0));
  delay(100);
}
