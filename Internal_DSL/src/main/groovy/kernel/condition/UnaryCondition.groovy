package kernel.condition

import kernel.generator.Visitor
import kernel.structural.Variable

class UnaryCondition extends Condition{
    private Condition condition
    private Variable variable
    private UNARY_OPERATOR operator

    UnaryCondition(Condition condition) {
        this.condition = condition
        this.operator = UNARY_OPERATOR.NOT
    }

    UnaryCondition(Variable variable) {
        if (variable.type != "bool") {
            throw new RuntimeException("`NOT` operator can only be applied to boolean variable")
        }
        this.variable = variable
        this.operator = UNARY_OPERATOR.NOT
    }

    @Override
    void accept(Visitor visitor) {
        visitor.visit(this)
    }

    Condition getCondition() {
        return condition
    }

    Variable getVariable() {
        return variable
    }

    @Override
    String toString() {
        return "{operator : " + operator.toString() + ", condition : " + condition.toString() + "}"
    }
}
