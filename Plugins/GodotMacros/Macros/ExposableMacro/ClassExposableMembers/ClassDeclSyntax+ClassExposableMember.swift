import SwiftSyntax
import SwiftDiagnostics
import SwiftSyntaxMacros
import CodeTranslator

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
    func isExposable(in context: some MacroExpansionContext) -> Bool {
        context.diagnose(Diagnostic(
            node: Syntax(name),
            message: GodotDiagnostic("Classes defined inside exposable classes cannot be exposable themselves")
        ))
        return false
    }
    
    func expositionSyntax(
        classContext: TokenSyntax,
        in context: some MacroExpansionContext
    ) -> ExprSyntax {
        ""
    }
}
