/*
Scenario 3 : State-based alarm
Pushing the button once switch the system in a mode where the LED is switched on. Pushing it again switches it off
*/

const byte pinLed = 12; 
const byte pinButton = 10; 
bool switchLedOn;
int buttonState;
int oldButtonState; 


void setup() {
  pinMode(pinLed, OUTPUT);
  pinMode(pinButton, INPUT);
  switchLedOn = false;
  buttonState = 0;
  oldButtonState = 0;
}

void loop() {
  int buttonState = digitalRead(pinButton);
  if(buttonState == 1 && oldButtonState !=1) {
    switchLedOn = !switchLedOn;
    delay(200);
  }
  oldButtonState = buttonState;
  if(switchLedOn) {
    digitalWrite(pinLed, HIGH);
  }
  else {
    digitalWrite(pinLed, LOW);
  }
} 