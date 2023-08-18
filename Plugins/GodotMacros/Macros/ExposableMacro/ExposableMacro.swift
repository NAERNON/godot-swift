import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftDiagnostics
import Foundation

private enum ExposableMacroDiagnostic: String, Error, DiagnosticMessage {
    case notAClass
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .notAClass:
            "Only classes can be exposed to Godot"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

public enum ExposableMacro: MemberMacro {
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
            context.diagnose(Diagnostic(
                node: Syntax(attribute),
                message: ExposableMacroDiagnostic.notAClass
            ))
            return []
        }
        
        return try classDecl.exposableMacroSyntax(in: context)
    }
}
