package dsl

import kernel.structural.Program


abstract class Arduino_DSL_Base_Script extends Script {

    Program program(String name) {
        Program program = new Program()
        program.name = name
        ((Arduino_DSL_Binding)this.getBinding()).getArduinoDSLModel().setProgram(program)
        return program
    }

	// disable run method while running
	int count = 0
	abstract void scriptBody()
	def run() {
        if(count == 0) {
			count++
			scriptBody()
            String name = ((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().getProgram().getName()
            String result = ((Arduino_DSL_Binding) this.getBinding()).getArduinoDSLModel().generateCode().toString()
            File resultFile = new File("./results/" + name + ".ino")
            resultFile.delete()
            resultFile.createNewFile()
            resultFile << result
		} else {
			println "Run method is disabled"
		}
	}
}
