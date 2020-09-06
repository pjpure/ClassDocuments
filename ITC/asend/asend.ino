int a = 13;

int b = 25;

#include <SoftwareSerial.h>

SoftwareSerial chat(2, 3); // RX, TX

int i;

void setup()  {

  Serial.begin(9600);

  chat.begin(9600);

}

 

void loop() {

  if (chat.readString()){

     // chat.print(1);

     if(chat.readString()== "Question1"){ //มีการถามคำถาม Question1 ส่งข้อมูลตัวแปร a ออกไป

      chat.print(a);

     }

     if(chat.readString()== "Question2"){ //มีการถามคำถาม Question2 ส่งข้อมูลตัวแปร b ออกไป

      chat.print(b);

     }

      Serial.print("Send = ");

      Serial.println(i);

  }

  i++;

  delay(1000);

 

}
