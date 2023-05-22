import CodeGenerator

struct ClassRegistration: Code {
    let definition: ClassDefinition
    
    var body: some Code {
        if let superclassName = definition.superclassName {
            Container {
                Mark(definition.name)
                
                "GodotExtension.shared.classRegister.registerClass(ofType: \(definition.name).self, superclassName: \"\(superclassName)\") { _, _, _ in"
                
                "} createInstanceFunction: { _ in"
                
                Return("GodotExtension.shared.classRegister.instantiateClass(ofType: \(definition.name).self)").indent()
                
                "} freeInstanceFunction: { _, instancePtr in"
                
                "Unmanaged<\(definition.name)>.fromOpaque(instancePtr!).release()".indent()
                
                "}"
            }
        }
    }
}
