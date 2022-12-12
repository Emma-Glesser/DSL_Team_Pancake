package kernel.behavioral

import dsl.Arduino_DSL_Binding
import kernel.generator.Visitor
import kernel.structural.Sensor
import kernel.structural.Variable

class ActionVariable extends Action {
    private Variable variable

    private Variable newVariable
    private Sensor newSensor
    private Integer newInt
    private Boolean newBool

    ActionVariable(Variable variable) {
        this.variable = variable
        newVariable = newInt = newBool = null
    }

    Variable getVariable() {
        return variable
    }

    String getNewVariable() {
        if (newVariable != null) return newVariable.getName()
        if (newInt != null) return newInt.toString()
        if (newBool != null) return newBool.toString()
        if (newSensor != null) return String.format("digitalRead(%s)", newSensor.getName())
        throw new RuntimeException("This should never happen")
    }

    void becomes(String name) {
        if (newVariable || newInt || newBool) {
            throw new RuntimeException("Can't call `becomes` twice in a same action")
        }
        Object newVariableTemp = Arduino_DSL_Binding.instance.getVariable(name)
        if (newVariableTemp instanceof Variable) {
            if (variable.getType() != null && variable.getType() != newVariableTemp.getType()) {
                throw new RuntimeException("Incompatible types between variables")
            }
            this.newVariable = newVariableTemp
        } else if (newVariableTemp instanceof Sensor) {
            this.newSensor = newVariableTemp
        } else {
            throw new RuntimeException("Should only assign a sensor or a variable")
        }
    }

    void becomes(int value) {
        if (newVariable || newInt || newBool) {
            throw new RuntimeException("Can't call becomes twice in a same action")
        }
        if (variable.getType() != "int") {
            throw new RuntimeException("Incompatible types. Should assign an int")
        }
        this.newInt = value
    }

    void becomes(boolean value) {
        if (newVariable || newInt || newBool) {
            throw new RuntimeException("Can't call becomes twice in a same action")
        }
        if (variable.getType() != "bool") {
            throw new RuntimeException("Incompatible types. Should assign an bool")
        }
        this.newBool = value
    }

    @Override
    void accept(Visitor<StringBuffer> visitor) {
        visitor.visit(this)
    }
}
