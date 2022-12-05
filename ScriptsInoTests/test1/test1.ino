/*
ex0010_blink_pin12
Fait clignoter la LED de la PIN 13 régulièrement
*/

const byte ledPin = 12; 

void setup() {
  //============
  // Initialise la PIN digital 13 comme OUTPUT
  // La PIN 13 a une LED connectée sur la plupart des cartes Arduino
  pinMode(ledPin, OUTPUT);
}

void loop() {
  //===========
  digitalWrite(ledPin, HIGH);  // set LED on
  delay(500);              // wait for some milliseconds
  digitalWrite(ledPin, LOW);    // set the LED off
  delay(500);              // wait for some milliseconds  
} 