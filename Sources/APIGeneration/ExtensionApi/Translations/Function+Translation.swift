import Foundation
import CodeGenerator
import CodeTranslator

// MARK: - Naming

extension Function {
    func nameCode(definedIndise type: InstanceType?) -> String {
        nameAndParameters(definedIndise: type).name
    }
    
    func parameters(definedIndise type: InstanceType?) -> [CodeGenerator.FunctionParameter] {
        nameAndParameters(definedIndise: type).parameters
    }
    
    var temporaryValueName: String { "__temporary" }
    
    private func nameAndParameters(definedIndise type: InstanceType?)
    -> (name: String, parameters: [CodeGenerator.FunctionParameter]) {
        let (translatedName, translatedParameters) = CodeLanguage.c.translateFunction(
            name: functionName.string,
            parameters: untranslatedParameters(definedIndise: type),
            to: .swift)
        
        let name = CodeLanguage.swift.protectNameIfKeyword(for: translatedName)
        var parameters = parameters(translatedParameters: translatedParameters,
                                    definedInside: type,
                                    arguments: arguments(definedInside: type))
        
        if isVararg {
            parameters.append(.named("rest", type: InstanceType.variant.code(), isVararg: true))
        }
        
        return (name, parameters)
    }
    
    private func parameters(translatedParameters: [CodeTranslator.FunctionParameter],
                            definedInside type: InstanceType?,
                            arguments: [ExtensionApi.Argument]?) -> [CodeGenerator.FunctionParameter] {
        guard let arguments else {
            return []
        }
        
        var parameters = [CodeGenerator.FunctionParameter]()
        for (index, argument) in arguments.enumerated() {
            let translatedParameter = translatedParameters[index]
            var parameter = translatedParameter.codeParameter(definedInside: type, argument: argument)
            
            if allParametersHaveHiddenLabels { parameter.label = .hidden }
            
            parameters.append(parameter)
        }
        
        return parameters
    }
    
    private func untranslatedParameters(definedIndise type: InstanceType?) -> [CodeTranslator.FunctionParameter] {
        arguments(definedInside: type).map({ .init(
            name: $0.name.replacingOccurrences(of: " ", with: ""),
            label: nil,
            isLabelHidden: false
        ) })
    }
    
    private func returnCode(definedIndise type: InstanceType?) -> String? {
        guard let returnType = self.returnType(definedInside: type) else {
            return nil
        }
        
        return returnType.functionFormatted().code(definedInside: type)
    }
}

private extension CodeTranslator.FunctionParameter {
    func codeParameter(definedInside type: InstanceType?,
                       argument: ExtensionApi.Argument) -> CodeGenerator.FunctionParameter {
        let defaultParameterValue: CodeGenerator.FunctionParameter.DefaultValue
        if let defaultValue = argument.defaultValue {
            defaultParameterValue = .codeString(argument.type.instantationCode(forValue: defaultValue))
        } else {
            defaultParameterValue = .none
        }
        
        let parameterType = argument.type.functionFormatted().code(definedInside: type)
        
        return .named(CodeLanguage.swift.protectNameIfKeyword(for: self.name),
                      type: parameterType,
                      defaultValue: defaultParameterValue,
                      label: codeLabel)
    }
    
    var codeLabel: CodeGenerator.FunctionParameter.Label {
        if isLabelHidden {
            return .hidden
        } else if let label {
            return .name(label)
        } else {
            return .none
        }
    }
}

// MARK: - Code

extension Function {
    func functionDefinitionCode(definedIndise type: InstanceType?,
                                @CodeBuilder content: @escaping ([CodeGenerator.FunctionParameter]) -> some Code)
    -> some Code {
        let name = nameCode(definedIndise: type)
        let parameters = parameters(definedIndise: type)
        let returnType = returnCode(definedIndise: type)
        
        return Func(name: name, parameters: parameters, returnType: returnType) {
            Stack {
                content(parameters)
            }
        }.static(isStatic).mutating(isMutating)
    }
    
    func defaultFunctionCode(definedIndise type: InstanceType?,
                             @CodeBuilder content: @escaping (FunctionPointerValues) -> some Code)
    -> some Code {
        functionDefinitionCode(definedIndise: type) { _ in
            temporaryInitializerCode(definedIndise: type)
            
            parametersPointersCode(definedIndise: type) { values in
                content(values)
            }
            
            temporaryReturnCode(definedIndise: type)
        }
    }
    
    func parametersPointersCode(definedIndise type: InstanceType?,
                                @CodeBuilder content: @escaping (FunctionPointerValues) -> some Code) -> some Code {
        var accessParameters = [PointersAccessParameter]()
        let arguments = arguments(definedInside: type)
        for (index, parameter) in parameters(definedIndise: type).enumerated() {
            let type: InstanceType
            if parameter.isVararg {
                type = .variantVarargs
            } else if index < arguments.count {
                type = arguments[index].type
            } else {
                fatalError("Wrong argument parsing.")
            }
            
            accessParameters.append(.named(parameter.name,
                                           type: type,
                                           mutability: .const,
                                           isVararg: parameter.isVararg))
        }
        
        var countString = String(arguments.count)
        if isVararg {
            countString += " + Int32(rest.count)"
        }
        
        return PointersAccess(parameters: accessParameters, createPointersArray: usesPointersArray) { pointerNames, arrayName in
            selfPointerCode(definedIndise: type) { selfPointerName in
                temporaryPointerCode(definedIndise: type) { temporaryPointerName in
                    let values = FunctionPointerValues(
                        pointerNames: pointerNames,
                        pointersArrayName: arrayName ?? "nil",
                        pointersCountValue: countString,
                        selfPointerName: selfPointerName ?? "nil",
                        temporaryPointerName: temporaryPointerName ?? "nil"
                    )
                    content(values)
                }
            }
        }
    }
    
    func selfPointerCode(definedIndise type: InstanceType?,
                         @CodeBuilder content: @escaping (String?) -> some Code) -> some Code {
        var parameters = [PointersAccessParameter]()
        if let type, !isStatic {
            parameters.append(.named("self", type: type, mutability: isMutating ? .mutable : .constMutablePointer))
        }
        
        return PointersAccess(parameters: parameters) { pointerNames, _ in
            content(pointerNames.first)
        }
    }
    
    func temporaryPointerCode(definedIndise type: InstanceType?,
                              @CodeBuilder _ body: @escaping (String?) -> some Code) -> some Code {
        var parameters = [PointersAccessParameter]()
        if let temporaryType = temporaryType(definedInside: type) {
            parameters.append(.named(temporaryValueName, type: temporaryType.temporaryInitializerType, mutability: .mutable))
        }
        
        return PointersAccess(parameters: parameters) { pointerNames, _ in
            body(pointerNames.first)
        }
    }
    
    @CodeBuilder
    func temporaryInitializerCode(definedIndise type: InstanceType?) -> some Code {
        if let temporaryType = temporaryType(definedInside: type) {
            temporaryType.temporaryInitializerCode(propertyName: temporaryValueName, definedInside: type)
        }
    }
    
    @CodeBuilder
    func temporaryReturnCode(definedIndise type: InstanceType?) -> some Code {
        if let temporaryType = temporaryType(definedInside: type) {
            temporaryType.temporaryReturnCode(propertyName: temporaryValueName, definedInside: type)
        }
    }
}

// MARK: - Function Pointer Values

struct FunctionPointerValues {
    let pointerNames: [String]
    let pointersArrayName: String
    let pointersCountValue: String
    let selfPointerName: String
    let temporaryPointerName: String
    
    static let empty = FunctionPointerValues(
        pointerNames: [],
        pointersArrayName: "",
        pointersCountValue: "",
        selfPointerName: "",
        temporaryPointerName: ""
    )
}

// MARK: Instance Type extension

private extension InstanceType {
    func functionFormatted() -> InstanceType {
        self.optional(isGodotClassType || isPointer)
    }
}
