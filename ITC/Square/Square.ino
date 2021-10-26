int x=1;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
float t=0;
for(t=1;t>=0;t=t-0.1)
{
  Serial.println(x);
  delay(10); 
}
x=!x;
}
