unsigned int X_AXIS_PIN = 1;
const unsigned int Y_AXIS_PIN = 2;
const unsigned int Z_AXIS_PIN = 3;
const unsigned int NUM_AXES = 3;
const unsigned int PINS[NUM_AXES] = {
X_AXIS_PIN, Y_AXIS_PIN, Z_AXIS_PIN
};
const unsigned int BUFFER_SIZE = 16;
const unsigned int BAUD_RATE = 9600;
int buffera[NUM_AXES][BUFFER_SIZE];
int buffer_pos[NUM_AXES] = { 0 }; 

void setup() {
Serial.begin(BAUD_RATE); 
analogWrite(A4,0);
analogWrite(A0,1024);
}

int get_axis(const int axis) {
delay(1);
buffera[axis][buffer_pos[axis]] = analogRead(PINS[axis]);
buffer_pos[axis] = (buffer_pos[axis] + 1) % BUFFER_SIZE;
long sum = 0;
for (unsigned int i = 0; i < BUFFER_SIZE; i++)
sum += buffera[axis][i];
return round(sum / BUFFER_SIZE);
}

int get_x() { return get_axis(1); }
int get_y() { return get_axis(2); }
int get_z() { return get_axis(3); }
void loop() {
Serial.print(get_x());
Serial.print(" ");
Serial.print(get_y());
Serial.print(" ");
Serial.println(get_z());
delay(100);
}
