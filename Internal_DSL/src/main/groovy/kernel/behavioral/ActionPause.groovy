package kernel.behavioral

import kernel.generator.Visitor

class ActionPause extends Action {
    private int time
    def milliseconds

    ActionPause(int time) {
        this.time = time
    }

    int getTime() {
        return time
    }

    @Override
    void accept(Visitor<StringBuffer> visitor) {
        visitor.visit(this)
    }
}
