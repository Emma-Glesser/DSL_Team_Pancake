/* Declare composants*/
const byte BUZZER = 12;

/* Declare variables */
boolean =false;

/* Declare functions/states prototype*/
void state2();
void state1();

void state2() {
    state1();
}

void state1() {
    state2();
}

void setup() {
  pinMode(BUZZER,INPUT);
}

void loop() {
  state1();
}
