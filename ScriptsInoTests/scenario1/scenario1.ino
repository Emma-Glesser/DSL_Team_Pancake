/*
Scenario 1 : Very simple alarm
Pushing a button activates a LED and a buzzer. Releasing the button switches the actuators off
*/

const byte pinBuzzer = 12; 
const byte pinLed = 11; 
const byte pinButton = 10; 


void setup() {
  pinMode(pinBuzzer, OUTPUT);
  pinMode(pinLed, OUTPUT);
  pinMode(pinButton, INPUT);
}

void loop() {
  int isPressed =  digitalRead(pinButton);
  if(isPressed ==1) {
    digitalWrite(pinLed, HIGH);
    digitalWrite(pinBuzzer, HIGH);
  }
  else {
    digitalWrite(pinLed, LOW);
    digitalWrite(pinBuzzer, LOW);
  }
} 