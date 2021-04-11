#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
int main ( void ) {
int pin1 = 0; //msb
int pin2 = 2;
int pin3 = 3; //lsb
    if (wiringPiSetup() == -1) {
        printf( "Setting up problem ... Abort!" );
        exit (1);
    }
    pinMode(pin1, OUTPUT); /* set pin=7 to Output mode */
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    int i=0;
    while(1){
        digitalWrite(pin1, (i&4)>>2);
        digitalWrite(pin2, (i&2)>>1);
        digitalWrite(pin3, i&1);
        i++;
        if(i==8){
            i=0;
        }
        delay(1000);
    }
    return 0;
}
