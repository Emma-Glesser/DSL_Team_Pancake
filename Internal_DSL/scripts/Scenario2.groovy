import static dsl.Arduino_DSL.*

program "Scenario2" being {

    components {
        sensor "button1" pin 10
        sensor "button2" pin 11
        actuator "buzzer" pin 12
    }

    initialState "initial"

    states {
        state "initial" being {
            actuator "buzzer" becomes SIGNAL.LOW

            next_state_is "state1" when {
                AND {
                    EQUALS "button1", SIGNAL.HIGH
                    EQUALS "button2", SIGNAL.HIGH
                }
            }
        }

        state "state1" being {
            actuator "buzzer" becomes SIGNAL.HIGH

            next_state_is "initial" when {
                NOT {
                    AND {
                        EQUALS "button1", SIGNAL.HIGH
                        EQUALS "button2", SIGNAL.HIGH
                    }
                }
            }
        }
    }

}