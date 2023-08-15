import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
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
            .inheritedTypeCollection.first else {
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
        
        // MARK: Provide decls
        
        let provider = ClassMacroDeclProvider(
            customClassDecl: classDecl,
            superclassName: inheritedElement.typeName.description,
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
        
        let parameters = functionDeclSyntax.signature.input.parameterList.map {
            """
            .argument(\($0.type.description).self, name: "\($0.secondName ?? $0.firstName)"),
            """
        }
        
        let returnParameter: String
        let returnValueName: String
        let returnDecl: ExprSyntax
        
        if let returnType = functionDeclSyntax.signature.output?.returnType.description {
            returnParameter =
            """
            .returnParameter(\(returnType.description).self)
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
            classDecl.identifier.description
        } else {
            "Unmanaged<\(classDecl.identifier.description)>.fromOpaque(instancePtr!).takeUnretainedValue()"
        }
        
        var functionCall = functionDeclSyntax.identifier.text + "("
        let parameterList = functionDeclSyntax.signature.input.parameterList
        for (index, parameter) in parameterList.enumerated() {
            functionCall += "\n    "
            if parameter.firstName.tokenKind != .wildcard {
                functionCall += parameter.firstName.description + ": "
            }
            functionCall += "\(parameter.type.description).fromMatchingTypeVariant(Variant(godotExtensionPointer: args!.advanced(by: \(index)).pointee!))"
            
            if index < parameterList.count - 1 {
                functionCall += ","
            }
        }
        functionCall += "\n)"
        
        let functionCallAssignment: ExprSyntax =
        """
        let \(raw: returnValueName) = \(raw: preFunctionCall).\(raw: functionCall)
        """
        
        return """
        \(raw: Trivia.newline)
        // --- \(raw: functionDeclSyntax.identifier.description) --- //
        
        GodotExtension.classRegister.registerFunction(
            withName: \(literal: functionDeclSyntax.identifier.description),
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
