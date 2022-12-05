package dsl;

import java.util.Map;

import groovy.lang.Binding;
import groovy.lang.Script;

public class Arduino_DSL_Binding extends Binding {
	// can be useful to return the script in case of syntax trick
	private Script script;
	
	private Arduino_DSL_Model model;
	
	public Arduino_DSL_Binding() {
		super();
	}
	
	@SuppressWarnings("rawtypes")
	public Arduino_DSL_Binding(Map variables) {
		super(variables);
	}
	
	public Arduino_DSL_Binding(Script script) {
		super();
		this.script = script;
	}
	
	public void setScript(Script script) {
		this.script = script;
	}
	
	public void setGroovuinoMLModel(Arduino_DSL_Model model) {
		this.model = model;
	}
	
	public Object getVariable(String name) {
		// Easter egg (to show you this trick: seb is now a keyword!)
		if ("seb".equals(name)) {
			// could do something else like: ((App) this.getVariable("app")).action();
			System.out.println("Seb, c'est bien");
			return script;
		}
		return super.getVariable(name);
	}
	
	public void setVariable(String name, Object value) {
		super.setVariable(name, value);
	}
	
	public Arduino_DSL_Model getArduinoDSLModel() {
		return this.model;
	}
}
