import CodeGenerator
import CodeTranslator

struct FunctionRegistration: Code {
    let definition: FunctionDefinition
    
    var body: some Code {
        Container {
            Mark(className + "." + definition.signature)
                        
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(translatedFunctionName)\","
                "insideType: \(className).self,"
                "types: functionParameters(fromClosure: \(className).\(definition.name), parameterNames: \(translatedFunctionParameterNames())),"
                "isStatic: \(definition.isStatic)"
            }.indent()
            ") { _, instancePtr, args, argsCount, returnPtr, error in"
            
            Container {
                if definition.isStatic {
                    "let \(returnValueName) = \(className)"
                } else {
                    "let \(returnValueName) = Unmanaged<\(className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                }
                "." + definition.functionCallCode(withParameters: parameters())
                
                if definition.returnType != nil {
                    "returnValue.variant.copyTo(variantPtr: returnPtr!)"
                }
            }.indent()
            
            "}"
        }
    }
    
    private var className: String { definition.className }
    
    private var translatedFunctionName: String {
        NamingConvention.camel.convert(definition.name, to: .snake)
    }
    
    private func translatedFunctionParameterNames() -> [String] {
        definition.parameters.map {
            NamingConvention.camel.convert($0.name, to: .snake)
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
