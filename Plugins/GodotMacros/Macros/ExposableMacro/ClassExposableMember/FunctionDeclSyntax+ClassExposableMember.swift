import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case `throws`
    case isAsync
    case isGeneric
    case someOrAnyParameter
    case variadicParameter
    case someOrAnyReturnType
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .throws:
            "Godot exposed functions cannot be marked 'throws'"
        case .isAsync:
            "Godot exposed functions cannot be marked 'async'"
        case .isGeneric:
            "Godot exposed functions cannot be generic"
        case .someOrAnyParameter:
            "Godot exposed functions cannot have parameters marked 'some' or 'any'"
        case .variadicParameter:
            "Godot exposed functions cannot have variadic parameters"
        case .someOrAnyReturnType:
            "Godot exposed functions cannot return a type marked 'some' or 'any'"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension FunctionDeclSyntax: ClassExposableMember {
    var isExcludedFromClassExposition: Bool {
        guard let tokens = modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        // Check override
        if tokens.contains(where: { $0 == .keyword(.override) }) {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public) ||
            $0 == .keyword(.open)
        })
    }
    
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        var isExposable = true
        
        // Check not throw or async
        if let specifiers = signature.effectSpecifiers {
            if let throwsSpecifier = specifiers.throwsSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(throwsSpecifier),
                    message: ExpositionDiagnostic.throws
                ))
                isExposable = false
            }
            
            if let asyncSpecifier = specifiers.asyncSpecifier {
                context.diagnose(Diagnostic(
                    node: Syntax(asyncSpecifier),
                    message: ExpositionDiagnostic.isAsync
                ))
                isExposable = false
            }
        }
        
        // Check not generic
        if let generic = genericParameterClause {
            context.diagnose(Diagnostic(
                node: Syntax(generic),
                message: ExpositionDiagnostic.isGeneric
            ))
            isExposable = false
        }
        
        // Check no parameter is some, any or variadic
        for parameter in signature.parameterClause.parameters {
            if let someOrAnyTypeSyntax = parameter.type.as(SomeOrAnyTypeSyntax.self) {
                context.diagnose(Diagnostic(
                    node: Syntax(someOrAnyTypeSyntax),
                    message: ExpositionDiagnostic.someOrAnyParameter
                ))
                isExposable = false
            }
            
            if let ellipsis = parameter.ellipsis {
                context.diagnose(Diagnostic(
                    node: Syntax(ellipsis),
                    message: ExpositionDiagnostic.variadicParameter
                ))
                isExposable = false
            }
        }
        
        // Check return type is not some or any
        if let someOrAnyTypeSyntax = signature.returnClause?.type.as(SomeOrAnyTypeSyntax.self) {
            context.diagnose(Diagnostic(
                node: Syntax(someOrAnyTypeSyntax),
                message: ExpositionDiagnostic.someOrAnyReturnType
            ))
            isExposable = false
        }
        
        return isExposable
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        // Syntax
        let isStatic = modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        }) == true
        
        let parameters = signature.parameterClause.parameters.map {
            """
            .argument(\($0.type.trimmedDescription).self, name: "\($0.secondName ?? $0.firstName)"),
            """
        }
        
        let returnParameter: String
        let returnValueName: String
        let returnDecl: ExprSyntax
        
        if let returnType = signature.returnClause?.type.trimmed {
            returnParameter =
            """
            .returnParameter(\(returnType).self)
            """
            
            returnValueName = "returnValue"
            returnDecl =
            """
            returnValue.makeVariant().consumeByGodot(ontoUnsafePointer: returnPtr!)
            """
        } else {
            returnParameter = "nil"
            returnValueName = "_"
            returnDecl = ""
        }
        
        let preFunctionCall = if isStatic {
            classDecl.name.trimmedDescription
        } else {
            "Unmanaged<\(classDecl.name.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue()"
        }
        
        var functionCall = name.trimmedDescription + "("
        let parameterList = signature.parameterClause.parameters
        for (index, parameter) in parameterList.enumerated() {
            functionCall += "\n    "
            if parameter.firstName.tokenKind != .wildcard {
                functionCall += parameter.firstName.trimmedDescription + ": "
            }
            functionCall += "\(parameter.type.trimmedDescription).fromMatchingTypeVariant(Variant(godotExtensionPointer: args!.advanced(by: \(index)).pointee!))"
            
            if index < parameterList.count - 1 {
                functionCall += ","
            }
        }
        functionCall += "\n)"
        
        let functionCallAssignment: ExprSyntax =
        """
        let \(raw: returnValueName) = \(raw: preFunctionCall).\(raw: functionCall)
        """
        
        let functionName = NamingConvention.camel.convert(name.trimmedDescription, to: .snake)
        
        return """
        \(raw: Trivia.newline)
        // --- \(name.trimmed) --- //
        
        GodotExtension.classRegister.registerFunction(
            withName: \(literal: functionName),
            insideType: self,
            argumentParameters: [
                \(raw: parameters.joined(separator: "\n"))
            ],
            returnParameter: \(raw: returnParameter),
            isStatic: \(literal: isStatic)
        ) { _, instancePtr, args, argsCount, returnPtr, error in
            \(functionCallAssignment)
            \(returnDecl)
        }
        """
    }
}
