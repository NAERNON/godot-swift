import Foundation

#warning("We are never using the isVararg argument from UtilityFunction. Is this a feature or a bug ?")

extension ExtensionApi.UtilityFunction {
    func code(functionPointerName: String, translated: Bool) -> some SwiftCode {
        let nameAndParameters = self.nameAndParameters(translated: translated)
        let parameters = nameAndParameters.parameters
        let parametersNames = parameters.map { $0.name }
        
        return Func(name: nameAndParameters.name,
                    parameters: codeParameters(withLanguageParameters: nameAndParameters.parameters),
                    returnType: convertedReturnType) {
            If(functionPointerName + " == nil") {
                "\"\(name)\".withCString { cName in"
                Property(functionPointerName).assign(value: functionPointerAssignedValue).indentation()
                "}"
            }
            
            Guard(condition: "let function = \(functionPointerName)") {
                "printGodotError(\"Method bind was not found. Likely the engine method changed to an incompatible version.\")"
                if let returnType {
                    Return(ExtensionApi.defaultValue(forType: returnType))
                } else {
                    Return()
                }
            }
            
            Group {
                Spacer()
                parametersPointerAllocation(withNames: parametersNames, arguments: arguments)
                Spacer()
                functionCall(withParametersCount: parameters.count)
                Spacer()
                parametersPointerDeallocation(withNames: parametersNames, arguments: arguments)
            }
            
            if returnType != nil {
                Spacer()
                Return(returnValueName)
            }
        }.public()
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
    private func functionCall(withParametersCount parametersCount: Int) -> some SwiftCode {
        if let convertedReturnType {
            Property(returnPointerName)
                .letDefined()
                .assign(value: "UnsafeMutablePointer<\(convertedReturnType)>.allocate(capacity: 1)")
            
            "function(\(returnPointerName), \(argumentsArrayPointerName), \(parametersCount))"
            Property(returnValueName).letDefined().assign(value: returnPointerName + ".pointee")
        } else {
            "function(nil, \(argumentsArrayPointerName), \(parametersCount))"
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
            parameters.append(.named(languageParameter.name,
                                     type: ExtensionApi.convert(type: argument.type),
                                     label: languageParameter.functionParameterLabel))
        }
        
        return parameters
    }
    
    private var convertedReturnType: String? {
        guard let returnType else { return nil }
        
        return ExtensionApi.convert(type: returnType)
    }
    
    private var functionPointerAssignedValue: String {
        "GodotLibrary.main.interface?.variant_get_ptr_utility_function(cName, \(hash))"
    }
    
    private func parameterPointerName(with name: String) -> String {
        "_" + name + "Ptr"
    }
    
    private var argumentsArrayPointerName: String { "_argumentsAccessArrayPtr" }
    
    private var returnPointerName: String { "_returnAccessPtr" }
    
    private var returnValueName: String { "_returnAccessValue" }
}
