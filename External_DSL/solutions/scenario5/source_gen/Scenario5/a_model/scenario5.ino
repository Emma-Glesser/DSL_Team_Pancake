/* Components */
const byte button = 10;
const byte led = 11;

/* Variables */
int state = 0;
int oldState = 0;
boolean returnToState1 = true;

/* States prototypes */
void initial();
void state2();

void setup() {
  pinMode(button,INPUT);
  pinMode(led,OUTPUT);
}

void loop() {
  initial();
}

void initial() {
  delay(300);
  while(1) {
    digitalWrite(led,LOW);
    oldState = state;
    state = digitalRead(button);
    if(state == 1 && oldState != 1) {
      state2();
    }
  }
}

void state2() {
  delay(300);
  while(1) {
    digitalWrite(led,HIGH);
    delay(800);
    if(returnToState1 == true) {
      initial();
    }
  }
}

