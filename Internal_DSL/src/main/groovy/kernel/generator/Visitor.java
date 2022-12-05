package kernel.generator;

import java.util.HashMap;
import java.util.Map;

import kernel.App;
import kernel.behavioral.Action;
import kernel.behavioral.State;
import kernel.behavioral.Transition;
import kernel.structural.Actuator;
import kernel.structural.Sensor;

public abstract class Visitor<T> {

	public abstract void visit(App app);

	public abstract void visit(State state);
	public abstract void visit(Transition transition);
	public abstract void visit(Action action);

	public abstract void visit(Actuator actuator);
	public abstract void visit(Sensor sensor);


	/***********************
	 ** Helper mechanisms **
	 ***********************/

	protected Map<String,Object> context = new HashMap<>();

	protected T result;

	public T getResult() {
		return result;
	}

}
