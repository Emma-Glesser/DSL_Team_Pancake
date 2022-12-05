/* Declare composants*/
const byte LED = 2;
const byte BUZZER = 2;

/* Declare variables */
boolean x=false;

/* Declare functions/states prototype*/
void initial();
void state1();

void initial() {
  digitalWrite(LED,LOW);
  state1();
}

void state1() {
  digitalWrite(LED,HIGH);
  initial();
}

void setup() {
  pinMode(LED,OUTPUT);
  pinMode(BUZZER,OUTPUT);
}

void loop() {
  initial();
}
