package dsl;

import java.util.Map;

import groovy.lang.Binding;
import groovy.lang.Script;

public class Arduino_DSL_Binding extends Binding {
	// can be useful to return the script in case of syntax trick
	private Script script;
	
	private Arduino_DSL_Model model;

    private static final Arduino_DSL_Binding instance = new Arduino_DSL_Binding();
    public static Arduino_DSL_Binding getInstance() {
        return instance;
    }

	private Arduino_DSL_Binding() {
		super();
	}
	
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
	
	public void setArduino_DSL_Model(Arduino_DSL_Model model) {
		this.model = model;
	}
	
	public Object getVariable(String name) {
		return super.getVariable(name);
	}
	
	public void setVariable(String name, Object value) {
        try {
            this.getVariable(name);
        } catch (Exception e) {
            super.setVariable(name, value);
            return;
        }
        throw new RuntimeException("Already existing identifiers : " + name);
    }
	
	public Arduino_DSL_Model getArduinoDSLModel() {
		return this.model;
	}
}
