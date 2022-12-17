package kernel.behavioral

import kernel.generator.Visitor
import kernel.structural.Actuator

import static dsl.Arduino_DSL.*

class ActionActuator extends Action {
    private SIGNAL value
    private Actuator actuator

    ActionActuator(Actuator actuator) {
        this.actuator = actuator
    }

    SIGNAL getValue() {
        return value
    }

    void becomes(SIGNAL signal) {
        this.value = signal
    }

    Actuator getActuator() {
        return actuator
    }

    void setActuator(Actuator actuator) {
        this.actuator = actuator
    }

    @Override
    void accept(Visitor<StringBuffer> visitor) {
        visitor.visit(this)
    }
}
