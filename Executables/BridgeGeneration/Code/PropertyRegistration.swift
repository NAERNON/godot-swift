import CodeGenerator

struct PropertyRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(definition.className + "." + definition.name)
            
            "GodotExtension.shared.classRegister.registerWritableProperty("
            Container {
                "keyPath: \\\(definition.className).\(definition.name),"
                "name: \"\(definition.translatedName)\","
                "getterFunctionName: \"\(definition.translatedGetterName)\","
                "setterFunctionName: \"\(definition.translatedSetterName)\")"
            }.indent()
        }
    }
}
