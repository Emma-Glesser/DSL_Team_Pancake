/* Components */
const byte button = 10;
const byte led = 11;
const byte buzzer = 12;

/* Variables */
int state = 0;
int oldState = 0;

/* States prototypes */
void initial();
void state2();
void state3();

void setup() {
  pinMode(button,INPUT);
  pinMode(led,OUTPUT);
  pinMode(buzzer,OUTPUT);
}

void loop() {
  initial();
}

void initial() {
  delay(300);
  while(1) {
    digitalWrite(led,LOW);
    digitalWrite(buzzer,LOW);
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
    digitalWrite(buzzer,HIGH);
    digitalWrite(led,LOW);
    oldState = state;
    state = digitalRead(button);
    if(state == 1 && oldState != 1) {
      state3();
    }
  }
}

void state3() {
  delay(300);
  while(1) {
    digitalWrite(buzzer,LOW);
    digitalWrite(led,HIGH);
    oldState = state;
    state = digitalRead(button);
    if(state == 1 && oldState != 1) {
      initial();
    }
  }
}

