import static dsl.Arduino_DSL.*

program "Scenario3" being {
    variables {
        variable "state" value 0
        variable "oldState" value 0
    }

    components {
        sensor "button" pin 10
        actuator "led" pin 11
    }

    initialState "initial"

    states {
        state "initial" being {
            actuator "led" becomes SIGNAL.LOW
            variable "oldState" becomes "state"
            variable "state" becomes "button"

            next_state_is "state1" when {
                AND {
                    EQUALS "state", 1
                    NOT_EQUALS "oldState", 1
                }
            }
        }

        state "state1" being {
            actuator "led" becomes SIGNAL.HIGH
            variable "oldState" becomes "state"
            variable "state" becomes "button"

            next_state_is "initial" when {
                AND {
                    EQUALS "state", 1
                    NOT_EQUALS "oldState", 1
                }
            }
        }
    }
}