import CodeGenerator

struct PropertyGetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(definition.className + "." + definition.name + " getter")
            
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(definition.translatedGetterName)\","
                "insideType: \(definition.className).self,"
                "types: getterPropertyParameters(keyPath: \\\(definition.className).\(definition.name)),"
                "isStatic: false"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                "let returnValue = Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.name
                
                "returnValue.variant.copyTo(variantPtr: returnPtr!)"
            }.indent()
            
            "}"
        }
    }
}
