#include  <SoftwareSerial.h>
#define X_AXIS_PIN 0
float buffeR[1][10];
int pin[] = {X_AXIS_PIN};
int buffer_pos[1] = {0};

SoftwareSerial mySerial(10, 11); // RX, TX
void setup() {
  Serial.begin(9600);
  mySerial.begin(9600);
  pinMode(X_AXIS_PIN, INPUT);

}

int Buffer(int axis)
{
  delay(10);
  buffeR[axis][buffer_pos[axis]] = analogRead(pin[axis]);
  buffer_pos[axis] = (buffer_pos[axis] + 1) % 10;
  long sum = 0;
  for (unsigned int i = 0; i < 10; i++)
  {
    sum += buffeR[axis][i];
  }
  return round(sum / 10);
}

void loop() {
  delay(100);
  int degreeX = map(Buffer(X_AXIS_PIN), 396,264 , -90, 90); 
  degreeX=abs(degreeX);
  if(degreeX>90) 
  {
    degreeX = 90;
  }
  mySerial.write('#');
  mySerial.print(degreeX);
  mySerial.write(';');
  mySerial.println(); 
  Serial.println(degreeX);
    
}
