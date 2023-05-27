import CodeGenerator
import CodeTranslator

struct PropertyGetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(className + "." + definition.name + " getter")
            
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(translatedGetterName)\","
                "insideType: \(className).self,"
                "types: getterPropertyParameters(keyPath: \\\(className).\(definition.name)),"
                "isStatic: false"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                "let returnValue = Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.name
                
                "returnValue.variant.copyTo(variantPtr: returnPtr!)"
            }.indent()
            
            "}"
        }
    }
    
    private var className: String { definition.className }
    
    private var translatedName: String {
        NamingConvention.camel.convert(definition.name, to: .snake)
    }
    
    private var translatedGetterName: String {
        "get_" + translatedName
    }
}
