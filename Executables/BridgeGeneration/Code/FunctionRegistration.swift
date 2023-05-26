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
                let parameters = (0..<definition.parameters.count).map {
                    "args!.advanced(by: \($0)).pointee!.functionParameter()"
                }
                
                "let \(returnValueName) = Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.functionCallCode(withParameters: parameters)
                
                if definition.returnType != nil {
                    "returnValue.variant.copyTo(variantPtr: returnPtr!)"
                }
            }.indent()
            "}"
        }
    }
    
    private var returnValueName: String {
        definition.returnType == nil ? "_" : "returnValue"
    }
}
