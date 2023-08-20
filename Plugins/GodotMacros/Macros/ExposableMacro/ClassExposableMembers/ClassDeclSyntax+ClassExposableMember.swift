import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

private enum ExpositionDiagnostic: String, Error, DiagnosticMessage {
    case cannotExposeClass
    
    var severity: DiagnosticSeverity { .error }
    
    var message: String {
        switch self {
        case .cannotExposeClass:
            "Classes defined inside exposable classes cannot be exposable themselves"
        }
    }
    
    var diagnosticID: MessageID {
        MessageID(domain: "GodotMacros", id: rawValue)
    }
}

extension ClassDeclSyntax: ClassExposableMember {
    var classExpositionIdentifier: String {
        name.trimmedDescription
    }
    
    /// A class is excluded from exposition if it:
    /// - is not public
    var isExcludedFromClassExposition: Bool {
        guard let tokens = modifiers?.map(\.name.tokenKind) else {
            return true
        }
        
        return !tokens.contains(where: {
            $0 == .keyword(.public)
        })
    }
    
    /// A class is *never* exposable.
    func isExposable(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> Bool {
        context.diagnose(Diagnostic(
            node: Syntax(name),
            message: ExpositionDiagnostic.cannotExposeClass
        ))
        return false
    }
    
    func expositionSyntax(
        fromClass classDecl: ClassDeclSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        ""
    }
}
