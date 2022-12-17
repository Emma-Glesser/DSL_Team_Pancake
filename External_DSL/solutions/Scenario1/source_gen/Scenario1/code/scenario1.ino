/* Components */
const byte button = 10;
const byte led = 11;
const byte buzzer = 12;

/* Variables */

/* States prototypes */
void initial();
void state1();

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
    if(digitalRead(button) == HIGH) {
      state1();
    }
  }
}

void state1() {
  delay(300);
  while(1) {
    digitalWrite(led,HIGH);
    digitalWrite(buzzer,HIGH);
    if(digitalRead(button) == LOW) {
      initial();
    }
  }
}

