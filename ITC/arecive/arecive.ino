#include <SoftwareSerial.h>

SoftwareSerial chat(2, 3); // RX, TX

String a;

void setup() {

  Serial.begin(9600);

  chat.begin(9600);

 

  delay(10);

}

void loop() {

Serial.println("Please wait Serial..");

  while (a == "") {

    chat.print("Question1"); // ส่งหัวข้อคำถาม ว่า Question1 ไปยัง Arduino

    a = chat.readString();  // อ่าน Serial และนำไปเก็บในตัวแปร A

    Serial.print(a);

    delay(100);

    Serial.print(".");

 

  }

}
