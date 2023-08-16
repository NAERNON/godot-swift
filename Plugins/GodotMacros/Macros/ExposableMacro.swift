import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import CodeTranslator
import Foundation

public enum ExposableMacro: MemberMacro {
    // MARK: Member
    
    public static func expansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        try classExpansion(of: attribute, providingMembersOf: declaration, in: context)
    }
    
    private static func classExpansion(
        of attribute: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        // Check is class
        guard let classDecl = declaration.as(ClassDeclSyntax.self) else {
            let diagnostic = Diagnostic(
                node: Syntax(attribute),
                message: GodotExposableDiagnostic.notAClass
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // Check has inheritance
        guard let inheritedElement = classDecl.inheritanceClause?
            .inheritedTypes.first else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.noSuperclassProvided
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // Check is public
        guard classDecl.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.public) || $0 == .keyword(.open)
        }) == true else {
            let diagnostic = Diagnostic(
                node: Syntax(classDecl.classKeyword),
                message: GodotExposableDiagnostic.notPublic
            )
            context.diagnose(diagnostic)
            return []
        }
        
        // MARK: Expose functions
        
        let functionsToExpose = classDecl.memberBlock.members
            .compactMap { $0.decl.as(FunctionDeclSyntax.self) }
            .filter {
                let tokens = $0.modifiers?.map(\.name.tokenKind) ?? []
                
                guard !tokens.contains(where: { $0 == .keyword(.override) }) else {
                    return false
                }
                
                return tokens.contains(where: {
                    $0 == .keyword(.public) || $0 == .keyword(.open)
                })
            }
        
        let provider = ClassMacroDeclProvider(
            customClassDecl: classDecl,
            superclassName: inheritedElement.type.trimmedDescription,
            in: context
        ) {
            for function in functionsToExpose {
                functionExpositionSyntax(function, classDecl: classDecl)
            }
        }
        
        return try provider.decls()
    }
    
    private static func functionExpositionSyntax(
        _ functionDeclSyntax: FunctionDeclSyntax,
        classDecl: ClassDeclSyntax
    ) -> ExprSyntax {
        let isStatic = functionDeclSyntax.modifiers?.map(\.name.tokenKind).contains(where: {
            $0 == .keyword(.static)
        }) == true
        
        let parameters = functionDeclSyntax.signature.parameterClause.parameters.map {
            """
            .argument(\($0.type.trimmedDescription).self, name: "\($0.secondName ?? $0.firstName)"),
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
            classDecl.name.trimmedDescription
        } else {
            "Unmanaged<\(classDecl.name.trimmedDescription)>.fromOpaque(instancePtr!).takeUnretainedValue()"
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
        \(raw: Trivia.newline)
        // --- \(functionDeclSyntax.name.trimmed) --- //
        
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

// MARK: - Diagnostic

private enum GodotExposableDiagnostic: String, Error, DiagnosticMessage {
    case notAClass
    case noSuperclassProvided
    case notPublic
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAClass:
            "Only classes can be exposed to Godot"
        case .noSuperclassProvided:
            "Only classes that inherit the Godot 'Object' class can be exposed to Godot"
        case .notPublic:
            "Only public classes can be exposed to Godot"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}
