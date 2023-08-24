import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

struct FunctionMember: ExposableMember {
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self),
              let tokens = functionDeclSyntax.modifiers?.map(\.name.tokenKind),
              tokens.contains(where: {
                  $0 == .keyword(.public) || $0 == .keyword(.open)
              }),
              !tokens.contains(where: { $0 == .keyword(.override) })
        else {
            return nil
        }
        
        self.functionDeclSyntax = functionDeclSyntax
    }
    
    var exposableMemberIdentifier: String {
        functionDeclSyntax.name.trimmedDescription
    }
    
    var attributes: AttributeListSyntax? {
        functionDeclSyntax.attributes
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax? {
        var isExposable = true
        
        // Check not throw or async
        if let specifiers = functionDeclSyntax.signature.effectSpecifiers {
            if let throwsSpecifier = specifiers.throwsSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(throwsSpecifier),
                    message: GodotDiagnostic("Exposable functions cannot be marked 'throws'")
                ))
                isExposable = false
            }
            
            if let asyncSpecifier = specifiers.asyncSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(asyncSpecifier),
                    message: GodotDiagnostic("Exposable functions cannot be marked 'async'")
                ))
                isExposable = false
            }
        }
        
        // Check not generic
        if let generic = functionDeclSyntax.genericParameterClause {
            context.diagnose(Diagnostic(
                node: Syntax(generic),
                message: GodotDiagnostic("Exposable functions cannot be generic")
            ))
            isExposable = false
        }
        
        // Check no parameter is some, any or variadic
        for parameter in functionDeclSyntax.signature.parameterClause.parameters {
            if let someOrAnyTypeSyntax = parameter.type.as(SomeOrAnyTypeSyntax.self) {
                context.diagnose(Diagnostic(
                    node: Syntax(someOrAnyTypeSyntax),
                    message: GodotDiagnostic("Exposable functions cannot have parameters marked 'some' or 'any'")
                ))
                isExposable = false
            }
            
            if let ellipsis = parameter.ellipsis {
                context.diagnose(Diagnostic(
                    node: Syntax(ellipsis),
                    message: GodotDiagnostic("Exposable functions cannot have variadic parameters")
                ))
                isExposable = false
            }
        }
        
        // Check return type is not some or any
        if let someOrAnyTypeSyntax = functionDeclSyntax.signature.returnClause?.type.as(SomeOrAnyTypeSyntax.self) {
            context.diagnose(Diagnostic(
                node: Syntax(someOrAnyTypeSyntax),
                message: GodotDiagnostic("Exposable functions cannot return a type marked 'some' or 'any'")
            ))
            isExposable = false
        }
        
        // Retreive the default values
        var parametersDefaultValues: [String?] = functionDeclSyntax.signature.parameterClause.parameters.map
        { parameter in
            guard let defaultValue = parameter.defaultValue else {
                return nil
            }
            
            if let literalSyntax = defaultValue.value.as(IntegerLiteralExprSyntax.self) {
                return literalSyntax.literal.trimmedDescription
            } else if let literalSyntax = defaultValue.value.as(FloatLiteralExprSyntax.self) {
                return literalSyntax.literal.trimmedDescription
            }
            
            return nil
        }
        
        // We only need the last default values for Godot
        var lastDefaultValuesCount = 0
        while lastDefaultValuesCount < parametersDefaultValues.count {
            if parametersDefaultValues[parametersDefaultValues.count - lastDefaultValuesCount - 1] != nil {
                lastDefaultValuesCount += 1
            } else {
                break
            }
        }
        
        // We clear all default values before the last default values group
        for index in 0..<(parametersDefaultValues.count - lastDefaultValuesCount) {
            parametersDefaultValues[index] = nil
        }
        
        guard isExposable else {
            return nil
        }
        
        // Syntax
        let isStatic = functionDeclSyntax.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        }) == true
        
        let parameters = functionDeclSyntax.signature.parameterClause.parameters.enumerated().map
        { (index, parameter) in
            let name = parameter.secondName?.trimmedDescription ?? parameter.firstName.trimmedDescription
            let translatedName = NamingConvention.camel.convert(name, to: .snake)
            let defaultValue = parametersDefaultValues[index]
            if let defaultValue {
                return """
                .argument(\(parameter.type.trimmedDescription).self, name: "\(translatedName)", defaultValue: \(defaultValue)),
                """
            } else {
                return """
                .argument(\(parameter.type.trimmedDescription).self, name: "\(translatedName)"),
                """
            }
        }
        
        let functionName = NamingConvention.camel.convert(functionDeclSyntax.name.trimmedDescription, to: .snake)
        let returnParameter: String
        let hasReturnType: Bool
        
        if let returnType = functionDeclSyntax.signature.returnClause?.type.trimmed {
            hasReturnType = true
            returnParameter = ".returnParameter(\(returnType).self)"
        } else {
            hasReturnType = false
            returnParameter = "nil"
        }
        
        let functionCallSyntax = ExprSyntax("""
        Godot.GodotExtension.classRegister.registerFunction(
            named: \(literal: functionName),
            insideType: self,
            argumentParameters: [
                \(raw: parameters.joined(separator: "\n"))
            ],
            returnParameter: \(raw: returnParameter),
            isStatic: \(literal: isStatic)
        )
        """).as(FunctionCallExprSyntax.self)!
        
        let functionCallClosureSyntax = try? ClosureExprSyntax {
            "_, instancePtr, args, argsCount, returnPtr, error in"
            
            let parameters = functionDeclSyntax.signature.parameterClause.parameters
            
            // For every default value, we check the argCount
            // to know if we need to call the function with less parameters
            for count in (0..<lastDefaultValuesCount+1).reversed() {
                let parameterList = parameters.dropLast(count)
                
                let call = CodeBlockItemListSyntax {
                    if hasReturnType {
                        "let returnValue ="
                    }
                    
                    if isStatic {
                        "\(classContext.trimmed)"
                    } else {
                        "Unmanaged<\(classContext.trimmed)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                    }
                    
                    ".\(functionDeclSyntax.name)("
                    
                    for (index, parameter) in parameterList.enumerated() {
                        if parameter.firstName.tokenKind != .wildcard {
                            "\(parameter.firstName.trimmed):"
                        }
                        
                        "\(parameter.type.trimmed).fromMatchingTypeVariant(Variant(godotExtensionPointer: args!.advanced(by: \(literal: index)).pointee!))"
                        
                        if index < parameterList.count - 1 {
                            ","
                        }
                    }
                    ")"
                    
                    if hasReturnType {
                        "returnValue.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)"
                    }
                }
                
                if count > 0 {
                    try IfExprSyntax("if argsCount == \(literal: parameters.count - count)") {
                        call
                        "return"
                    }
                } else {
                    call
                }
            }
        }
        
        guard let functionCallClosureSyntax else {
            return nil
        }
        
        return ExprSyntax(functionCallSyntax.with(\.trailingClosure, functionCallClosureSyntax))
    }
}
