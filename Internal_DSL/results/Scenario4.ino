/**** Program Scenario4 ****/

/* Components */
const byte button = 10;
const byte led = 11;
const byte buzzer = 12;

/* Variables */
int state = 0;
int oldState = 0;

/* States prototypes */
void initial();
void state1();
void state2();

void setup(){
	pinMode(button, INPUT);
	pinMode(led, OUTPUT);
	pinMode(buzzer, OUTPUT);
}

void loop() {
	initial();
}

void initial() {
	delay(300);
	while(1) {
		digitalWrite(led, LOW);
		digitalWrite(buzzer, LOW);
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
		digitalWrite(led, LOW);
		digitalWrite(buzzer, HIGH);
		oldState = state;
		state = digitalRead(button);
		if ((state == 1 && oldState != 1)) {
			state2();
		}
	}
}

void state2() {
	delay(300);
	while(1) {
		digitalWrite(led, HIGH);
		digitalWrite(buzzer, LOW);
		oldState = state;
		state = digitalRead(button);
		if ((state == 1 && oldState != 1)) {
			initial();
		}
	}
}
