#include <SoftwareSerial.h>
SoftwareSerial mySerial(10, 11);
String R = "0";
String ID;
String receiveData = "";
String data = "";
short state = 0;
void setup() {
  mySerial.begin(57600);
  Serial.begin(115200);
  Serial.println("Enter ID :");
  while (state == 0 ) {
    if (Serial.available()) {
      ID = Serial.readStringUntil('\n');
      state = 1;
      ID = ID[0];
    }
  }
  Serial.println("My ID is : " + ID);
  Serial.println();
  flushSerial();
}
void loop() {
  if (mySerial.available()) {
    readFrame();
    //    Serial.print("\ndata size:");
    //    Serial.println(receiveData.length());
    //    Serial.println("data: " + receiveData);
    if (notCorrupted()) {
      //Serial.println("notCurrupted true" + receiveData);
      if (isReceiver()) {
        //Serial.println("isReceiver true" + receiveData);
        displayFrameAndCollectDataAndSendSendACK();
      } else {
        Serial.println(receiveData);
      }
    }
  }
  flushRx();
  //flushSerial();

}
void displayFrameAndCollectDataAndSendSendACK() {
  String errorDetection = "";
  errorDetection += receiveData[12];
  errorDetection += receiveData[13];
  errorDetection += receiveData[14];
  if (frameNoIsAckNo()) {
    if (getcheckSum(receiveTempData()) == errorDetection) {
      //Serial.println("getcheckSum true" + receiveData+'\n');
      receiveDataWhenDataTranferSucceed();
    } else {
      sendAckWhenDataTranferFailed();
    }
  }
  else {
    sendAckWhenDataTranferFailed();
  }
}
String receiveTempData() {
  String temp = "";
  for (int i = 4; i < 12; i++) {
    temp += receiveData[i];
  }
  return temp;
}
void receiveRealData() {
  String temp = "";
  for (int i = 4; i < 12; i++) {
    if (receiveData[i] != char(27)) {
      data += receiveData[i];
    }
  }
}
String removeEsc(String temp) {
  String removedESC;
  for (int i = 0; i <= 8; i++) {
    if (temp[i] != char(27)) {
      removedESC += temp[i];
    }
  }
  return removedESC;
}
void receiveDataWhenDataTranferSucceed() {
  String tempData;
  tempData = receiveTempData();
  if (tempData[0] != char(27)) {
    Serial.println("Receiver frame");
    String header = "";
    header += receiveData[1];
    header += receiveData[2];
    Serial.println("Header   : " + header );
    String frameNumber = "";
    frameNumber = receiveData[3];
    Serial.println("Frame No. : " + frameNumber);
    Serial.println("Data: " + removeEsc(tempData));
    Serial.println("Checking : " + getcheckSum(tempData));
    Serial.println("Received");
  }
  receiveRealData();
  updateACK();
  sendACK();
  if (isEnd(receiveTempData())) {
    Serial.println("Data received is : " + data);
    data = "";
    R = "0";
    receiveData="";
    Serial.println();
  }
}
void sendAckWhenDataTranferFailed() {
  String tempData;
  tempData = receiveTempData();
  if (tempData[0] != char(27)) {
    Serial.println("Receiver frame");
    String header = "";
    header += receiveData[1];
    header += receiveData[2];
    Serial.println("Header   : " + header );
    String frameNumber = "";
    frameNumber = receiveData[3];
    Serial.println("Frame No. : " + frameNumber);

    Serial.println("Data: " + removeEsc(receiveTempData()));
    Serial.println("Checking : " + getcheckSum(receiveTempData()));
    Serial.println("Reject");

  }

  sendACK();
}
char ESC = char(27);
bool isEnd(String tmp) {
  for (int i = 0; tmp[i] != '\0'; i++) {
    if (tmp[i] == ESC)
      return true;
  }
  return false;
}
void updateACK() {
  if (receiveData[3] == '0') {
    R[0] = '1';
  } else {
    R[0] = '0';
  }
}
bool notCorrupted() {

  if (receiveData.length() == 16) {
    return true;
  }

  return false;

}
void sendACK() {
  String ACK = "";
  ACK += '~';
  ACK += ID[0];
  ACK += receiveData[1];
  ACK += R[0];
  String errorDetection = getcheckSum(R);
  ACK += errorDetection[0];
  ACK += errorDetection[1];
  ACK += errorDetection[2];
  ACK += '~';
  String AckNumber = "";
  AckNumber = R[0];
  String tempData;
  tempData = receiveTempData();
  if (tempData[0] != char(27)) {
    Serial.println("Send ACK" + AckNumber);
    Serial.println();
  }
  for (int i = 0; ACK[i] != '\0'; i++) {
    mySerial.write(ACK[i]);
    delay(10);
    flushRx();
  }
}
void readFrame() {
  receiveData = mySerial.readStringUntil('\n');
  //  while(mySerial.available()){
  //  char inChar=(char)Serial.read();
  //
  //  if(inChar=='\n'){
  //    break;
  //  }else{
  //    receiveData+=inChar;
  //  }
  //
  //  }
}
bool isReceiver() {
  if (receiveData[2] == ID[0]) {
    return true;
  } else {
    return false;
  }
}
bool frameNoIsAckNo() {
  if (receiveData[3] == R[0]) {
    return true;
  }
  else {
    return false;
  }

}
void flushRx() {
  while (mySerial.available()) {
    uint8_t tmp = mySerial.read();
  }
}
void flushSerial() {
  while (Serial.available()) {
    uint8_t tmp = Serial.read();
  }
}

String getcheckSum(String strin) {
  int sumv = 0, h[3] = {0, 0, 0};
  for (int i = 0; i < 8; i++) {
    sumv = sumv + int(strin[i]);
  }
  while (sumv != 0) {
    if (sumv >= 256) {
      h[0] = h[0] + 1;
      sumv = sumv - 256;
    } else if (sumv >= 16) {
      h[1] = h[1] + 1;
      sumv = sumv - 16;
    } else {
      h[2] = sumv;
      sumv = 0;
    }
  }
  String strout;
  for (int i = 0; i < 3; i++) {
    switch (h[i]) {
      case 10 : strout += "A"; break;
      case 11 : strout += "B"; break;
      case 12 : strout += "C"; break;
      case 13 : strout += "D"; break;
      case 14 : strout += "E"; break;
      case 15 : strout += "F"; break;
      default : strout += String(h[i]); break;
    }
  }
  return strout;//use chksum.equals(getcheckSum(inputstring)); to compare -> if true : send ack ;else : do nothing ;
}
