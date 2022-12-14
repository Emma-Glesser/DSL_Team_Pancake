package dsl

import groovy.transform.TypeChecked
import kernel.structural.Program
import org.codehaus.groovy.control.CompilerConfiguration
import org.codehaus.groovy.control.customizers.SecureASTCustomizer

class Arduino_DSL {
    private GroovyShell shell
    private CompilerConfiguration configuration
    private Arduino_DSL_Binding binding

    Arduino_DSL() {
        binding = Arduino_DSL_Binding.instance
        binding.setArduino_DSL_Model(new Arduino_DSL_Model())
        configuration = getDSLConfiguration()
        configuration.setScriptBaseClass("dsl.Arduino_DSL_Base_Script")
        shell = new GroovyShell(configuration)
    }

    private static CompilerConfiguration getDSLConfiguration() {
        def secure = new SecureASTCustomizer()
        secure.with {
            //disallow closure creation
            closuresAllowed = true
            //disallow method definitions
            methodDefinitionAllowed = true
            //empty white list => forbid imports
            importsWhitelist = []
            staticImportsWhitelist = ['dsl.Arduino_DSL']
            staticStarImportsWhitelist= []
            //language tokens disallowed
//			tokensBlacklist= []
            //language tokens allowed
            tokensWhitelist= []
            //types allowed to be used  (including primitive types)
            constantTypesClassesWhiteList= [
                    int, Integer, Number, String, boolean, Object, SIGNAL
            ]
            //classes who are allowed to be receivers of method calls
            receiversClassesWhiteList= [
                    int, Integer, Number, String, boolean, Object, SIGNAL
            ]
        }

        def configuration = new CompilerConfiguration()
        configuration.addCompilationCustomizers(secure)

        return configuration
    }

    static Program program(String _) {
        // Note: this is a static method to import in scripts
        return null
    }

    static enum SIGNAL { HIGH, LOW }

    @TypeChecked
    void eval(File scriptFile) {
        Script script = shell.parse(scriptFile)

        binding.setScript(script)
        script.setBinding(binding)

        script.run()
    }
}
