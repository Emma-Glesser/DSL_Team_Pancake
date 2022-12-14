/**** Program Scenario3 ****/

/* Components */
const byte button = 10;
const byte led = 11;

/* Variables */
int state = 0;
int oldState = 0;

/* States prototypes */
void initial();
void state1();

void setup(){
	pinMode(button, INPUT);
	pinMode(led, OUTPUT);
}

void loop() {
	initial();
}

void initial() {
	delay(300);
	while(1) {
		digitalWrite(led, LOW);
		oldState = state;
		state = digitalRead(button);
		if ((state == 1 && oldState != 1)) {
			state1();
		}
	}
}

void state1() {
	delay(300);
	while(1) {
		digitalWrite(led, HIGH);
		oldState = state;
		state = digitalRead(button);
		if ((state == 1 && oldState != 1)) {
			initial();
		}
	}
}
