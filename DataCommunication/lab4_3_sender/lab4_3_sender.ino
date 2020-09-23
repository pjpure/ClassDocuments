#include<SoftwareSerial.h>
SoftwareSerial mySerial(10,11); //rx tx
String data;
String ID,Receiver;
bool canSend = false;
int ACKn = 0;
int frameNumber = 0;
int start=0,ends=8;
char esc=char(27);
String checksum;
String frame[20], f,Data[20];
int index = 0;
int prev = 0;

void setup() {
  // put your setup code here, to run once:
  int state =0;
  Serial.begin(115200);
  mySerial.begin(57600);
  Serial.write("Enter ID : ");
  while(state==0){
    if(Serial.available()){
      ID = Serial.readString();
      state = 1;
    }
  }
  ID = ID[0];
  Serial.println("\nYour ID : "+ID+"\n");
  state = 0;
  Serial.print("Receiver is : ");
  while(state==0){
    if(Serial.available()){
      Receiver = Serial.readString();
      state = 1;
    }
  }
  Receiver = Receiver[0];
  Serial.println(Receiver+'\n');
  state = 0;
  while(state==0){
    if(Serial.available()){
      data = Serial.readStringUntil('\n');
      data += esc;
      for(int i=0;i<data.length()%8;i++){
        data+=' ';
      }
      state = 1;
    }
  }
  
  for(int i=0;i<data.length()/8;i++){
    frame[i]+='~'+ID+Receiver+i%2;
    for(int j=start;j<ends;j++){
      checksum+=data[j];
    }
    frame[i]+=checksum+getcheckSum(checksum)+"~";
    Data[i] += checksum;
    checksum="";
    start +=8;
    ends +=8;
  }
  canSend = true;
}

/////////////////////////////////////////////////////////////////////////////////////////
void loop() {
  // put your main code here, to run repeatedly:
  if(canSend)
  {
    f = getFrame(frameNumber);
    sendFrame(f);
    //canSend = false;
    if(index < data.length()/8){
      Serial.println();
      Serial.print("Send frame : ");
      Serial.println(frameNumber%2);
      Serial.print("Data       : ");
      Serial.println(Data[index]);
    }
    waitForACK();
  }
  else
  {
     inputData();
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////
void inputData(){
    int state =0;
    index = 0;
    data="";
    start=0;
    ends=8;
    ACKn = 0;
    frameNumber = 0;
    prev = 0;
    Serial.println();
    Serial.print("Receiver is : ");
    while(state==0){
      if(Serial.available()){
        Receiver = Serial.readString();
        state = 1;
      }
    }
    Receiver = Receiver[0];
    Serial.println(Receiver+'\n');
    state = 0;
    while(state==0){
      if(Serial.available()){
        data = Serial.readStringUntil('\n');
        data += esc;
        for(int i=0;i<data.length()%8;i++){
          data+=' ';
        }
        state = 1;
      }
    }
    
    for(int i=0;i<data.length()/8;i++){
      frame[i]="";
      Data[i]="";
      frame[i]+='~'+ID+Receiver+i%2;
      for(int j=start;j<ends;j++){
        checksum+=data[j];
      }
      frame[i]+=checksum+getcheckSum(checksum)+"~";
      Data[i] += checksum;
      checksum="";
      start +=8;
      ends +=8;
    }
    canSend = true;
}
// Timer to check for timeout 
bool Timer(unsigned long currentTime,unsigned long interval){
  return millis() - currentTime < interval;
}
void waitForACK(){
  //wait for ACK
  unsigned long currentTime = millis();
  while(!mySerial.available()){
    //time out 
    if(Timer(currentTime,3000)==false){
      if(index < data.length()/8-1){
        Serial.println();
        Serial.println("Timeout");
        Serial.print("Retransmit frame : ");
        Serial.println(frameNumber%2);
        Serial.print("Send frame       : ");
        Serial.println(frameNumber%2);
        Serial.print("Data           : ");
        Serial.println(Data[index]);
      }
      
      
      if(index < data.length()/8){
        canSend = true;
        return ;
      }
      else{
        Serial.println("complete");
        canSend = false;
        return ;
      }
    }
  }
  //receive ACK
  //String frame = getFrame(++frameNumber%2);
  //sendFrame(frame);
  
  String receiveFrame = mySerial.readString();
  String errorD = "";
  String ack = (String)receiveFrame[3];
  errorD = (String)receiveFrame[4]+(String)receiveFrame[5]+(String)receiveFrame[6];
  Serial.println();
  Serial.println("Receive frame");
  Serial.print("Header      :");
  Serial.println((String)receiveFrame[1]+(String)receiveFrame[2]);
  Serial.print("ACK N0.     :");
  Serial.println(ack);
  Serial.print("Checking    :");
  Serial.println(errorD);
  Serial.println("Received");

  
  //check if frame is ACK
  if(receiveFrame.length() == 8 && getcheckSum(ack)==errorD && (String)frameNumber != ack){
    ++frameNumber%2;
    if(index < data.length()/8){
      canSend = true;
      return ;
    }
    else{
      Serial.println("complete");
      canSend = false;
      return ;
    }  
  }
  if(index < data.length()/8){
      canSend = true;
      return ;
    }
    else{
      Serial.println("complete");
      canSend = false;
      return ;
    }
}

String getFrame(int n){
  index+=abs(prev-n);
  prev = n;
  return frame[index];
}

void flushRx() {
  while(mySerial.available())
    uint8_t tmp = mySerial.read();
}

void sendFrame(String frame){
  for(int i=0;frame[i]!='\0';i++){
    mySerial.write(frame[i]);
    delay(10);
    flushRx();
  }
}



String getcheckSum(String strin){
  int sumv=0,h[3] = {0,0,0};
  for(int i=0;i<8;i++){
    sumv = sumv+int(strin[i]);
  }
  while(sumv!=0){
    if(sumv>=256){
      h[0] = h[0]+1;
    sumv = sumv-256;
    }else if(sumv>=16){
    h[1] = h[1]+1;
    sumv = sumv-16;
    }else{
      h[2]=sumv;
      sumv = 0;
    }
    }
  String strout;
  for(int i =0;i<3;i++){
    switch(h[i]){
      case 10 : strout += "A";break;
      case 11 : strout += "B";break;
      case 12 : strout += "C";break;
      case 13 : strout += "D";break;
      case 14 : strout += "E";break;
      case 15 : strout += "F";break;
      default : strout += String(h[i]);break;
    }
  }
    
  return strout;//use chksum.equals(getcheckSum(inputstring)); to compare -> if true : send ack ;else : do nothing ;
}
