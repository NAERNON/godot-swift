import CodeGenerator
import CodeTranslator

struct PropertyRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(className + "." + definition.name + " setter")
            
            "GodotExtension.shared.classRegister.registerWritableProperty("
            Container {
                "keyPath: \\\(className).\(definition.name),"
                "name: \"\(translatedName)\","
                "getterFunctionName: \"\(translatedGetterName)\","
                "setterFunctionName: \"\(translatedSetterName)\")"
            }.indent()
        }
    }
    
    private var className: String { definition.className }
    
    private var translatedName: String {
        NamingConvention.camel.convert(definition.name, to: .snake)
    }
    
    private var translatedGetterName: String {
        "get_" + translatedName
    }
    
    private var translatedSetterName: String {
        "set_" + translatedName
    }
}
