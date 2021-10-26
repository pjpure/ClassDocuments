#include <SoftwareSerial.h>
String inputString = ""; // a string to hold incoming data
SoftwareSerial mySerial(10,11); // SoftwareSerial(rxPin, txPin)
void setup()
{
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  Serial.println("Hello World");
  // set the data rate for the SoftwareSerialport
  mySerial.begin(9600); // recommentlow speed
  mySerial.println("Software Serial->Hello, world?");
}

void loop() // run over and over
{
    if(mySerial.available())
      {
      Serial.print((char)mySerial.read());
      }
}

void serialEvent()
{
  while(Serial.available()) // recheck serial is available
  {
    char inChar=(char)Serial.read(); // get the new byte:
    inputString+=inChar; // add it to the inputString:
    if (inChar=='\r') // check received 'enter' (0x0D)
      {
        mySerial.print("TX from Software serial -> ");
        mySerial.println(inputString);
        inputString="";
      }
  }
}
