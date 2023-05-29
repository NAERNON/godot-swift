import CodeGenerator

struct FunctionRegistration: Code {
    let definition: FunctionDefinition
    
    var body: some Code {
        Container {
            Mark(definition.className + "." + definition.signature)
                        
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(definition.translatedName)\","
                "insideType: \(definition.className).self,"
                "types: functionParameters(fromClosure: \(definition.className).\(definition.name), parameterNames: \(definition.translatedParameters())),"
                "isStatic: \(definition.isStatic)"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                if definition.isStatic {
                    "let \(returnValueName) = \(definition.className)"
                } else {
                    "let \(returnValueName) = Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                }
                "." + definition.functionCallCode(withParameters: parameters())
                
                if definition.returnType != nil {
                    "returnValue.variant.copyTo(variantPtr: returnPtr!)"
                }
            }.indent()
            
            "}"
        }
    }
        
    private func parameters() -> [String] {
        (0..<definition.parameters.count).map {
            "args!.advanced(by: \($0)).pointee!.functionParameter()"
        }
    }
    
    private var returnValueName: String {
        definition.returnType == nil ? "_" : "returnValue"
    }
}
