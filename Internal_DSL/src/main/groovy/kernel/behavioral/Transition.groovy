package kernel.behavioral

import dsl.Arduino_DSL_Binding
import kernel.condition.LOGICAL_OPERATOR
import kernel.condition.LogicalCondition
import kernel.condition.Condition
import kernel.condition.RELATIONAL_OPERATOR
import kernel.condition.RelationalCondition
import kernel.condition.UnaryCondition
import kernel.generator.Visitable
import kernel.generator.Visitor
import kernel.structural.Sensor
import kernel.structural.Variable

import static dsl.Arduino_DSL.*

class Transition implements Visitable {
    private String nextStateName
    private Condition condition

    private List<Condition> conditions

    Transition(String nextStateName) {
        this.nextStateName = nextStateName
        this.conditions = new ArrayList<>()
    }

    String getNextStateName() {
        return nextStateName
    }

     Condition getCondition() {
        return condition
    }

    void EQUALS(String left, String right) {
        createRelationalCondition(left, right, RELATIONAL_OPERATOR.EQUALS)
    }
    void EQUALS(String left, Integer right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void EQUALS(Integer left, String right) {
        Variable rightVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, rightVariable, RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void EQUALS(String left, Boolean right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void EQUALS(Boolean left, String right) {
        Variable stringVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, stringVariable, RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void EQUALS(String left, SIGNAL right) {
        RelationalCondition condition = new RelationalCondition(convertToSensor(left), right, RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void EQUALS(SIGNAL left, String right) {
        RelationalCondition condition = new RelationalCondition(left, convertToSensor(right), RELATIONAL_OPERATOR.EQUALS)
        conditions.add(condition)
        this.condition = condition
    }

    void NOT_EQUALS(String left, String right) {
        createRelationalCondition(left, right, RELATIONAL_OPERATOR.NOT_EQUALS)
    }
    void NOT_EQUALS(String left, Integer right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void NOT_EQUALS(Integer left, String right) {
        Variable rightVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, rightVariable, RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void NOT_EQUALS(String left, Boolean right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void NOT_EQUALS(Boolean left, String right) {
        Variable rightVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, rightVariable, RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void NOT_EQUALS(String left, SIGNAL right) {
        RelationalCondition condition = new RelationalCondition(convertToSensor(left), right, RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }
    void NOT_EQUALS(SIGNAL left, String right) {
        RelationalCondition condition = new RelationalCondition(left, convertToSensor(right), RELATIONAL_OPERATOR.NOT_EQUALS)
        conditions.add(condition)
        this.condition = condition
    }

    static Sensor convertToSensor(String name) {
        Sensor sensor
        try {
            sensor = (Sensor) Arduino_DSL_Binding.instance.getVariable(name)
        } catch (Exception ignored) {
            throw new RuntimeException(String.format("SIGNAL must be compared to a sensor. Found %s", name.getClass().getName()))
        }
        return sensor
    }

    void GREATER(String left, String right) {
        createGreaterLessRelationalCondition(left, right, RELATIONAL_OPERATOR.GREATER)
    }
    void GREATER(String left, Integer right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.GREATER)
        conditions.add(condition)
        this.condition = condition
    }
    void GREATER(Integer left, String right) {
        Variable rightVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, rightVariable, RELATIONAL_OPERATOR.GREATER)
        conditions.add(condition)
        this.condition = condition
    }

    void LESS(String left, String right) {
        createGreaterLessRelationalCondition(left, right, RELATIONAL_OPERATOR.LESS)
    }
    void LESS(String left, Integer right) {
        Variable leftVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(left)
        RelationalCondition condition = new RelationalCondition(leftVariable, right, RELATIONAL_OPERATOR.LESS)
        conditions.add(condition)
        this.condition = condition
    }
    void LESS(Integer left, String right) {
        Variable rightVariable = (Variable) Arduino_DSL_Binding.instance.getVariable(right)
        RelationalCondition condition = new RelationalCondition(left, rightVariable, RELATIONAL_OPERATOR.LESS)
        conditions.add(condition)
        this.condition = condition
    }

    void createGreaterLessRelationalCondition(String left, String right, RELATIONAL_OPERATOR operator) {
        Object leftObject = Arduino_DSL_Binding.instance.getVariable(left)
        Object rightObject = Arduino_DSL_Binding.instance.getVariable(right)

        Variable leftVariable
        Variable rightVariable

        if (leftObject instanceof Variable) leftVariable = (Variable) leftObject
        else throw new RuntimeException(String.format("Incorrect type for left operand. Found %s", leftObject.getClass().getName()))

        if (rightObject instanceof Variable) rightVariable = (Variable) rightObject
        else throw new RuntimeException(String.format("Incorrect type for right operand. Found %s", rightObject.getClass().getName()))

        RelationalCondition condition
        if (leftVariable.getType() == "int" && rightVariable.getType() == "int" ) condition = new RelationalCondition(leftVariable, rightVariable, operator)
        else throw new RuntimeException(String.format("Incorrect type. Found `%s` and `%s`", leftVariable.getType(), rightVariable.getType()))

        conditions.add(condition)
        this.condition = condition
    }

    void createRelationalCondition(String left, String right, RELATIONAL_OPERATOR operator) {
        Object leftObject = Arduino_DSL_Binding.instance.getVariable(left)
        Object rightObject = Arduino_DSL_Binding.instance.getVariable(right)

        Variable leftVariable = null
        Sensor leftSensor = null
        SIGNAL leftSignal = null

        Variable rightVariable = null
        Sensor rightSensor = null
        SIGNAL rightSignal = null

        if (leftObject instanceof Variable) leftVariable = (Variable) leftObject
        else if (leftObject instanceof Sensor) leftSensor = (Sensor) leftObject
        else if (leftObject instanceof SIGNAL) leftSignal = (SIGNAL) leftObject
        else throw new RuntimeException(String.format("Incorrect type for left operand. Found %s", leftObject.getClass().getName()))

        if (rightObject instanceof Variable) rightVariable = (Variable) rightObject
        else if (rightObject instanceof Sensor) rightSensor = (Sensor) rightObject
        else if (rightObject instanceof SIGNAL) rightSignal = (SIGNAL) rightObject
        else throw new RuntimeException(String.format("Incorrect type for right operand. Found %s", rightObject.getClass().getName()))

        RelationalCondition condition
        if (leftVariable && rightVariable) condition = new RelationalCondition(leftVariable, rightVariable, operator)
        else if (leftSensor && rightSignal) condition = new RelationalCondition(leftSensor, rightSignal, operator)
        else if (leftSignal && rightSensor) condition = new RelationalCondition(leftSignal, rightSensor, operator)
        else throw new RuntimeException(String.format("Cannot compare 2 variables of different types : `%s` and `%s`", leftObject.getClass().getName(), rightObject.getClass().getName()))

        conditions.add(condition)
        this.condition = condition
    }

    void AND(Closure cl) {
        createLogicalCondition(cl, LOGICAL_OPERATOR.AND)
    }
    void OR(Closure cl) {
        createLogicalCondition(cl, LOGICAL_OPERATOR.OR)
    }

    void NOT(Closure cl) {
        Closure code = cl.rehydrate(this, this, this)
        code.resolveStrategy = Closure.DELEGATE_ONLY
        code()
        UnaryCondition condition = new UnaryCondition(conditions.pop())
        if (!conditions.isEmpty()) {
            throw new RuntimeException("There should exactly one operand for logical operator : `NOT`")
        }
        conditions.add(condition)
        this.condition = condition
    }
    void NOT(String variable) {
        UnaryCondition condition = new UnaryCondition((Variable)Arduino_DSL_Binding.instance.getVariable(variable))
        conditions.add(condition)
        this.condition = condition
    }

    void createLogicalCondition(Closure cl, LOGICAL_OPERATOR operator) {
        Closure code = cl.rehydrate(this, this, this)
        code.resolveStrategy = Closure.DELEGATE_ONLY
        code()
        if (conditions.size() < 2) {
            throw new RuntimeException("There should be at least 2 operands for logical operator : `OR`, `AND`")
        }
        LogicalCondition condition = new LogicalCondition(new ArrayList<>(conditions), operator)
        conditions.clear()
        conditions.add(condition)
        this.condition = condition
    }

    def when(@DelegatesTo(strategy= Closure.DELEGATE_ONLY, value= Transition) Closure cl) {
        Closure code = cl.rehydrate(this, this, this)
        code.resolveStrategy = Closure.DELEGATE_ONLY
        code()
    }

    @Override
    void accept(Visitor visitor) {
        visitor.visit(this)
    }
}
