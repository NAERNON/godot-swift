import CodeGenerator

struct ClassRegistration: Code {
    let definition: ClassDefinition
    
    var body: some Code {
        Container {
            Mark(definition.name)
            
            if let registrationError {
                "printGodotError(\"Cannot register class \(definition.name). \(registrationError)\")"
            } else {
                registrationCode
            }
        }
    }
    
    @CodeBuilder
    private var registrationCode: some Code {
        if let superclassName = definition.superclassName {
            "GodotExtension.shared.classRegister.registerClass(ofType: \(definition.name).self, superclassName: \"\(superclassName)\") { _, _, _ in"
            
            "} createInstanceFunction: { _ in"
            
            Return("GodotExtension.shared.classRegister.instantiateClass(ofType: \(definition.name).self)").indent()
            
            "} freeInstanceFunction: { _, instancePtr in"
            
            "Unmanaged<\(definition.name)>.fromOpaque(instancePtr!).release()".indent()
            
            "}"
        }
    }
    
    // MARK: Registration error
    
    private var registrationError: String? {
        guard let accessControl = definition.accessControl,
              accessControl >= .public else {
            return "The class must be public."
        }
        
        return nil
    }
}
