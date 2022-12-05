package dsl

import kernel.behavioral.Action
import kernel.behavioral.State
import kernel.structural.Actuator
import kernel.structural.SIGNAL
import kernel.structural.Sensor

abstract class Arduino_DSL_Base_Script extends Script {
	// sensor "name" pin n
	def sensor(String name) {
		[pin: { n -> ((Arduino_DSL_Binding)this.getBinding()).getArduinoDSLModel().createSensor(name, n) },
		onPin: { n -> ((Arduino_DSL_Binding)this.getBinding()).getArduinoDSLModel().createSensor(name, n)}]
	}
	
	// actuator "name" pin n
	def actuator(String name) {
		[pin: { n -> ((Arduino_DSL_Binding)this.getBinding()).getArduinoDSLModel().createActuator(name, n) }]
	}
	
	// state "name" means actuator becomes signal [and actuator becomes signal]*n
	def state(String name) {
		List<Action> actions = new ArrayList<Action>()
		((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().createState(name, actions)
		// recursive closure to allow multiple and statements
		def closure
		closure = { actuator -> 
			[becomes: { signal ->
				Action action = new Action()
				action.setActuator(actuator instanceof String ? (Actuator)((Arduino_DSL_Binding)this.getBinding()).getVariable(actuator) : (Actuator)actuator)
				action.setValue(signal instanceof String ? (SIGNAL)((Arduino_DSL_Binding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
				actions.add(action)
				[and: closure]
			}]
		}
		[means: closure]
	}
	
	// initial state
	def initial(state) {
		((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().setInitialState(state instanceof String ? (State)((Arduino_DSL_Binding)this.getBinding()).getVariable(state) : (State)state)
	}
	
	// from state1 to state2 when sensor becomes signal
	def from(state1) {
		[to: { state2 -> 
			[when: { sensor ->
				[becomes: { signal -> 
					((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().createTransition(
						state1 instanceof String ? (State)((Arduino_DSL_Binding)this.getBinding()).getVariable(state1) : (State)state1,
						state2 instanceof String ? (State)((Arduino_DSL_Binding)this.getBinding()).getVariable(state2) : (State)state2,
						sensor instanceof String ? (Sensor)((Arduino_DSL_Binding)this.getBinding()).getVariable(sensor) : (Sensor)sensor,
						signal instanceof String ? (SIGNAL)((Arduino_DSL_Binding)this.getBinding()).getVariable(signal) : (SIGNAL)signal)
				}]
			}]
		}]
	}
	
	// export name
	def export(String name) {
		println(((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().generateCode(name).toString())
	}
	
	// disable run method while running
	int count = 0
	abstract void scriptBody()
	def run() {
		if(count == 0) {
			count++
			scriptBody()
		} else {
			println "Run method is disabled"
		}
	}
}
