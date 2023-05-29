import CodeGenerator

struct PropertySetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(definition.className + "." + definition.name + " setter")
            
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(definition.translatedSetterName)\","
                "insideType: \(definition.className).self,"
                "types: setterPropertyParameters(keyPath: \\\(definition.className).\(definition.name), name: \"\(definition.translatedName)\"),"
                "isStatic: false"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                "var object = Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                
                "object[keyPath: \\\(definition.className).\(definition.name)] = args!.pointee!.functionParameter()"
            }.indent()
            
            "}"
        }
    }
}
