void setup() {
  // put your setup code here, to run once:
    
}

void loop() {
  // put your main code here, to run repeatedly:
    int dl=200;
    int R1=11;
    int R2=12;
    int R3=13;
 //L1 ON   
  pinMode(R1, OUTPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, INPUT);

  digitalWrite(R1, LOW); 
  digitalWrite(R2, HIGH); 
  delay(dl);
  
 //L2 ON
  pinMode(R1, OUTPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, INPUT);

  digitalWrite(R1, HIGH); 
  digitalWrite(R2, LOW); 
  delay(dl);
  
  //L3 ON
  pinMode(R1, INPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R2, LOW); 
  digitalWrite(R3, HIGH); 
  delay(dl);

  //L4 ON
  pinMode(R1, INPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R2, HIGH); 
  digitalWrite(R3, LOW); 
  delay(dl);
  
  //L5 ON
  pinMode(R1, OUTPUT);
  pinMode(R2, INPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R1, LOW); 
  digitalWrite(R3, HIGH); 
  delay(dl);
  
  //L6 ON
  pinMode(R1, OUTPUT);
  pinMode(R2, INPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R1, HIGH); 
  digitalWrite(R3, LOW); 
  delay(dl);

  //L5 ON
  pinMode(R1, OUTPUT);
  pinMode(R2, INPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R1, LOW); 
  digitalWrite(R3, HIGH); 
  delay(dl);

  //L4 ON
  pinMode(R1, INPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R2, HIGH); 
  digitalWrite(R3, LOW); 
  delay(dl);

   //L3 ON
  pinMode(R1, INPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, OUTPUT);

  digitalWrite(R2, LOW); 
  digitalWrite(R3, HIGH); 
  delay(dl);

  //L2 ON
  pinMode(R1, OUTPUT);
  pinMode(R2, OUTPUT);
  pinMode(R3, INPUT);

  digitalWrite(R1, HIGH); 
  digitalWrite(R2, LOW); 
  delay(dl);
}
