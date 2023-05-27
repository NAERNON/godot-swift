import CodeGenerator
import CodeTranslator

struct PropertySetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(className + "." + definition.name + " setter")
            
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(translatedSetterName)\","
                "insideType: \(className).self,"
                "types: setterPropertyParameters(keyPath: \\\(className).\(definition.name), name: \"\(translatedName)\"),"
                "isStatic: false"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                "var object = Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                
                "object[keyPath: \\\(className).\(definition.name)] = args!.pointee!.functionParameter()"
            }.indent()
            
            "}"
        }
    }
    
    private var className: String { definition.className }
    
    private var translatedName: String {
        NamingConvention.camel.convert(definition.name, to: .snake)
    }
    
    private var translatedSetterName: String {
        "set_" + translatedName
    }
}
