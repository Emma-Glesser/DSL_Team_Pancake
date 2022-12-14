package kernel.condition

import kernel.generator.Visitor

class LogicalCondition extends Condition {
    private List<Condition> conditions
    private LOGICAL_OPERATOR operator

    LogicalCondition(List<Condition> conditions, LOGICAL_OPERATOR operator) {
        this.conditions = conditions
        this.operator = operator
    }

    @Override
    void accept(Visitor visitor) {
        visitor.visit(this)
    }

    List<Condition> getConditions() {
        return conditions
    }

    LOGICAL_OPERATOR getOperator() {
        return operator
    }
}
