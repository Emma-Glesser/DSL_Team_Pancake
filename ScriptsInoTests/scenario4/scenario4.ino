/*
Scenario 4 : Multi-state alarm
Pushing the button starts the buzz noise. Pushing it again stop the buzzer and switch the LED on. Pushing it again switch the LED off, 
and makes the system ready to make noise again after one push, and so on
*/

const byte pinBuzzer = 12; 
const byte pinLed = 11; 
const byte pinButton = 10; 
bool switchLedOn;
bool switchBuzzerOn;
int buttonState;
int oldButtonState;
int systemState;


void setup() {
  pinMode(pinBuzzer, OUTPUT);
  pinMode(pinLed, OUTPUT);
  pinMode(pinButton, INPUT);
/*  digitalWrite(pinBuzzer, HIGH);
  digitalWrite(pinLed, HIGH);
  delay(500);
  digitalWrite(pinBuzzer, LOW);
  digitalWrite(pinLed, LOW);*/
  switchLedOn = false;
  switchBuzzerOn = false;
  buttonState = 0;
  oldButtonState = 0;
  systemState = 0;
}

void loop() {
  int buttonState = digitalRead(pinButton);
  if (buttonState == 1 && oldButtonState != 1) {
    systemState++;
    if(systemState == 3) {
      systemState = 0;
    }
    delay(200);
  }
  oldButtonState = buttonState;

  if (systemState == 0) {
    digitalWrite(pinLed, LOW);
  } else if (systemState == 1) {
    digitalWrite(pinBuzzer, HIGH);
  } else {
    digitalWrite(pinBuzzer, LOW);
    digitalWrite(pinLed, HIGH);
  }
}