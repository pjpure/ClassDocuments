#include <stdio.h>
#include <errno.h>
#include <wiringPi.h>
#define BUTTON_PIN 0
// Use GPIO Pin 17 = Pin 0 of wiringPi library
int delayT = 1000;
int count=0;
volatile int eventCount = 0;
void myInterrupt(void) { // called every time an event occurs
	// the event counter
	if(eventCount==0){
        if(count==0){
            delayT=delayT/2;
            count=1;
        }else if(count==1){
            delayT = delayT/2;
            count =2;
        }else if(count==2){
            delayT = 1000;
            count=0;
        }

	}
    eventCount++;
}
int main(void) {
    int pin1 = 23; //msb
    int pin2 = 24;
    int pin3 = 25; //lsb
	if (wiringPiSetup()<0) // check the existence of wiringPi library
	{
		printf ("Cannot setup wiringPi: %s\n", strerror (errno));
		return 1; // error code = 1
	}
	// set wiringPi Pin 0 to generate an interrupt from 1-0 transition
	// myInterrupt() = my Interrupt Service Routine
	if (wiringPiISR (BUTTON_PIN, INT_EDGE_FALLING, &myInterrupt) < 0) {
		printf ("Cannot setup ISR: %s\n", strerror (errno));
		return 2; // error code = 2
	}
	// display counter value every second
	pinMode(pin1, OUTPUT); /* set pin=7 to Output mode */
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    int i=0;
    int x=1; //pos to neg
	while(1) {
		printf("%d\n", count);
		eventCount = 0;
		digitalWrite(pin1, (i&4)>>2);
        digitalWrite(pin2, (i&2)>>1);
        digitalWrite(pin3, i&1);
        i=i+x;
        if(i==7){
            x=-1;
        }
        if(i==0){
            x=1;
        }
        delay(delayT);
	}
	return 0; // error code = 0 (No Error)
}

