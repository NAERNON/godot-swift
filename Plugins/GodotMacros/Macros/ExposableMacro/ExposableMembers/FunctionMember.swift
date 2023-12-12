import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import SwiftSyntaxBuilder
import Utils

struct FunctionMember: ExposableMember {
    let functionDeclSyntax: FunctionDeclSyntax
    
    init?(declSyntax: some DeclSyntaxProtocol) {
        guard let functionDeclSyntax = declSyntax.as(FunctionDeclSyntax.self) else {
            return nil
        }
        
        let tokens = functionDeclSyntax.modifiers.map(\.name.tokenKind)
        guard functionDeclSyntax.isPublic() && !tokens.contains(where: { $0 == .keyword(.override) })
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
        
        guard isExposable else {
            return nil
        }
        
        let consecutiveLastDefaultValues = consecutiveLastDefaultValues(in: context)
        
        // Syntax
        let isStatic = functionDeclSyntax.modifiers.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        })
        
        let parametersCount = functionDeclSyntax.signature.parameterClause.parameters.count
        let parameters = functionDeclSyntax.signature.parameterClause.parameters.enumerated().map
        { (index, parameter) in
            let name = parameter.secondName?.trimmedDescription ?? parameter.firstName.trimmedDescription
            let translatedName = name.translated(from: .camel, to: .snake)
            if index >= parametersCount - consecutiveLastDefaultValues.count {
                let defaultValueIndex = index - parametersCount + consecutiveLastDefaultValues.count
                return """
                .argument(\(parameter.type.trimmedDescription).self, name: "\(translatedName)", defaultValue: \(consecutiveLastDefaultValues[defaultValueIndex])),
                """
            } else {
                return """
                .argument(\(parameter.type.trimmedDescription).self, name: "\(translatedName)"),
                """
            }
        }
        
        let functionName = ReceiverMacro.translatedFunctionName(functionDeclSyntax)
        let returnParameter: String
        let hasReturnType: Bool
        
        if let returnType = functionDeclSyntax.signature.returnClause?.type.trimmed {
            hasReturnType = true
            returnParameter = ".returnParameter(\(returnType).self)"
        } else {
            hasReturnType = false
            returnParameter = "nil"
        }
        
        do {
            let exprSyntax: ExprSyntax = try """
            Godot.GodotExtension.classRegistrar.registerFunction(
                named: \(literal: functionName),
                insideType: self,
                argumentParameters: [
                    \(raw: parameters.joined(separator: "\n"))
                ],
                returnParameter: \(raw: returnParameter),
                isStatic: \(literal: isStatic)
            ) { _, instancePtr, args, argsCount, returnPtr, error in
                \(functionCallSyntax(classContext: classContext, hasReturnType: hasReturnType, isStatic: isStatic, consecutiveLastDefaultValues: consecutiveLastDefaultValues))
            } pointerCall: { _, instancePtr, args, returnPtr in
                \(functionPointerCallSyntax(classContext: classContext, hasReturnType: hasReturnType, isStatic: isStatic))
            }
            """
            return exprSyntax
        } catch {
            return nil
        }
    }
    
    @CodeBlockItemListBuilder
    private func functionCallSyntax(
        classContext: TokenSyntax,
        hasReturnType: Bool,
        isStatic: Bool,
        consecutiveLastDefaultValues: [TokenSyntax]
    ) throws -> CodeBlockItemListSyntax {
        let parameters = functionDeclSyntax.signature.parameterClause.parameters
        "gdPrint(\"normal call\")"
        
        // For every default value, we check the argCount
        // to know if we need to call the function with less parameters
        for count in (0..<consecutiveLastDefaultValues.count+1).reversed() {
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
                    
                    "\(parameter.type.trimmed).convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: \(literal: index)).pointee!))"
                    
                    if index < parameterList.count - 1 {
                        ","
                    }
                }
                ")"
                
                if hasReturnType {
                    """
                    Godot.Variant.withStorage(of: returnValue) { storage in
                        storage.copyToGodot(unsafePointer: returnPtr!)
                    }
                    """
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
    
    @CodeBlockItemListBuilder
    private func functionPointerCallSyntax(
        classContext: TokenSyntax,
        hasReturnType: Bool,
        isStatic: Bool
    ) throws -> CodeBlockItemListSyntax {
        let parameters = functionDeclSyntax.signature.parameterClause.parameters
        "gdPrint(\"pointer call\")"
        
        if isStatic {
            "\(classContext.trimmed)"
        } else {
            "Unmanaged<\(classContext.trimmed)>.fromOpaque(instancePtr!).takeUnretainedValue()"
        }
        
        ".\(functionDeclSyntax.name)("
        
        for (index, parameter) in parameters.enumerated() {
            if parameter.firstName.tokenKind != .wildcard {
                "\(parameter.firstName.trimmed):"
            }
            
            "\(parameter.type.trimmed).fromGodotUnsafePointer(args!.advanced(by: \(literal: index)).pointee!)"
            
            if index < parameters.count - 1 {
                ","
            }
        }
        ")"
        
        if hasReturnType {
            """
            .copyToGodot(unsafePointer: returnPtr!)
            """
        }
    }
    
    private func consecutiveLastDefaultValues(
        in context: some MacroExpansionContext
    ) -> [TokenSyntax] {
        // Retrieve all default values
        let parametersDefaultValues = functionDeclSyntax.signature.parameterClause.parameters.map {
            $0.defaultValue
        }
        
        // Retrieve all value literals
        let valueLiterals = parametersDefaultValues.map { defaultValue -> TokenSyntax? in
            guard let defaultValue else {
                return nil
            }
            
            if let literalSyntax = defaultValue.value.as(IntegerLiteralExprSyntax.self) {
                return literalSyntax.literal
            } else if let literalSyntax = defaultValue.value.as(FloatLiteralExprSyntax.self) {
                return literalSyntax.literal
            }
            
            return nil
        }
        
        // Add the warnings and fill the consecutive array
        var lastConsecutiveLiterals = [TokenSyntax]()
        var index = parametersDefaultValues.count - 1
        var isConsecutive = true
        while index >= 0 {
            if let defaultValue = parametersDefaultValues[index] {
                if let literal = valueLiterals[index] {
                    if isConsecutive {
                        lastConsecutiveLiterals.insert(literal, at: 0)
                    } else {
                        context.diagnose(Diagnostic(
                            node: Syntax(defaultValue),
                            message: GodotDiagnostic("Only last consecutive default values are exposed to Godot",
                                                     severity: .warning)
                        ))
                    }
                } else if isConsecutive {
                    context.diagnose(Diagnostic(
                        node: Syntax(defaultValue),
                        message: GodotDiagnostic("Godot cannot expose default value '\(defaultValue.value.trimmedDescription)'",
                                                 severity: .warning)
                    ))
                    isConsecutive = false
                }
            } else {
                isConsecutive = false
            }
            
            index -= 1
        }
        
        return lastConsecutiveLiterals
    }
}
