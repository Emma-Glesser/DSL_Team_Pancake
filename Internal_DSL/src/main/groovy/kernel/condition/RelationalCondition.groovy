package kernel.condition

import kernel.generator.Visitor
import kernel.structural.Sensor
import kernel.structural.Variable

import static dsl.Arduino_DSL.*

class RelationalCondition extends Condition {
    private Integer leftInteger
    private Boolean leftBoolean
    private Variable leftVariable
    private Sensor leftSensor
    private SIGNAL leftSignal

    private Integer rightInteger
    private Boolean rightBoolean
    private Variable rightVariable
    private Sensor rightSensor
    private SIGNAL rightSignal

    private RELATIONAL_OPERATOR operator

    RelationalCondition(Variable left, Variable right, RELATIONAL_OPERATOR operator) {
        if (left.getType() != right.getType()) {
            throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `%s` and `%s`", left.getType(), right.getType()))
        }
        this.leftVariable = left
        this.rightVariable = right
        this.operator = operator
    }

    RelationalCondition(Variable left, Integer right, RELATIONAL_OPERATOR operator) {
        if (left.getType() != "int") {
            throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `%s` and `int`", left.getType()))
        }
        this.leftVariable = left
        this.rightInteger = right
        this.operator = operator
    }

    RelationalCondition(Integer left, Variable right, RELATIONAL_OPERATOR operator) {
        if (right.getType() != "int") {
            throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `int` and `%s`", right.getType()))
        }
        this.leftInteger = left
        this.rightVariable = right
        this.operator = operator
    }

    RelationalCondition(Variable left, Boolean right, RELATIONAL_OPERATOR operator) {
        if (left.getType() != "bool") {
            throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `%s` and `bool`", left.getType()))
        }
        this.leftVariable = left
        this.rightBoolean = right
        this.operator = operator
    }

    RelationalCondition(Boolean left, Variable right, RELATIONAL_OPERATOR operator) {
        if (right.getType() != "bool") {
            throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `int` and `%s`", right.getType()))
        }
        this.leftBoolean = left
        this.rightVariable = right
        this.operator = operator
    }

    RelationalCondition(SIGNAL left, Sensor right, RELATIONAL_OPERATOR operator) {
        this.leftSignal = left
        this.rightSensor = right
        this.operator = operator
    }

    RelationalCondition(Sensor left, SIGNAL right, RELATIONAL_OPERATOR operator) {
        this.leftSensor = left
        this.rightSignal = right
        this.operator = operator
    }

    @Override
    void accept(Visitor visitor) {
        visitor.visit(this)
    }

    String getLeft() {
        return get(leftInteger, leftBoolean, leftVariable, leftSensor, leftSignal)
    }

    String getRight() {
        return get(rightInteger, rightBoolean, rightVariable, rightSensor, rightSignal)
    }

    static String get(Integer integer, Boolean bool, Variable variable, Sensor sensor, SIGNAL signal) {
        if (integer) return integer.toString()
        if (bool) return bool.toString()
        if (variable) return variable.getName()
        if (sensor) return String.format("digitalRead(%s)", sensor.getName())
        if (signal) return signal
        throw new RuntimeException("This should never happen")
    }


    RELATIONAL_OPERATOR getOperator() {
        return operator
    }
}
