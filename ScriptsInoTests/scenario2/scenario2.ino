/*
Scenario 2 : Dual-check alarm
It will trigger a buzzer if and only if two buttons are pushed at the very same 
time. Releasing at least one of the button stop the sound
*/

const byte pinBuzzer = 12; 
const byte pinButton1 = 11; 
const byte pinButton2 = 10; 


void setup() {
  pinMode(pinBuzzer, OUTPUT);
  pinMode(pinButton1, INPUT);
  pinMode(pinButton2, INPUT);
}

void loop() {
  int isButton1Pressed = digitalRead(pinButton1);
  int isButton2Pressed = digitalRead(pinButton2);
  if(isButton1Pressed == 1 && isButton2Pressed == 1) {
    digitalWrite(pinBuzzer, HIGH);
  }
  else {
    digitalWrite(pinBuzzer, LOW);
  }
} 