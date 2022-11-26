import Foundation

#warning("We are never using the isVararg and isConst argument from Method. Is this a feature or a bug ?")

extension ExtensionApi.Class.Method {
    func code(className: String, methodPointerName: String, translated: Bool) -> some SwiftCode {
        let nameAndParameters = self.nameAndParameters(translated: translated)
        let parameters = nameAndParameters.parameters
        let parametersNames = parameters.map { $0.name }
        
        let funcCode = Func(name: nameAndParameters.name,
                            parameters: codeParameters(withLanguageParameters: nameAndParameters.parameters),
                            returnType: convertedReturnType) {
            Guard(condition: "let methodPtr = \(className).\(methodPointerName)") {
                "printGodotError(\"Method bind was not found. Likely the engine method changed to an incompatible version.\")"
                if let returnValue {
                    Return(ExtensionApi.defaultValue(forType: returnValue.type))
                } else {
                    Return()
                }
            }
            
            Group {
                Spacer()
                parametersPointerAllocation(withNames: parametersNames, arguments: arguments)
                Spacer()
                methodCall()
                Spacer()
                parametersPointerDeallocation(withNames: parametersNames, arguments: arguments)
            }
            
            if returnValue != nil {
                Spacer()
                Return(returnValueName)
            }
        }.public()
        
        if isStatic {
            return funcCode.static()
        } else {
            return funcCode
        }
    }
    
    // MARK: - SwiftCode
    
    @CodeBuilder
    private func parametersPointerAllocation(withNames parametersNames: [String], arguments: [ExtensionApi.Argument]?) -> some SwiftCode {
        for (i, parameterName) in parametersNames.enumerated() {
            Property(parameterPointerName(with: parameterName))
                .letDefined()
                .assign(value: "UnsafeMutablePointer<\(ExtensionApi.convert(type: arguments![i].type))>.allocate(capacity: 1)")
            parameterPointerName(with: parameterName) + ".pointee = " + parameterName
        }
        
        Property(argumentsArrayPointerName)
            .letDefined()
            .assign(value: "UnsafeMutablePointer<GDNativeTypePtr?>.allocate(capacity: \(parametersNames.count))")
        
        for (i, parameterName) in parametersNames.enumerated() {
            argumentsArrayPointerName + "[\(i)] = " + "UnsafeMutableRawPointer(\(parameterPointerName(with: parameterName)))"
        }
    }
    
    @CodeBuilder
    private func parametersPointerDeallocation(withNames parametersNames: [String], arguments: [ExtensionApi.Argument]?) -> some SwiftCode {
        for parameterName in parametersNames {
            parameterPointerName(with: parameterName) + ".deinitialize(count: 1)"
            parameterPointerName(with: parameterName) + ".deallocate()"
        }
        
        argumentsArrayPointerName + ".deinitialize(count: \(parametersNames.count))"
        argumentsArrayPointerName + ".deallocate()"
    }
    
    @CodeBuilder
    private func methodCall() -> some SwiftCode {
        if let convertedReturnType {
            Property(returnPointerName)
                .letDefined()
                .assign(value: "UnsafeMutablePointer<\(convertedReturnType)>.allocate(capacity: 1)")
            
            "GodotLibrary.main.interface?.object_method_bind_call(methodPtr, __owner__TOREPLACE, \(argumentsArrayPointerName), \(returnPointerName))"
            Property(returnValueName).letDefined().assign(value: returnPointerName + ".pointee")
        } else {
            "GodotLibrary.main.interface?.object_method_bind_call(methodPtr, __owner__TOREPLACE, \(argumentsArrayPointerName), nil)"
        }
    }
    
    // MARK: - Naming and translation
    
    private func nameAndParameters(translated: Bool) -> (name: String, parameters: [CodeLanguage.FunctionParameter]) {
        CodeLanguage.c.translateFunction(
            name: name,
            parameters: arguments?.map({ .init(name: $0.name, label: nil, isLabelHidden: false) }) ?? [],
            to: translated ? .swift : .c)
    }
    
    private func codeParameters(withLanguageParameters languageParameters: [CodeLanguage.FunctionParameter]) -> [FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        var parameters = [FunctionParameter]()
        for (index, argument) in arguments.enumerated() {
            let languageParameter = languageParameters[index]
            parameters.append(argument.functionParameter(withLanguageParameter: languageParameter))
        }
        
        return parameters
    }
    
    private var convertedReturnType: String? {
        guard let returnValue else { return nil }
        
        return ExtensionApi.convert(type: returnValue.type)
    }
    
    private func parameterPointerName(with name: String) -> String {
        "_" + name + "Ptr"
    }
    
    private var argumentsArrayPointerName: String { "_argumentsAccessArrayPtr" }
    
    private var returnPointerName: String { "_returnAccessPtr" }
    
    private var returnValueName: String { "_returnAccessValue" }
}
