void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
float angle=0;
for(angle=0;angle<=1;angle=angle+0.1)
{
  Serial.println(angle);
  delay(100); 
}
for(angle=1;angle>=0;angle=angle-0.1){
  Serial.println(angle);
  delay(100); 
}
for(angle=0;angle>=-1;angle=angle-0.1){
  Serial.println(angle);
  delay(100); 
}
for(angle=-1;angle<=0;angle=angle+0.1)
{
  Serial.println(angle);
  delay(100); 
}

}
