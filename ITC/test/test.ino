// Simple angle meter using ADXL335 accelerometer
//from electronicsblog.net/

#define ADC_ref 2.56

#define zero_x 1.569

#define zero_y 1.569

#define zero_z 1.569

#define sensitivity_x 0.3

#define sensitivity_y 0.3

#define sensitivity_z 0.3

unsigned int value_x;
unsigned int value_y;
unsigned int value_z;

float xv;
float yv;
float zv;

float angle_x;
float angle_y;
float angle_z;

void setup()   {

//analogReference(INTERNAL2V56);

Serial.begin(9600);

}

void loop() {

value_x = analogRead(1);
value_y = analogRead(2);
value_z = analogRead(3);

xv=(value_x/1024.0*ADC_ref-zero_x)/sensitivity_x;

Serial.print ("x= ");
Serial.print (xv);
Serial.print(" g ");

yv=(value_y/1024.0*ADC_ref-zero_y)/sensitivity_y;

Serial.print ("y= ");
Serial.print (yv);
Serial.print(" g ");

zv=(value_z/1024.0*ADC_ref-zero_z)/sensitivity_z;

Serial.print ("z= ");
Serial.print (zv);
Serial.print(" g ");

Serial.print("\n");

Serial.print("Rotation ");

Serial.print("x= ");

angle_x =atan2(-yv,-zv)*57.2957795+180;

Serial.print(angle_x);
Serial.print(" deg");
Serial.print(" ");

Serial.print("y= ");

angle_y =atan2(-xv,-zv)*57.2957795+180;

Serial.print(angle_y);
Serial.print(" deg");
Serial.print(" ");

Serial.print("z= ");

angle_z =atan2(-yv,-xv)*57.2957795+180;

Serial.print(angle_z);
Serial.print(" deg");
Serial.print("\n");

delay(1000);
delay(1000);
}
