import CodeGenerator

struct FunctionRegistration: Code {
    let definition: FunctionDefinition
    
    var body: some Code {
        Group {
            Mark(definition.className + "." + definition.nameSignature)
            
            let nameParameter = "\"\(definition.name)\""
            let insideTypeParameter = "\(definition.className).self"
            let typesParameter = "GodotExtension.shared.classRegister.functionParameters(from: \(definition.className).\(definition.name), parameterNames: \(definition.parameters.map { $0.name }))"
            
            "GodotExtension.shared.classRegister.registerFunction(withName: \(nameParameter), insideType: \(insideTypeParameter), types: \(typesParameter)) { _, instancePtr, args, argsCount, returnPtr, error in"
            Group {
                "Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.functionCallCode(withParameters: (0..<definition.parameters.count).map {
                    "args!.advanced(by: \($0)).pointee!.functionParameter()"
                })
            }.indent()
            "}"
        }
    }
}
