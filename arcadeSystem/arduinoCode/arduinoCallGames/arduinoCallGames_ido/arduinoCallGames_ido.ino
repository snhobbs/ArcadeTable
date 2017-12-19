//#include <Serial.h>
/*
  Serial Event example
 
 When new serial data arrives, this sketch adds it to a String.
 When a newline is received, the loop prints the string and
 clears it.
 
 A good test for this is to try it with a GPS receiver
 that sends out NMEA 0183 sentences.
 
 Created 9 May 2011
 by Tom Igoe
 
 This example code is in the public domain.
 
 http://www.arduino.cc/en/Tutorial/SerialEvent
 
 */
#define MIN_DELAY 5000
#define GAME_1 "'gbc' 'pokemonYellow.gbc'"
#define GAME_2 "'nes' 'superMarioBros.nes'"
#define PIN1  76
#define PIN2  78

String gameString;         // a string to hold incoming data

int butState1;
int butState2;

void setup() {
  // initialize serial:
  Serial.begin(19200);
  // reserve 200 bytes for the inputString:
  gameString.reserve(200);
  pinMode(PIN1, INPUT);
  pinMode(PIN2, INPUT);
  delay(2000);
  Serial.begin(19200);

}

void loop() {
  butState1 = digitalRead(PIN1);
  butState2 = digitalRead(PIN2);

  Serial.println(butState1);
  Serial.println(butState2);

  
  if (butState1 || butState2) {
    gameString = butState1 ? GAME_1 : GAME_2;
    //delay(3000);
    
    //Serial.println(gameString);
  }
}


