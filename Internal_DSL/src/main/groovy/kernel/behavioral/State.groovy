package kernel.behavioral

import dsl.Arduino_DSL_Binding
import kernel.NamedElement
import kernel.generator.Visitable
import kernel.generator.Visitor
import kernel.structural.Actuator
import kernel.structural.Variable

class State implements NamedElement, Visitable {

    private String name
    private List<Action> actions
    private List<Transition> transitions

    State(String name) {
        this.name = name
        this.actions = new ArrayList<>()
        this.transitions = new ArrayList<>()
        Arduino_DSL_Binding.instance.setVariable(name, this)
    }

    @Override
    String getName() {
        return name
    }

    @Override
    void setName(String name) {
        this.name = name
    }

    List<Action> getActions() {
        return actions
    }

    List<Transition> getTransitions() {
        return transitions
    }

    def being (@DelegatesTo(strategy=Closure.DELEGATE_ONLY, value= State) Closure cl) {
        Closure code = cl.rehydrate(this, this, this)
        code.resolveStrategy = Closure.DELEGATE_ONLY
        code()
    }

    ActionPause pause(int time) {
        ActionPause actionPause = new ActionPause(time)
        this.actions.add(actionPause)
        return actionPause
    }

    ActionActuator actuator(String name) {
        ActionActuator actionActuator = new ActionActuator((Actuator)Arduino_DSL_Binding.getInstance().getVariable(name))
        this.actions.add(actionActuator)
        return actionActuator
    }

    ActionVariable variable(String name) {
        ActionVariable actionVariable = new ActionVariable((Variable)Arduino_DSL_Binding.getInstance().getVariable(name))
        this.actions.add(actionVariable)
        return actionVariable
    }

    Transition next_state_is(String stateName) {
        Transition transition = new Transition(stateName)
        this.transitions.add(transition)
        return transition
    }

    @Override
    void accept(Visitor visitor) {
        visitor.visit(this)
    }
}
