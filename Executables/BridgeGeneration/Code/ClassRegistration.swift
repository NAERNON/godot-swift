import CodeGenerator

struct ClassRegistration: Code {
    let definition: ClassDefinition
    
    var body: some Code {
        Group {
            Mark(definition.name)
            
            if let filePath = definition.filePath {
                Comment {
                    "Defined inside file: " + filePath
                }
            }
            
            "GodotExtension.shared.classRegister.registerClass(ofType: \(definition.name).self, superclassName: \"\(definition.superclassName)\") { _, _, _ in"
            
            "} createInstanceFunction: { _ in"
            
            Return("GodotExtension.shared.classRegister.instantiateClass(ofType: \(definition.name).self)").indent()
            
            "} freeInstanceFunction: { _, instancePtr in"
            
            "Unmanaged<\(definition.name)>.fromOpaque(instancePtr!).release()".indent()
            
            "}"
        }
    }
}
