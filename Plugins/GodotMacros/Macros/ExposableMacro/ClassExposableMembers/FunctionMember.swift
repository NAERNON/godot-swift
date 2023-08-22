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
        
        // Syntax
        let isStatic = functionDeclSyntax.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        }) == true
        
        let parameters = functionDeclSyntax.signature.parameterClause.parameters.map {
            let name = $0.secondName?.trimmedDescription ?? $0.firstName.trimmedDescription
            let translatedName = NamingConvention.camel.convert(name, to: .snake)
            return """
            .argument(\($0.type.trimmedDescription).self, name: "\(translatedName)"),
            """
        }
        
        let returnParameter: String
        let returnValueName: String
        let returnDecl: ExprSyntax
        
        if let returnType = functionDeclSyntax.signature.returnClause?.type.trimmed {
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
            "\(classContext.trimmedDescription)"
        } else {
            "Unmanaged<\(classContext.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue()"
        }
        
        var functionCall = functionDeclSyntax.name.trimmedDescription + "("
        let parameterList = functionDeclSyntax.signature.parameterClause.parameters
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
        
        let functionName = NamingConvention.camel.convert(functionDeclSyntax.name.trimmedDescription, to: .snake)
        
        return """
        Godot.GodotExtension.classRegister.registerFunction(
            named: \(literal: functionName),
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
