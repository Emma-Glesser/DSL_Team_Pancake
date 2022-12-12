import static dsl.Arduino_DSL.*

program "Scenario1" being {
    components {
        sensor "button" pin 10
        actuator "led" pin 11
        actuator "buzzer" pin 12
    }

    initialState "initial"

    states {
        state"initial" being {

            actuator "led" becomes SIGNAL.LOW
            actuator "buzzer" becomes SIGNAL.LOW

            next_state_is "state1" when { EQUALS "button", SIGNAL.HIGH }
        }

        state "state1" being {
            actuator "led" becomes SIGNAL.HIGH
            actuator "buzzer" becomes SIGNAL.HIGH

            next_state_is "initial" when { EQUALS "button", SIGNAL.LOW }
        }
    }
}