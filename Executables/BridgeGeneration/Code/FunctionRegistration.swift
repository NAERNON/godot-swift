import CodeGenerator

struct FunctionRegistration: Code {
    let definition: FunctionDefinition
    let className: String
    
    var body: some Code {
        Container {
            Mark(className + "." + definition.signature)
            
            let nameParameter = "\"\(definition.name)\""
            let insideTypeParameter = "\(className).self"
            let typesParameter = "functionParameters(from: \(className).\(definition.name), parameterNames: \(definition.parameters.map { $0.name }))"
            
            "GodotExtension.shared.classRegister.registerFunction(withName: \(nameParameter), insideType: \(insideTypeParameter), types: \(typesParameter)) { _, instancePtr, args, argsCount, returnPtr, error in"
            Container {
                "Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.functionCallCode(withParameters: (0..<definition.parameters.count).map {
                    "args!.advanced(by: \($0)).pointee!.functionParameter()"
                })
            }.indent()
            "}"
        }
    }
}
