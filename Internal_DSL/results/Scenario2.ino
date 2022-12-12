/**** Program Scenario2 ****/

/* Components */
const byte button1 = 10;
const byte button2 = 11;
const byte buzzer = 12;

/* Variables */

/* States prototypes */
void initial();
void state1();

void setup(){
	pinMode(button1, INPUT);
	pinMode(button2, INPUT);
	pinMode(buzzer, OUTPUT);
}

void loop() {
	initial();
}

void initial() {
	delay(300);
	while(1) {
		digitalWrite(buzzer, LOW);
		if ((digitalRead(button1) == HIGH && digitalRead(button2) == HIGH)) {
			state1();
		}
	}
}

void state1() {
	delay(300);
	while(1) {
		digitalWrite(buzzer, HIGH);
		if (!(digitalRead(button1) == HIGH && digitalRead(button2) == HIGH)) {
			initial();
		}
	}
}
