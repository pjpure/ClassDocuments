void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
float x=0;
for(x=-1;x<=1;x=x+0.25)
{
  Serial.println(x);
  delay(100); 
}
}
